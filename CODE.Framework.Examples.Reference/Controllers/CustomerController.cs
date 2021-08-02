using CODE.Framework.Examples.Reference.Models.Customer;

namespace CODE.Framework.Examples.Reference.Controllers
{
    public class CustomerController : Controller
    {
        public ActionResult List() => ViewModal(new ListViewModel());
    }
}
