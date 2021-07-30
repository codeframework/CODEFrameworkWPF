using System.ComponentModel;

namespace CODE.Framework.Wpf.TestBench
{
    /// <summary>
    /// Interaction logic for TextBoxTest.xaml
    /// </summary>
    public partial class TextBoxTest : Window
    {
        public TextBoxTest()
        {
            InitializeComponent();

            DataContext = new TextBoxTestModel();
        }
    }

    public class TextBoxTestModel : INotifyPropertyChanged
    {
        private decimal _testValue;
        private decimal _testPercentage;
        private int _testNumeric;
        private decimal _testDecimal;

        public TextBoxTestModel()
        {
            TestValue = 19.95m;
            TestDecimal = -49.95m;
            TestPercentage = 25.97m;
            TestNumeric = 25;
        }

        public string TestPhone { get; set; }

        public decimal TestValue
        {
            get => _testValue;
            set
            {
                _testValue = value;
                OnPropertyChanged("TestValue");
            }
        }

        public int TestNumeric
        {
            get => _testNumeric;
            set
            {
                _testNumeric = value;
                OnPropertyChanged("TestNumeric");
            }
        }

        public decimal TestPercentage
        {
            get => _testPercentage;
            set
            {
                _testPercentage = value;
                OnPropertyChanged("TestPercentage");
            }
        }

        public decimal TestDecimal
        {
            get => _testDecimal;
            set
            {
                _testDecimal = value;
                OnPropertyChanged("TestDecimal");
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged(string propertyName) => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }
}
