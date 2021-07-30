using CODE.Framework.Example.Reference.Models.Home;

namespace CODE.Framework.Examples.Reference.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Start() => Shell(new StartViewModel(), "CODE Framework Reference App");
    }
}
