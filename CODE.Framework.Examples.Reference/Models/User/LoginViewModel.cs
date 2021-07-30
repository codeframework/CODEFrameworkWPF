using CODE.Framework.Example.Reference.Models.Home;

namespace CODE.Framework.Example.Reference.Models.User
{
    public class LoginViewModel : ViewModel
    {
        public LoginViewModel()
        {
            Actions.Add(new ViewAction("Login", execute: Login));
            Actions.Add(new ApplicationShutdownViewAction("Cancel"));

            BeforeClosing += (s, e) =>
            {
                if (!_loginTriggered)
                    Application.Current.Shutdown();
            };
        }

        public string UserName { get; set; }
        public string Password { get; set; }

        private bool _loginTriggered;

        private void Login(IViewAction action, object parameter)
        {
            // TODO: Perform actual user login here
            _loginTriggered = true;
            AppDomain.CurrentDomain.SetThreadPrincipal(new CODEFrameworkPrincipal(new CODEFrameworkUser(UserName)));

            Controller.CloseViewForModel(this);

            StartViewModel.Current.LoadActions();

            //Controller.Action("Home", "Dashboard", new {user = UserName});
        }
    }
}
