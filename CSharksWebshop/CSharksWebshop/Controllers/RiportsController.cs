using CSharksWebshop.DataModels;
using CSharksWebshop.Models;
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
                List<Order> allOrders = _context.Orders.Where(x =>
                                                       x.OrderStatus != OrderStatusEnum.DELETED.ToString() &&
                                                       x.OrderStatus != OrderStatusEnum.NOTCREATED.ToString()).ToList();
                //ViewBag.SumAllOrders = _context.OrderEntries.
            return View(allOrders);
            }
        }
    }
}