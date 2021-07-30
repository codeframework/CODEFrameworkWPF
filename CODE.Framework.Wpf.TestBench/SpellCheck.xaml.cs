namespace CODE.Framework.Wpf.TestBench
{
    // TODO: This does not appear to be working. If a breakpoint is put into ExceptionHelper, one can see that this sparks an error

    /// <summary>
    /// Interaction logic for SpellCheck.xaml
    /// </summary>
    public partial class SpellCheck : Window
    {
        public SpellCheck()
        {
            InitializeComponent();

            MouseDoubleClick += (s, e) => new SpellCheck().Show();
        }
    }
}
