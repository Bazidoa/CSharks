using CSharksWebshop.DataModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CSharksWebshop.Controllers
{
    public class RiportsController : Controller
    {
        // GET: Riports
        public ActionResult RiportDetails()
        {
            using (WebshopModel _context = new WebshopModel())
            {
                ViewBag.CountOrders = _context.Orders.Count();
            }
            return View();
        }
    }
}