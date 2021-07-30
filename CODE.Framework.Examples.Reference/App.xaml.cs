namespace CODE.Framework.Examples.Reference
{
    public partial class App
    {
        public App()
        {
            Startup += ApplicationStartup;
        }

        private void ApplicationStartup(object sender, StartupEventArgs e)
        {
            Controller.Action(nameof(HomeController), nameof(HomeController.Start));
            Controller.Action(nameof(UserController), nameof(UserController.Login));
        }
    }
}
