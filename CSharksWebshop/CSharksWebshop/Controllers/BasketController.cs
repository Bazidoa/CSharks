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
using CSharksWebshop.Controllers;

namespace CSharksWebshop.Controllers
{
    public class BasketController : Controller
    {
        private WebshopModel db = new WebshopModel();

        public string WhoAmI()
        {
            if (User.Identity.IsAuthenticated)
            {
                return User.Identity.Name;
            }
            else
            {
                return Session.SessionID;
            }
        }

        // GET: Basket
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ClearBasket()
        {
            string currentUser = WhoAmI();
            foreach (var item in db.BasketEntries)
            {
                if (item.UserID == currentUser)
                {
                    db.BasketEntries.Remove(item);
                }
            }
            db.SaveChanges();
            return RedirectToAction("ShowBasket");
        }

        public ActionResult ShowBasket()
        {
            string currentUser = WhoAmI();
            List<Product> basketProducts = new List<Product>();
            List<BasketEntry> basketEntries = new List<BasketEntry>();



            basketEntries = db.BasketEntries.Where(x => x.UserID == currentUser && x.OrderTime == null).ToList();
            for (int i = 0; i < basketEntries.Count; i++)
            {
                basketProducts.Add(db.Products.Find(basketEntries[i].ProductID));
            }

            return View(basketProducts);
        }

        public ActionResult DeleteFromBasket(int id)
        {
            string currentUser = WhoAmI();
            BasketEntry itemToRemove = db.BasketEntries.Find(currentUser, id);

            db.BasketEntries.Remove(itemToRemove);
            db.SaveChanges();
            return RedirectToAction("ShowBasket");
        }
    }
}