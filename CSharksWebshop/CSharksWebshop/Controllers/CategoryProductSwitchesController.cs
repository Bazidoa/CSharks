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
    public class CategoryProductSwitchesController : Controller
    {
        private WebshopModel db = new WebshopModel();

        // GET: CategoryProductSwitches
        public ActionResult Index()
        {
            //var categoryProductSwitches = db.CategoryProductSwitches.Include(c => c.CategoryName).Include(c => c.Product);
            //return View(categoryProductSwitches.ToList());

            ViewBag.AllProducts = db.Products.Select(x => x).ToList();
            ViewBag.Categories = db.CategoryNames.Select(y => y).ToList();
           List<CategoryProductSwitch> categoryProductSwitches = db.CategoryProductSwitches.Select(z => z).ToList();
            return View(categoryProductSwitches);
        }

        // GET: CategoryProductSwitches/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CategoryProductSwitch categoryProductSwitch = db.CategoryProductSwitches.Find(id);
            if (categoryProductSwitch == null)
            {
                return HttpNotFound();
            }
            return View(categoryProductSwitch);
        }

        // GET: CategoryProductSwitches/Create
        public ActionResult Create()
        {
            ViewBag.Category_ID = new SelectList(db.CategoryNames, "ID", "Category_Name");
            ViewBag.Product_ID = new SelectList(db.Products, "ID", "ProductName");
            return View();
        }

        // POST: CategoryProductSwitches/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Category_ID,Product_ID")] CategoryProductSwitch categoryProductSwitch)
        {
            if (ModelState.IsValid)
            {
                db.CategoryProductSwitches.Add(categoryProductSwitch);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.Category_ID = new SelectList(db.CategoryNames, "ID", "Category_Name", categoryProductSwitch.Category_ID);
            ViewBag.Product_ID = new SelectList(db.Products, "ID", "ProductName", categoryProductSwitch.Product_ID);
            return View(categoryProductSwitch);
        }

        // GET: CategoryProductSwitches/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CategoryProductSwitch categoryProductSwitch = db.CategoryProductSwitches.Find(id);
            if (categoryProductSwitch == null)
            {
                return HttpNotFound();
            }
            ViewBag.Product_ID = new SelectList(db.Products, "ID", "ProductName", categoryProductSwitch.Product_ID);
            ViewBag.Category_ID = new SelectList(db.CategoryNames, "ID", "Category_Name", categoryProductSwitch.Category_ID);
            return View(categoryProductSwitch);
        }

        // POST: CategoryProductSwitches/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Category_ID,Product_ID")] CategoryProductSwitch categoryProductSwitch)
        {
            if (ModelState.IsValid)
            {
                db.Entry(categoryProductSwitch).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Category_ID = new SelectList(db.CategoryNames, "ID", "Category_Name", categoryProductSwitch.Category_ID);
            ViewBag.Product_ID = new SelectList(db.Products, "ID", "ProductName", categoryProductSwitch.Product_ID);
            return View(categoryProductSwitch);
        }

        // GET: CategoryProductSwitches/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CategoryProductSwitch categoryProductSwitch = db.CategoryProductSwitches.Find(id);
            if (categoryProductSwitch == null)
            {
                return HttpNotFound();
            }
            return View(categoryProductSwitch);
        }

        // POST: CategoryProductSwitches/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            CategoryProductSwitch categoryProductSwitch = db.CategoryProductSwitches.Find(id);
            db.CategoryProductSwitches.Remove(categoryProductSwitch);
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
