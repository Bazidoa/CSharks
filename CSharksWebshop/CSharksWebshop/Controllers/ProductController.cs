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

        
        // GET: Product
        public ActionResult Index()
        {
            string currentUser = UserAuthentication.WhoAmI(User,Session);
            List<Product> allProducts = db.Products.ToList();
            List<Product> allProductRightOrder = allProducts.OrderBy(p => p.ProductName).ThenBy(m => m.Manufacturer).ToList();
                        
            return View(allProductRightOrder);
            
        }



        public ActionResult AddToBasket(int? id)
        {
            Session["dummy"] = "Dummy";
            string currentUser = UserAuthentication.WhoAmI(User, Session);
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            BasketEntry entryToAddToBasket = new BasketEntry(currentUser, product.ID);
            if (product == null)
            {
                return HttpNotFound();
            }
            //TODo: if benne van már a termék(SessionID && ProductID && OrderTime==null alapján) akkor Quantity++
            var query = (from a in db.BasketEntries
                         where a.UserID == currentUser && a.ProductID == product.ID
                         select a).FirstOrDefault();

            if (query != null)
            {
                var result = db.BasketEntries.SingleOrDefault(b => b.UserID == currentUser && b.ProductID == product.ID);
                result.Quantity++;
            }


            else
            {
                entryToAddToBasket.Quantity = 1;
                db.BasketEntries.Add(entryToAddToBasket);
                
            }
            db.SaveChanges();
            if (Request.UrlReferrer.ToString().EndsWith("/ShowBasket"))
            {
               return RedirectToAction("ShowBasket", "Basket");
            }
            return RedirectToAction(null);
        }

        //todo később ha mennyiségek vannak akkor majd figyelni kell hogy többet kell beletenni



        //GET -ezt írtam Stackről
        /* public ActionResult CreateNewMyEntity(string default_value)
         {
             Product  newMyEntity = new Product();
             newMyEntity.UrlFriendlyName = newMyEntity.UrlFriendlyNameConverter(newMyEntity.ProductName);

             return View(newMyEntity);
         }*/
        public ActionResult RemoveFromBasket(int? id)
        {
            Session["dummy"] = "Dummy";
            string currentUser = UserAuthentication.WhoAmI(User, Session);
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            BasketEntry entryToRemoveFromBasket = new BasketEntry(currentUser, product.ID);
            if (product == null)
            {
                return HttpNotFound();
            }
            //TODo: if benne van már a termék(SessionID && ProductID && OrderTime==null alapján) akkor Quantity++
            BasketEntry BasketEntryToLowerQuantity = (from a in db.BasketEntries
                         where a.UserID == currentUser && a.ProductID == product.ID
                         select a).FirstOrDefault();

            if (BasketEntryToLowerQuantity != null)
            {
              BasketEntryToLowerQuantity.Quantity--;
            }
            if (BasketEntryToLowerQuantity.Quantity == 0)
            {
                db.BasketEntries.Remove(BasketEntryToLowerQuantity);
            }
            db.SaveChanges();

            if (Request.UrlReferrer.ToString().EndsWith("/ShowBasket"))
            {
                return RedirectToAction("ShowBasket", "Basket");
            }
            return RedirectToAction("Index");
        }



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
        public ActionResult Create([Bind(Include = "ID,ProductName,ProductPrice,IsAvailable,ProductDescription,InStock,UrlFriendlyName,Manufacturer,ProductPictureURL")] Product product)
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
        public ActionResult Edit([Bind(Include = "ID,ProductName,ProductPrice,IsAvailable,ProductDescription,InStock,UrlFriendlyName,Manufacturer,ProductPictureURL")] Product product)
        {
            if (ModelState.IsValid)
            {
                db.Entry(product).State = EntityState.Modified;
                db.SaveChanges();
                //return RedirectToAction("Index");
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
            product.IsAvailable = false;
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
