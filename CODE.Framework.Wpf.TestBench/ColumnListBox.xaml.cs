using System.Collections.ObjectModel;
using CODE.Framework.Wpf.Controls;

namespace CODE.Framework.Wpf.TestBench
{
    /// <summary>
    /// Interaction logic for ColumnListBox.xaml
    /// </summary>
    public partial class ColumnListBox : Window
    {
        public ColumnListBox()
        {
            InitializeComponent();

            var model = new MyModel();
            DataContext = model;
            list.ItemsSource = model.OtherModels;
            model.SelectedModel = model.OtherModels[2];

            // TODO: Closing += (s, e) => { SettingsManager.SaveSettings(ListEx.GetColumns(list)); };
        }

        private void ToggleColumnC2(object sender, RoutedEventArgs e) => c2.Visibility = c2.Visibility != Visibility.Visible ? Visibility.Visible : Visibility.Collapsed;
        private void ToggleHeaders(object sender, RoutedEventArgs e) => columns.ShowHeaders = !columns.ShowHeaders;
        private void ToggleFooters(object sender, RoutedEventArgs e) => columns.ShowFooters = !columns.ShowFooters;
        private void MoveFocusToColumn4(object sender, RoutedEventArgs e) => ListBoxEx.SetMoveFocusToColumnIndex(list, 3);
        private void MoveFocusToColumn7(object sender, RoutedEventArgs e) => ListBoxEx.SetMoveFocusToColumnIndex(list, 6);
    }

    public class MyModel : ViewModel
    {
        public MyModel(int count = 5)
        {
            HeaderClick = new ViewAction("Test", execute: (a, o) =>
            {
                if (o is not HeaderClickCommandParameters paras) return;
                MessageBox.Show(paras.Column.Header.ToString());
            });

            RowDoubleClick = new ViewAction("Double Click",
                execute: (a, o) => { MessageBox.Show($"Selected: {SelectedModel.Text1}"); },
                canExecute: (a, o) => SelectedModel != null);

            OtherModels = new ObservableCollection<ExtendedStandardViewModel>();
            for (var x = 0; x < count; x++)
                OtherModels.Add(new ExtendedStandardViewModel
                {
                    Text1 = "Item #" + (x + 1) + " a - wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
                    Text2 = "Item #" + (x + 1) + " b",
                    Text3 = "Item #" + (x + 1) + " c",
                    Text4 = "Item #" + (x + 1) + " d",
                    Text5 = "Item #" + (x + 1) + " e",
                    Text6 = "List Item #" + (x + 1),
                    IsChecked = x % 2 == 0,
                    IsExpanded = x % 2 == 1
                });
        }

        public ObservableCollection<ExtendedStandardViewModel> OtherModels { get; set; }

        public ExtendedStandardViewModel SelectedModel
        {
            get => selectedModel;
            set
            {
                selectedModel = value;
                NotifyChanged("SelectedModel");
            }
        }

        private ViewAction _headerClick;
        public ViewAction HeaderClick
        {
            get => _headerClick;
            set
            {
                _headerClick = value;
                NotifyChanged("HeaderClick");
            }
        }

        private ViewAction _rowDoubleClick;
        private ExtendedStandardViewModel selectedModel;

        public ViewAction RowDoubleClick
        {
            get => _rowDoubleClick;
            set
            {
                _rowDoubleClick = value;
                NotifyChanged("RowDoubleClick");
            }
        }
    }

    public class ExtendedStandardViewModel : StandardViewModel
    {
        private bool _isExpanded;

        public ExtendedStandardViewModel()
        {
            TextList = new ObservableCollection<string>();
            for (var counter = 0; counter < 10; counter++)
                TextList.Add("List Item #" + (counter + 1));
        }

        public ObservableCollection<string> TextList { get; set; }

        public bool IsExpanded
        {
            get => _isExpanded;
            set
            {
                _isExpanded = value;
                NotifyChanged("IsExpanded");
            }
        }
    }
}