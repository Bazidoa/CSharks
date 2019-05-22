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

        
        // GET: Basket
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ClearBasket()
        {
            string currentUser = UserAuthentication.WhoAmI(User, Session);
            foreach (var item in db.BasketEntries)
            {
                if (item.UserID == currentUser)
                {
                    db.BasketEntries.Remove(item);
                }
            }
            db.SaveChanges();
            return RedirectToAction("Index", "Shop");
        }

        public ActionResult ShowBasket()
        {
            string currentUser = UserAuthentication.WhoAmI(User, Session);
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
            string currentUser = UserAuthentication.WhoAmI(User, Session);
            BasketEntry itemToRemove = db.BasketEntries.Find(currentUser, id);

            db.BasketEntries.Remove(itemToRemove);
            db.SaveChanges();
            return RedirectToAction("ShowBasket");
        }
    }
}