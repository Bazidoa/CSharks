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
        [Authorize(Roles = "Admin,RootAdmin")]
        public ActionResult RiportDetails()
        {
            using (WebshopModel _context = new WebshopModel())
            {
                List<Order> allOrders = _context.Orders.Where(x =>
                                                       x.OrderStatus != OrderStatusEnum.DELETED.ToString() &&
                                                       x.OrderStatus != OrderStatusEnum.NOTCREATED.ToString()).ToList();

                List<OrderEntry> allOrderEntry = new List<OrderEntry>();
                foreach (Order item in allOrders)
                {
                    List<OrderEntry> o = _context.OrderEntries.Where(x => x.Order_ID == item.OrderID).ToList();
                    foreach (OrderEntry orderItem in o)
                    {
                        allOrderEntry.Add(orderItem);
                    }
                }
                
                int allOrderPrice = 0;

                foreach (OrderEntry item in allOrderEntry)
                {
                    allOrderPrice += item.ProductPrice * item.Quantity;
                }

                ViewBag.SumAllOrders = allOrderPrice;

                return View(allOrders);
            }
        }
    }
}