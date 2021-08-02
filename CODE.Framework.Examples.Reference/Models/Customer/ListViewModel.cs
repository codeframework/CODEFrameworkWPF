using CODE.Framework.Wpf.Controls;
using System.Collections.ObjectModel;
using System.Linq;
using System.Threading;

namespace CODE.Framework.Examples.Reference.Models.Customer
{
    public class ListViewModel : ViewModel
    {
        public ListViewModel()
        {
            Actions.Add(new ViewAction("Print", brushResourceKey: "CODE.Framework-Icon-Print", execute: (a, o) => Controller.Message("The print example has not been implemented.", "Example", MessageBoxButtons.OKCancel), significance: ViewActionSignificance.Highest, accessKey: 'P', shortcutKeyModifiers: ModifierKeys.Alt));
            Actions.Add(new CloseCurrentViewAction(this, beginGroup: true) { Significance = ViewActionSignificance.Highest });
            Actions.Add(new ViewAction("Another Test Message", execute: (a, o) => Controller.Message("Another Test", "Test Header", MessageBoxButtons.OKCancel)) { GroupTitle = "Status" });

            Search = new ViewAction("Search", execute: (o, a) => LoadData());
            EditCustomer = new ViewAction("Edit", execute: (o, a) => Controller.Action("Subscriber", "Edit"));

            ChangeSortOrder = new ViewAction("Change Sort", execute: (o, a) =>
            {
                if (SortOrder == SortOrder.Ascending)
                    SortOrder = SortOrder.Descending;
                else if (SortOrder == SortOrder.Descending)
                    SortOrder = SortOrder.Unsorted;
                else
                    SortOrder = SortOrder.Ascending;
            });
        }

        public IViewAction ChangeSortOrder { get; set; }

        private void LoadData()
        {
            AsyncWorker.Execute(() =>
            {
                var result = new List<StandardViewModel>();
                for (var counter = 1; counter <= 100; counter++)
                {
                    var customer = new StandardViewModel
                    {
                        Text1 = GetRandomFirstName() + " " + GetRandomLastName(),
                        Text2 = GetRandomCompany()
                    };
                    result.Add(customer);
                }
                Thread.Sleep(2000); // Simulating a slow process
                return result;
            }, result =>
            {
                Customers.Clear();
                foreach (var subscriber in result)
                {
                    subscriber.LoadSharedImage1FromBrushResource("CODE.Framework-Icon-Contact2");
                    Customers.Add(subscriber);
                }
            }, this);
        }

        private static string GetRandomFirstName() => GetRandomString(new List<string> { "John", "James", "Peter", "David", "Steve", "Kimberly", "Susan", "Ellen" });
        private static string GetRandomLastName() => GetRandomString(new List<string> { "Smith", "Jones", "Doe", "Gates", "Mayer", "MacLeod" });
        private static string GetRandomCompany() => GetRandomString(new List<string> { "Microsoft", "Apple", "Google", "EPS", "CODE", "Tower 48" });
        private static string GetRandomString(ICollection<string> list)
        {
            var rand = new Random(Seed);
            var skip = rand.Next(list.Count - 1);
            return list.Skip(skip).FirstOrDefault();
        }

        private static int _seed = -1;
        private SortOrder _sortOrder = SortOrder.Ascending;

        private static int Seed
        {
            get
            {
                if (_seed == -1) _seed = Environment.TickCount;
                _seed++;
                return _seed;
            }
        }

        public IViewAction Search { get; set; }
        public IViewAction EditCustomer { get; set; }

        // Note: The following three properties do not need change notification, unless someone intends to set them programmatically
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Company { get; set; }

        public SortOrder SortOrder
        {
            get => _sortOrder;
            set
            {
                _sortOrder = value;
                NotifyChanged();
            }
        }

        public ObservableCollection<StandardViewModel> Customers { get; } = new ObservableCollection<StandardViewModel>(); // Note: This never needs to be set again. We will just re-populate the existing collection
    }
}