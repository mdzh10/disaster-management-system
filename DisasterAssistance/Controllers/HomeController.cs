using System.Web.Mvc;

namespace DisasterAssistance.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "About The Disaster Assistance Program.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Disaster Assistance Contact Info.";

            return View();
        }
    }
}