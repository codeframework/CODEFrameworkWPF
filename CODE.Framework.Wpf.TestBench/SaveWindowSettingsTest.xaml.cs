namespace CODE.Framework.Wpf.TestBench
{
    /// <summary>
    /// Interaction logic for SaveWindowSettingsTest.xaml
    /// </summary>
    public partial class SaveWindowSettingsTest : Window
    {
        public SaveWindowSettingsTest()
        {
            InitializeComponent();

            Closing += (s, e) =>
            {
                var mruGuid = Guid.NewGuid();
                var data = new Dictionary<string, string> { { "User", "Test User" }, { "SomeOtherKey", Guid.NewGuid().ToString() } };
                // TODO: SettingsManager.SaveMostRecentlyUsed("WindowUse", mruGuid.ToString(), "Window Usage: Timestamp " + DateTime.Now.ToString(CultureInfo.InvariantCulture) + " Id " + mruGuid, scope: SettingScope.Workstation, data: data);
            };

            // TODO: var recentUses = SettingsManager.LoadMostRecentlyUsed("WindowUse", SettingScope.Workstation);
            // TODO: mruList.ItemsSource = recentUses;
        }
    }
}
