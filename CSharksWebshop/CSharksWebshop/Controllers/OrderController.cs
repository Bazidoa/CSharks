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

namespace CSharksWebshop.Controllers
{
    public class OrderController : Controller
    {
        private WebshopModel db = new WebshopModel();

        // GET: Order
        public ActionResult Index()
        {
            return View(db.Orders.ToList());
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
                string currentTime = db.Orders.Where(x => x.UserID == currentUser).OrderByDescending(x => x.ID).Select(x => x.OrderTime).FirstOrDefault();

                List<Product> products = db.Products.ToList();

                for (int i = 0; i < query.Count; i++)
                {
                    Product pPrice = products.Where(x => x.ID == query[i].ProductID).Select(x => x).FirstOrDefault();

                    OrderEntry entryToAddToOrderEntries = new OrderEntry(currentUser, query[i].ProductID, query[i].Quantity, pPrice.ProductPrice);
                    entryToAddToOrderEntries.OrderTime = currentTime;
                    db.OrderEntries.Add(entryToAddToOrderEntries);
                    db.BasketEntries.Remove(query[i]);
                }
            }
            db.SaveChanges();

            return RedirectToAction("Index");
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
        public ActionResult Create([Bind(Include = "ID,OrderTime,UserID,FirstName,LastName,PostCode,Street,City,HouseNumber,UserEmail,OrderStatus")] Order order)
        {

            string currentDate = DateTime.Now.ToString();

            if (ModelState.IsValid)
            {
                order.OrderTime = currentDate;
                db.Orders.Add(order);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(order);
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
