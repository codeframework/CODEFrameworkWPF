using System.Collections.ObjectModel;

namespace CODE.Framework.Wpf.TestBench
{
    /// <summary>
    /// Interaction logic for ButtonMenuTest.xaml
    /// </summary>
    public partial class ButtonMenuTest : Window
    {
        public ButtonMenuTest()
        {
            InitializeComponent();
            DataContext = new ButtonMenuTestViewModel();
        }
    }

    public class ButtonMenuTestViewModel : ViewModel
    {
        public ButtonMenuTestViewModel()
        {
            MyActions = new ObservableCollection<ViewAction> { new ViewAction("First Action"), new ViewAction("Second Action"), new ViewAction("Third Action"), new ViewAction("Fourth Action", true), new ViewAction("Fifth Action") };
        }

        public ObservableCollection<ViewAction> MyActions { get; set; }
    }
}
