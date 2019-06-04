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
using Microsoft.AspNet.Identity;

namespace CSharksWebshop.Controllers
{
    public class AddressesController : Controller
    {
        private WebshopModel db = new WebshopModel();

        // GET: Addresses
        public ActionResult Index()
        {
            return View(db.Addresses.ToList());
        }

        public ActionResult SetFirstAddress(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            string userId = User.Identity.GetUserId();
            Address actualAddress = db.Addresses.Where(x => x.ID == id).FirstOrDefault();
            UserData actualUserData = db.UserDatas.Where(y => y.UserID == userId).FirstOrDefault();
            if (actualUserData == null || actualAddress == null)
            {
                return HttpNotFound();
            }

            actualUserData.PostCode = actualAddress.ZipCode.ToString();
            actualUserData.City = actualAddress.City;
            actualUserData.Street = actualAddress.Street;
            actualUserData.HouseNumber = actualAddress.HouseNumber.ToString();

            db.SaveChanges();
            return RedirectToAction("Index", new { controller = "Manage", action = "Index" });
        }

        // GET: Addresses/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Address address = db.Addresses.Find(id);
            if (address == null)
            {
                return HttpNotFound();
            }
            return View(address);
        }

        // GET: Addresses/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Addresses/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,UserId,City,Street,HouseNumber,ZipCode")] Address address)
        {
            if (ModelState.IsValid)
            {
                db.Addresses.Add(address);
                db.SaveChanges();
                return RedirectToAction("Index", new { controller = "Manage", action = "Index" });
                //return RedirectToAction("Index");
            }

            return View(address);
        }

        // GET: Addresses/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Address address = db.Addresses.Find(id);
            if (address == null)
            {
                return HttpNotFound();
            }
            return View(address);
        }

        // POST: Addresses/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,UserId,City,Street,HouseNumber,ZipCode")] Address address)
        {
            if (ModelState.IsValid)
            {
                db.Entry(address).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index", new { controller = "Manage", action = "Index" });
                //return RedirectToAction("Index");
            }
            return View(address);
        }

        // GET: Addresses/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Address address = db.Addresses.Find(id);
            db.Addresses.Remove(address);
            db.SaveChanges();
            if (address == null)
            {
                return HttpNotFound();
            }
            return RedirectToAction("Index", new { controller = "Manage", action = "Index" });
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
