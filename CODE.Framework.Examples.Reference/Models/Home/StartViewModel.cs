namespace CODE.Framework.Example.Reference.Models.Home
{
    public class StartViewModel : ViewModel
    {
        public static StartViewModel Current { get; set; }

        public StartViewModel() => Current = this;

        public void LoadActions()
        {
            Actions.Clear();

            Actions.Add(new ViewAction("Customers", 
                execute: (a, o) => Controller.Action(nameof(CustomerController), nameof(CustomerController.List)), 
                significance: ViewActionSignificance.Highest, 
                category: "File", 
                categoryAccessKey: 'F', 
                accessKey: 'C', 
                brushResourceKey: "CODE.Framework-Icon-Contact2") 
            { 
                GroupTitle = "Customers", 
                ToolTipText = "Open Customer Search UI" 
            });

            //Actions.Add(new ViewAction("Magazines", execute: (a, o) => Controller.Action("Magazine", "Issues"), significance: ViewActionSignificance.AboveNormal, category: "File", categoryAccessKey: 'F', accessKey: 'M', brushResourceKey: "CODE.Framework-Icon-Settings") { GroupTitle = "Magazines", Image1 = new ImageBrush(new BitmapImage(new Uri("http://www.codemag.com/Magazine/CoverLarge/6291bb27-285a-4e33-964e-26043ad6b093"))) { Stretch = Stretch.UniformToFill } });
            //Actions.Add(new ViewAction("Magazine Fulfillment History", execute: (a, o) => Controller.Action("Magazine", "Fulfillment"), significance: ViewActionSignificance.AboveNormal, category: "File", categoryAccessKey: 'F', accessKey: 'M', groupTitle: "Magazines")
            //{
            //    Text2 = "See a complete list of fulfilled magazines.",
            //    GroupTitle = "Magazines",
            //    Image1 = new ImageBrush(new BitmapImage(new Uri("http://www.codemag.com/Magazine/Cover/6291bb27-285a-4e33-964e-26043ad6b093"))),
            //    Image2 = new ImageBrush(new BitmapImage(new Uri("http://www.codemag.com/Magazine/Cover/c285ab50-86a9-44c3-a0ce-d790acae7db1"))),
            //    Image3 = new ImageBrush(new BitmapImage(new Uri("http://www.codemag.com/Magazine/Cover/4e0b802b-1006-45e4-9439-7f146df0debf"))),
            //    Image4 = new ImageBrush(new BitmapImage(new Uri("http://www.codemag.com/Magazine/Cover/0ec3b5e9-3027-44c3-9c8e-7cb6769c9515"))),
            //    Image5 = new ImageBrush(new BitmapImage(new Uri("http://www.codemag.com/Magazine/Cover/dfd0787e-65c5-49ab-851d-10bb6ac143d3"))),
            //    Number1 = "100"
            //});
            //Actions.Add(new ViewAction("Invoices", execute: (a, o) => Controller.Action("Invoice", "Test"), significance: ViewActionSignificance.Normal, category: "File", categoryAccessKey: 'F', accessKey: 'M', brushResourceKey: "CODE.Framework-Icon-Settings")
            //{
            //    ActionView = new Button { Content = "Test" }
            //});
            //Actions.Add(new ViewAction("Invoices 2", execute: (a, o) => Controller.Action("Invoice", "Hello"), significance: ViewActionSignificance.Normal, category: "File", categoryAccessKey: 'F', accessKey: 'M', brushResourceKey: "CODE.Framework-Icon-Settings"));
            //Actions.Add(new ViewAction("Subscribers", execute: (a, o) => Controller.Action("Subscriber", "List"), significance: ViewActionSignificance.Highest, category: "File", categoryAccessKey: 'F', accessKey: 'S', brushResourceKey: "CODE.Framework-Icon-Contact2", order: 0)
            //{
            //    GroupTitle = "Subscribers",
            //    Image1 = new ImageBrush(new BitmapImage(new Uri("http://www.codemag.com/Magazine/Cover/6291bb27-285a-4e33-964e-26043ad6b093"))),
            //    Image2 = new ImageBrush(new BitmapImage(new Uri("http://www.codemag.com/Magazine/Cover/c285ab50-86a9-44c3-a0ce-d790acae7db1"))),
            //    Image3 = new ImageBrush(new BitmapImage(new Uri("http://www.codemag.com/Magazine/Cover/4e0b802b-1006-45e4-9439-7f146df0debf"))),
            //    Image4 = new ImageBrush(new BitmapImage(new Uri("http://www.codemag.com/Magazine/Cover/0ec3b5e9-3027-44c3-9c8e-7cb6769c9515"))),
            //    Image5 = new ImageBrush(new BitmapImage(new Uri("http://www.codemag.com/Magazine/Cover/dfd0787e-65c5-49ab-851d-10bb6ac143d3"))),
            //    Number1 = "100"
            //});

            Actions.Add(new SwitchThemeViewAction("Windows 95", "Battleship (Win95)", category: "View", categoryAccessKey: 'V', accessKey: 'W') { GroupTitle = "View" });
            Actions.Add(new SwitchThemeViewAction("Geek", "Geek (Visual Studio)", category: "View", categoryAccessKey: 'V', accessKey: 'G') { GroupTitle = "View" });
            Actions.Add(new SwitchThemeViewAction("Metro", "Metro (Win8)", category: "View", categoryAccessKey: 'V', accessKey: 'M') { GroupTitle = "View" });
            Actions.Add(new SwitchThemeViewAction("Universe", "Universe (UWP)", category: "View", categoryAccessKey: 'V', accessKey: 'U') { GroupTitle = "View" });
            Actions.Add(new SwitchThemeViewAction("Vapor", "Vapor (Steam)", category: "View", categoryAccessKey: 'V', accessKey: 'V') { GroupTitle = "View" });
            Actions.Add(new SwitchThemeViewAction("Wildcat", "Wildcat", category: "View", categoryAccessKey: 'V', accessKey: 'C') { GroupTitle = "View" });
            Actions.Add(new SwitchThemeViewAction("Workplace", "Workplace (Office)", category: "View", categoryAccessKey: 'V', accessKey: 'W') { GroupTitle = "View" });
            Actions.Add(new SwitchThemeViewAction("Zorro", "Zorro (VFP)", category: "View", categoryAccessKey: 'V', accessKey: 'Z') { GroupTitle = "View" });
            //Actions.Add(new SwitchThemeViewAction("Newsroom", "Newsroom", category: "View", categoryAccessKey: 'V', accessKey: 'N') { GroupTitle = "View" });

            //// Example message box
            //Actions.Add(new ViewAction("Test Message", category: "Message", execute: (a, o) =>
            //{
            //    _canLoadMagazines = true;
            //    Actions[0].InvalidateCanExecute();
            //    var myActions = new List<IViewAction>
            //    {
            //        new MessageBoxViewAction("Bouyah!", execute: (a2, o2) =>
            //        {
            //            var action = a2 as MessageBoxViewAction;
            //            Controller.Status("Bouyah");
            //            //Controller.CloseViewForModel(action.Model);
            //        })
            //        {ShortcutKey = Key.B, ShortcutModifiers = ModifierKeys.Alt},

            //        new MessageBoxViewAction("Get out!", execute: (a3, o3) =>
            //        {
            //            var action = a3 as MessageBoxViewAction;
            //            Controller.Status("Get out!");
            //            Controller.CloseViewForModel(action.Model);
            //        })
            //        {ShortcutKey = Key.O, ShortcutModifiers = ModifierKeys.Alt}
            //    };
            //    Controller.Message("Hello World!", actions: myActions);
            //})
            //{ GroupTitle = "Status", Number1 = "10", CategoryBrushResourceKey = "CODE.Framework-Icon-ArrowRight", Image1 = new ImageBrush(new BitmapImage(new Uri("http://www.codemag.com/Magazine/Cover/dfd0787e-65c5-49ab-851d-10bb6ac143d3"))) });
            //Actions.Add(new ViewAction("Another Test Message", userRoles: new[] { "Test" }, category: "Message", execute: (a, o) => Controller.Message("Another Test", "Test Header", MessageBoxButtons.OKCancel)) { GroupTitle = "Status" });
            ////Actions.Add(new ViewAction("Custom Message", category: "Message", execute: (a, o) => Controller.Message("", model: new Message3ViewModel(), viewName: "Message3", controllerType: typeof(HomeController))));

            // Example status updates
            Actions.Add(new ViewAction("Set Ready Status", significance: ViewActionSignificance.Lowest, category: "Status", categoryAccessKey: 'S', accessKey: 'R', execute: (a, o) => Controller.Status("Ready.")) { GroupTitle = "Status" });
            Actions.Add(new ViewAction("Set Processing Status", significance: ViewActionSignificance.Lowest, category: "Status", execute: (a, o) => Controller.Status("Pretending to load data...", ApplicationStatus.Processing)) { GroupTitle = "Status" });
            Actions.Add(new ViewAction("Set Warning Status", significance: ViewActionSignificance.Lowest, category: "Status", execute: (a, o) => Controller.Status("Maybe there is an issue you should pay attention to...", ApplicationStatus.Warning), accessKey: 'W') { GroupTitle = "Status" });
            Actions.Add(new ViewAction("Set Error Status", significance: ViewActionSignificance.Lowest, category: "Status", execute: (a, o) => Controller.Status("A serius problem has occured!", ApplicationStatus.Error), accessKey: 'E') { GroupTitle = "Status" });

            // Example notifications
            Actions.Add(new ViewAction("Short Notification", significance: ViewActionSignificance.Lowest, category: "Notifications", categoryAccessKey: 'N', execute: (a, o) => Controller.Notification("Subscriber Alert", "A new subscriber has been added to the system.", imageResource: "CODE.Framework-Icon-Message")) { GroupTitle = "Status" });
            Actions.Add(new ViewAction("Long Notification", significance: ViewActionSignificance.Lowest, category: "Notifications", execute: (a, o) => Controller.Notification("Content Alert", "At " + DateTime.Now.ToString() + " new content has been added to the system. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tortor lectus, ultricies sed dictum vitae, tempor eget magna. Vivamus vitae libero at nunc tincidunt lobortis. Integer facilisis vehicula leo in luctus. Aenean vel nunc non orci consequat lacinia sed semper est. Pellentesque nec sapien dolor. Duis rhoncus aliquam interdum. Integer at velit at massa vulputate porttitor. Mauris neque nisl, cursus eu mollis varius, ultrices non dolor. Suspendisse potenti. Integer at rutrum ipsum. Curabitur sed augue massa. Donec luctus nunc non nunc sagittis eget venenatis velit interdum.", imageResource: "CODE.Framework-Icon-Message")) { GroupTitle = "Status" });
            Actions.Add(new ViewAction("Long Notification", significance: ViewActionSignificance.Lowest, category: "Notifications", execute: (a, o) => Controller.Notification("Content Alert", "At " + DateTime.Now.ToString() + " new content has been added to the system. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tortor lectus, ultricies sed dictum vitae, tempor eget magna. Vivamus vitae libero at nunc tincidunt lobortis. Integer facilisis vehicula leo in luctus. Aenean vel nunc non orci consequat lacinia sed semper est. Pellentesque nec sapien dolor. Duis rhoncus aliquam interdum. Integer at velit at massa vulputate porttitor. Mauris neque nisl, cursus eu mollis varius, ultrices non dolor. Suspendisse potenti. Integer at rutrum ipsum. Curabitur sed augue massa. Donec luctus nunc non nunc sagittis eget venenatis velit interdum.", imageResource: "CODE.Framework-Icon-Message")) { GroupTitle = "Status", Image1 = new ImageBrush(new BitmapImage(new Uri("http://www.codemag.com/Magazine/CoverLarge/6291bb27-285a-4e33-964e-26043ad6b093"))) { Stretch = Stretch.UniformToFill } });

            //// Example toggle actions
            //Actions.Add(new ToggleViewAction("Toggle 1", category: "Toggle", significance: ViewActionSignificance.AboveNormal));
            //Actions.Add(new ToggleViewAction("Toggle 2", category: "Toggle", significance: ViewActionSignificance.Highest));
        }
    }
}