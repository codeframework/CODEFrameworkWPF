using System.Collections.ObjectModel;
using System.IO;
using System.Threading;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace CODE.Framework.Wpf.TestBench
{
    /// <summary>
    /// Interaction logic for AutoCompleteTest.xaml
    /// </summary>
    public partial class AutoCompleteTest : Window
    {
        public AutoCompleteTest()
        {
            InitializeComponent();
            DataContext = new AutoCompleteViewModel();
        }
    }

    public class AutoCompleteViewModel : ViewModel
    {
        public AutoCompleteViewModel()
        {
            CustomersAutoComplete = new ObservableCollection<CustomerQuickInformation>();
            CustomerName = string.Empty;
            FilesAutoComplete = new ObservableCollection<FileQuickInformation>();
        }

        private string _customerName;
        public string CustomerName
        {
            get => _customerName;
            set
            {
                _customerName = value;
                NotifyChanged("CustomerName");
                CustomersAutoComplete.Clear();
                AsyncWorker.Execute(() =>
                {
                    Thread.Sleep(2500);
                    var list = new List<CustomerQuickInformation>();
                    if (!string.IsNullOrEmpty(value))
                        for (var i = 0; i < 10; i++)
                            list.Add(new CustomerQuickInformation { FirstName = "Thom", LastName = value + " #" + i });
                    return list;
                }, l =>
                {
                    CustomersAutoComplete.Clear();
                    foreach (var cust in l)
                        CustomersAutoComplete.Add(cust);
                });
            }
        }

        private CustomerQuickInformation _selectedAutoCompleteCustomer;
        public CustomerQuickInformation SelectedAutoCompleteCustomer
        {
            get => _selectedAutoCompleteCustomer;
            set
            {
                _selectedAutoCompleteCustomer = value;
                CustomerName = value.FullName;
                NotifyChanged();
            }
        }

        public ObservableCollection<CustomerQuickInformation> CustomersAutoComplete { get; set; }


        private string _file;
        public string File
        {
            get => _file;
            set
            {
                _file = value;
                NotifyChanged("File");
                FilesAutoComplete.Clear();

                if (value.IndexOf(@"\") > -1)
                {
                    string path = value;
                    string pattern = "*.*";
                    if (!value.EndsWith(@"\"))
                    {
                        var parts = value.Split('\\');
                        path = string.Empty;
                        for (int i = 0; i < parts.Length - 1; i++) path += parts[i] + "\\";
                        pattern = parts[parts.Length - 1] + "*.*";
                    }
                    var folder = new DirectoryInfo(path);
                    var folders = folder.GetDirectories(pattern);
                    foreach (var folder2 in folders) FilesAutoComplete.Add(new FileQuickInformation { FileName = folder2.Name, FullPath = folder2.FullName, IsFolder = true, Date = folder2.LastWriteTime });
                    var files = folder.GetFiles(pattern);
                    foreach (var file in files) FilesAutoComplete.Add(new FileQuickInformation { FileName = file.Name, FullPath = file.FullName, IsFolder = false, Date = file.LastWriteTime });
                }
            }
        }

        private FileQuickInformation _selectedAutoCompleteFile;
        public FileQuickInformation SelectedAutoCompleteFile
        {
            get => _selectedAutoCompleteFile;
            set
            {
                _selectedAutoCompleteFile = value;
                File = value.IsFolder ? value.FullPath + "\\" : value.FullPath;
                NotifyChanged();
            }
        }

        public ObservableCollection<FileQuickInformation> FilesAutoComplete { get; set; }
    }

    public class FileQuickInformation : ViewModel
    {
        public string FileName { get; set; }
        private string _fullPath;
        public string FullPath
        {
            get => _fullPath;
            set
            {
                _fullPath = value;
                if (value.ToLower().EndsWith(".jpg") || value.ToLower().EndsWith(".bmp") || value.ToLower().EndsWith(".png") || value.ToLower().EndsWith(".gif") || value.ToLower().EndsWith(".tiff"))
                {
                    PreviewImage = new ImageBrush { Stretch = Stretch.Uniform, ImageSource = new BitmapImage(new Uri(value)) };
                    NotifyChanged();
                }
            }
        }

        public ImageBrush PreviewImage { get; set; }

        public DateTime Date { get; set; }
        public bool IsFolder { get; set; }

        public Visibility FolderVisible => PreviewImage == null && IsFolder ? Visibility.Visible : Visibility.Collapsed;
        public Visibility FileVisible => PreviewImage == null && !IsFolder ? Visibility.Visible : Visibility.Collapsed;
        public Visibility PreviewVisible => PreviewImage != null ? Visibility.Visible : Visibility.Collapsed;
    }

    public class CustomerQuickInformation
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string FullName => FirstName + " " + LastName;
    }
}