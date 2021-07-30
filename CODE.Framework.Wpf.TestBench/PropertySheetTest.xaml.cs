using System.ComponentModel;
using System.Linq;
using System.Reflection;
using System.Windows.Input;
using CODE.Framework.Wpf.Layout;

// TODO: Collapsing groups seems to be broken in this test

namespace CODE.Framework.Wpf.TestBench
{
    /// <summary>
    /// Interaction logic for PropertySheetTest.xaml
    /// </summary>
    public partial class PropertySheetTest : Window
    {
        public PropertySheetTest()
        {
            InitializeComponent();

            Loaded += (s, e) =>
            {
                var exampleType = GetType();

                var properties = exampleType.GetProperties();

                var categories = new List<string> { string.Empty };
                foreach (var property in properties)
                {
                    var categoryName = GetCategory(property);
                    if (!string.IsNullOrEmpty(categoryName) && !categories.Contains(categoryName))
                        categories.Add(categoryName);
                }
                categories = categories.OrderBy(c => c).ToList();

                foreach (var category in categories)
                {
                    var first = true;
                    foreach (var property in properties.OrderBy(p => p.Name))
                    {
                        if (GetCategory(property) != category) continue;
                        var text = new TextBlock { Text = property.Name };
                        SimpleView.SetGroupTitle(text, !string.IsNullOrEmpty(category) ? category : " -- Uncategorized");
                        if (first) SimpleView.SetGroupBreak(text, true);
                        first = false;
                        var nativeValue = property.GetValue(this, null);
                        var editText = nativeValue == null ? string.Empty : nativeValue.ToString();
                        var edit = new TextBox { Text = editText };
                        PropertySheet.Children.Add(text);
                        PropertySheet.Children.Add(edit);
                    }
                }
            };
        }

        private string GetCategory(PropertyInfo property)
        {
            var attributes = property.GetCustomAttributes(typeof(CategoryAttribute), true);
            if (attributes.Length > 0)
            {
                if (attributes[0] is CategoryAttribute categoryAttribute)
                    return categoryAttribute.Category;
            }
            return string.Empty;
        }

        private void PropertySheetMouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ClickCount == 2)
            {
                if (sender is not PropertySheet ps) return;
                ps.ShowGroupHeaders = !ps.ShowGroupHeaders;
            }
        }
    }
}
