using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using CSharksWebshop.DataModels;
using CSharksWebshop.Models;

namespace CSharksWebshop.Controllers
{
    public class MyOrdersController : Controller
    {
        WebshopModel db = new WebshopModel();
        // GET: MyOrders
        public ActionResult Index()
        {
            string userID =UserAuthentication.WhoAmI(User,Session);
            
            List<Order> orders = db.Orders.Where(x => x.UserID == userID && x.OrderStatus != OrderStatusEnum.DELETED.ToString()).ToList();
            return View(orders);
        }
        public ActionResult Delete(int? id)
        {
            string userID = UserAuthentication.WhoAmI(User, Session);
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Order order = db.Orders.Where(x => x.OrderID == id && x.UserID == userID).FirstOrDefault();
            order.OrderStatus = OrderStatusEnum.DELETED.ToString();
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}