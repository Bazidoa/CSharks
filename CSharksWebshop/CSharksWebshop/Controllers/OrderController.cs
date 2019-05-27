using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using CSharksWebshop.DataModels;
using CSharksWebshop.Models;
using Microsoft.AspNet.Identity;

namespace CSharksWebshop.Controllers
{
    public class OrderController : Controller
    {
        private WebshopModel db = new WebshopModel();

        // GET: Order
        public ActionResult Index()
        {
            string currentUser = UserAuthentication.WhoAmI(User, Session);
            List<Order> myOrders = db.Orders.Where(x => x.UserID == currentUser).ToList();
            return View();
        }

        public ActionResult AddToOrderEntries()
        {
            Session["dummy"] = "Dummy";
            string currentUser = UserAuthentication.WhoAmI(User, Session);

            var query = (from a in db.BasketEntries
                         where a.UserID == currentUser
                         select a).ToList();

            if (query != null)
            {
                //string currentTime = DateTime.Now.ToString();
                Order currentOrder = db.Orders.Where(x => x.UserID == currentUser).OrderByDescending(x => x.OrderID).Select(x => x).FirstOrDefault();
                string currentTime = currentOrder.OrderTime;
                //db.Orders.Where(x => x.UserID == currentUser).OrderByDescending(x => x.OrderID).Select(x => x.OrderTime).FirstOrDefault();
                int currentOrderID = currentOrder.OrderID;
                //db.Orders.Where(x => x.UserID == currentUser).OrderByDescending(x => x.OrderID).Select(x => x.OrderID).FirstOrDefault();
                List<Product> products = db.Products.ToList();

                for (int i = 0; i < query.Count; i++)
                {
                    Product pPrice = products.Where(x => x.ID == query[i].ProductID).Select(x => x).FirstOrDefault();

                    OrderEntry entryToAddToOrderEntries = new OrderEntry(currentUser, query[i].ProductID, query[i].Quantity, pPrice.ProductPrice);
                    entryToAddToOrderEntries.OrderTime = currentTime;
                    entryToAddToOrderEntries.Order_ID = currentOrderID;

                    db.OrderEntries.Add(entryToAddToOrderEntries);
                    db.BasketEntries.Remove(query[i]);
                }
                currentOrder.OrderStatus = OrderStatusEnum.ACTIVE.ToString();
            }

            db.SaveChanges();

            return RedirectToAction("Index", "MyOrders");
        }

        // GET: Order/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Order/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,OrderTime,UserID,FirstName,LastName,PostCode,Street,City,HouseNumber,UserEmail,OrderStatus")] Order order, FormCollection formCollection)
        {

            string currentDate = DateTime.Now.ToString();

            if (ModelState.IsValid)
            {
                order.OrderTime = currentDate;
                if(User.Identity.IsAuthenticated)
                {
                order = RegisteredUserCreate(int.Parse(formCollection["RegisteredUserCreate"]));
                }

                db.Orders.Add(order);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(order);
        }

        public Order RegisteredUserCreate(int? addressId)
        {

            string userId = User.Identity.GetUserId();
            UserData userData = db.UserDatas.Where(x => x.UserID == userId).FirstOrDefault();
            Address address = db.Addresses.Where(y => y.UserId == userId && y.ID == addressId).FirstOrDefault();
            string currentDate = DateTime.Now.ToString();
            Order order = new Order();

            order.FirstName = userData.FirstName;
            order.LastName = userData.LastName;
            order.UserEmail = userData.UserEmail;
            order.OrderTime = currentDate.ToString();

            order.PostCode = address.ZipCode.ToString();
            order.City = address.City;
            order.Street = address.Street;
            order.HouseNumber = address.HouseNumber.ToString();            

            return order;
        }


        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
