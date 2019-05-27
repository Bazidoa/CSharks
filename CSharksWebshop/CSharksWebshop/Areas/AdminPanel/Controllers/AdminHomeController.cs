using CSharksWebshop.DataModels;
using CSharksWebshop.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using System.Data.Entity;
using System.Net;

namespace CSharksWebshop.Areas.AdminPanel.Controllers
{
    public class AdminHomeController : Controller
    {
        private WebshopModel db = new WebshopModel();
        private ApplicationDbContext db2 = new ApplicationDbContext();

        // GET: AdminPanel/AdminHome
        public ActionResult Index()
        {
          
           

            ViewBag.CountOrders = db.Orders.Count();
                ViewBag.CountProducts = db.Products.Count();
                ViewBag.CountOrderEntries = db.OrderEntries.Count();
           
            using (ApplicationDbContext db2 = new ApplicationDbContext())
            {
                ViewBag.CountUsers = db2.Users.Count();
            }
            return View();
        }

        public ActionResult Products()
        {
            string currentUser = UserAuthentication.WhoAmI(User, Session);
            List<Product> allProducts = db.Products.ToList();
            List<Product> allProductRightOrder = allProducts.OrderBy(p => p.ProductName).ThenBy(m => m.Manufacturer).ToList();

            return View(allProductRightOrder);

        }

        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        public ActionResult Report()
        {
          
            {
                List<Order> allOrders = db.Orders.Where(x =>
                                                       x.OrderStatus != OrderStatusEnum.DELETED.ToString() &&
                                                       x.OrderStatus != OrderStatusEnum.NOTCREATED.ToString()).ToList();

                List<OrderEntry> allOrderEntry = new List<OrderEntry>();
                foreach (Order item in allOrders)
                {
                    List<OrderEntry> o = db.OrderEntries.Where(x => x.Order_ID == item.OrderID).ToList();
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