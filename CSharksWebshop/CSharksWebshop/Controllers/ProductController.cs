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
    public class ProductController : Controller
    {
        private WebshopModel db = new WebshopModel();
        //megnézed az indexet, kapsz egy kosarat

        Basket basket = new Basket();

        // GET: Product
        public ActionResult Index()
        {
            basket.UserID = Session.SessionID;
            // basket.BasketProducts = new List<Product>();
            return View(db.Products.ToList());


        }

        public ActionResult AddToBasket(int? id)
        {

            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            BasketEntry entryToAddToBasket = new BasketEntry(Session.SessionID, product.ID);
            if (product == null)
            {
                return HttpNotFound();
            }
            //TODo: if benne van már a termék(SessionID && ProductID && OrderTime==null alapján) akkor Quantity++
            var query = (from a in db.BasketEntries
                         where a.UserID == Session.SessionID && a.ProductID == product.ID
                         select a).FirstOrDefault();

            if (query != null)
            {
                var result = db.BasketEntries.SingleOrDefault(b => b.UserID == Session.SessionID && b.ProductID == product.ID);
                result.Quantity++;
            }

            //(db.BasketEntries.Contains(entryToAddToBasket))

            else
            {
                basket.AddProduct(product);
                entryToAddToBasket.Quantity = 1;
                db.BasketEntries.Add(entryToAddToBasket);
                
            }
            db.SaveChanges();

            return View(basket.BasketProducts);
        }

        //todo később ha mennyiségek vannak akkor majd figyelni kell hogy többet kell beletenni
        public ActionResult ShowBasket()
        {
            List<Product> basketProducts = new List<Product>();
            List<BasketEntry> basketEntries = new List<BasketEntry>();

            string SessionID = Session.SessionID;

            basketEntries = db.BasketEntries.Where(x => x.UserID == SessionID && x.OrderTime == null).ToList();
            for (int i = 0; i < basketEntries.Count; i++)
            {
                basketProducts.Add(db.Products.Find(basketEntries[i].ProductID));
            }

            return View(basketProducts);
        }

        //GET -ezt írtam Stackről
        /* public ActionResult CreateNewMyEntity(string default_value)
         {
             Product  newMyEntity = new Product();
             newMyEntity.UrlFriendlyName = newMyEntity.UrlFriendlyNameConverter(newMyEntity.ProductName);

             return View(newMyEntity);
         }*/

        // GET: Product/Details/5
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

        // GET: Product/Create
        [Authorize(Roles = "Admin,RootAdmin")]
        public ActionResult Create()
        {
            return View();
        }

        // POST: Product/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,ProductName,ProductPrice,IsAvailable,ProductDescription,InStock,UrlFriendlyName,Manufacturer")] Product product)
        {
            if (ModelState.IsValid)
            {
                db.Products.Add(product);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(product);
        }

        // GET: Product/Edit/5
        [Authorize(Roles = "Admin,RootAdmin")]
        public ActionResult Edit(int? id)
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

        // POST: Product/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,ProductName,ProductPrice,IsAvailable,ProductDescription,InStock,UrlFriendlyName,Manufacturer")] Product product)
        {
            if (ModelState.IsValid)
            {
                db.Entry(product).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(product);
        }

        // GET: Product/Delete/5
        [Authorize(Roles = "Admin,RootAdmin")]
        public ActionResult Delete(int? id)
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

        // POST: Product/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Product product = db.Products.Find(id);
            db.Products.Remove(product);
            db.SaveChanges();
            return RedirectToAction("Index");
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
