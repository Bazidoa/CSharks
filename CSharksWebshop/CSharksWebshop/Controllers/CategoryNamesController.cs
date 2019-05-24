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
    public class CategoryNamesController : Controller
    {
        private WebshopModel db = new WebshopModel();

        // GET: CategoryNames
        public ActionResult Index()
        {
            return View(db.CategoryNames.ToList());
        }

        // GET: CategoryNames/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CategoryName categoryName = db.CategoryNames.Find(id);
            if (categoryName == null)
            {
                return HttpNotFound();
            }
            return View(categoryName);
        }

        // GET: CategoryNames/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: CategoryNames/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Category_Name")] CategoryName categoryName)
        {
            if (ModelState.IsValid)
            {
                db.CategoryNames.Add(categoryName);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(categoryName);
        }

        // GET: CategoryNames/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CategoryName categoryName = db.CategoryNames.Find(id);
            if (categoryName == null)
            {
                return HttpNotFound();
            }
            return View(categoryName);
        }

        // POST: CategoryNames/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Category_Name")] CategoryName categoryName)
        {
            if (ModelState.IsValid)
            {
                db.Entry(categoryName).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(categoryName);
        }

        // GET: CategoryNames/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CategoryName categoryName = db.CategoryNames.Find(id);
            if (categoryName == null)
            {
                return HttpNotFound();
            }
            return View(categoryName);
        }

        // POST: CategoryNames/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            CategoryName categoryName = db.CategoryNames.Find(id);
            db.CategoryNames.Remove(categoryName);
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
