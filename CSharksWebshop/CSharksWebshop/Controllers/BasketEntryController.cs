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
    public class BasketEntryController : Controller
    {
        private WebshopModel db = new WebshopModel();

        // GET: BasketEntry
        public ActionResult Index()
        {
            return View(db.BasketEntries.ToList());
        }

        // GET: BasketEntry/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BasketEntry basketEntry = db.BasketEntries.Find(id);
            if (basketEntry == null)
            {
                return HttpNotFound();
            }
            return View(basketEntry);
        }

        // GET: BasketEntry/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: BasketEntry/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "UserID,ProductID,Quantity")] BasketEntry basketEntry)
        {
            if (ModelState.IsValid)
            {
                db.BasketEntries.Add(basketEntry);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(basketEntry);
        }

        // GET: BasketEntry/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BasketEntry basketEntry = db.BasketEntries.Find(id);
            if (basketEntry == null)
            {
                return HttpNotFound();
            }
            return View(basketEntry);
        }

        // POST: BasketEntry/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "UserID,ProductID,Quantity")] BasketEntry basketEntry)
        {
            if (ModelState.IsValid)
            {
                db.Entry(basketEntry).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(basketEntry);
        }

        // GET: BasketEntry/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BasketEntry basketEntry = db.BasketEntries.Find(id);
            if (basketEntry == null)
            {
                return HttpNotFound();
            }
            return View(basketEntry);
        }

        // POST: BasketEntry/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            BasketEntry basketEntry = db.BasketEntries.Find(id);
            db.BasketEntries.Remove(basketEntry);
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
