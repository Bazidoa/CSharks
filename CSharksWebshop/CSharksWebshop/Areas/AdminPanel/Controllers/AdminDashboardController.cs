using CSharksWebshop.DataModels;
using CSharksWebshop.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CSharksWebshop.Controllers
{
    public class AdminDashboardController : Controller
    {
        // GET: AdminPanel/AdminDashboard
        [Authorize(Roles = "Admin,RootAdmin")]
        public ActionResult Index()
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