namespace CODE.Framework.Wpf.TestBench
{
    /// <summary>
    /// Interaction logic for BiStackTest2.xaml
    /// </summary>
    public partial class BiStackTest2 : Window
    {
        public BiStackTest2() => InitializeComponent();

        private void ButtonBase_OnClick(object sender, RoutedEventArgs e) => list.Items.Add(new Button { Content = "Another Button" });
    }
}
