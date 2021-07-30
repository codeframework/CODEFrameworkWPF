using System.ComponentModel;
using System.Linq;

namespace CODE.Framework.Wpf.TestBench
{

    public partial class TextBlockExText : Window, INotifyPropertyChanged
    {
        public TextBlockExText()
        {
            Text = "This is a test of the way textblocks can highlight whatever words you type into the textbox above. It should be case InSenSitve";
            InitializeComponent();
            DataContext = this;
        }

        private string _searchText = string.Empty;
        public string SearchText
        {
            get => _searchText;
            set
            {
                _searchText = value;
                var words = _searchText.Split().ToList();
                words.RemoveAll(w => string.IsNullOrWhiteSpace(w));
                SearchWords = words;
                OnPropertyChanged("SearchWords");
            }
        }
        public List<string> SearchWords { get; private set; }
        public string Text { get; set; }


        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged(string name) => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
    }
}
