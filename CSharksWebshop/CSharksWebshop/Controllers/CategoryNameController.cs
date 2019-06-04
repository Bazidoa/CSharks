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
    public class CategoryNameController : Controller
    {
        private WebshopModel db = new WebshopModel();

        // GET: CategoryName
        public ActionResult Index()
        {
            return View(db.CategoryNames.ToList());
        }

        // GET: CategoryName/Details/5
        public ActionResult Details(string id)
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

        // GET: CategoryName/Create
        [Authorize(Roles = "Admin,RootAdmin")]
        public ActionResult Create()
        {
            return View();
        }

        // POST: CategoryName/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Category_Name")] CategoryName categoryName)
        {
            if (ModelState.IsValid)
            {
                if (categoryName.CategoryNameValidator(categoryName.Category_Name))
                {
                db.CategoryNames.Add(categoryName);
                db.SaveChanges();
                }
                return RedirectToAction("Index");
            }

            return View(categoryName);
        }

        // GET: CategoryName/Edit/5
        public ActionResult Edit(string id)
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

        // POST: CategoryName/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Category_Name")] CategoryName categoryName)
        {
            if (ModelState.IsValid)
            {
                db.Entry(categoryName).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(categoryName);
        }

        // GET: CategoryName/Delete/5
        public ActionResult Delete(string id)
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

        // POST: CategoryName/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
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
