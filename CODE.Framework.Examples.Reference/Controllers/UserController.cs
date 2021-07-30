using CODE.Framework.Example.Reference.Models.User;

namespace CODE.Framework.Examples.Reference.Controllers
{
    public class UserController : Controller
    {
        public ActionResult Login() => ViewModal(new LoginViewModel(), ViewLevel.Popup);
    }
}
