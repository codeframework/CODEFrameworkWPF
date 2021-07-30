namespace CODE.Framework.Wpf.TestBench
{
    /// <summary>
    /// Interaction logic for ColumnComboBox.xaml
    /// </summary>
    public partial class ColumnComboBox : Window
    {
        public ColumnComboBox()
        {
            InitializeComponent();

            // TODO: This testbench does not seem to work at all. Let's figure out why!

            var model = new MyModel(25);
            DataContext = model;
            combo.ItemsSource = model.OtherModels;
        }
    }
}
