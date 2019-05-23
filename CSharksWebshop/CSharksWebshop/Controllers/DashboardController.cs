using CSharksWebshop.DataModels;
using CSharksWebshop.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CSharksWebshop.Controllers
{
    public class DashboardController : Controller
    {
        // GET: Dashboard
        [Authorize(Roles = "Admin,RootAdmin")]
        public ActionResult Details()
        {
            using (WebshopModel _context = new WebshopModel())
            {
                ViewBag.CountOrders = _context.Orders.Count();
                ViewBag.CountProducts = _context.Products.Count();
                ViewBag.CountOrderEntries = _context.OrderEntries.Count();
            }
            using (ApplicationDbContext _context2 = new ApplicationDbContext())
            {
                ViewBag.CountUsers = _context2.Users.Count();
            }
                return View();
        }
    }
}