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
            List<Order> orders = db.Orders.Where(x => x.UserID == userID).ToList();
            return View(orders);
        }
        //public ActionResult Delete(int? id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    OrderEntry product = db.OrderEntries.Where(x => x.Order_ID == id)
        //    if (product == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(product);
        //}
    }
}