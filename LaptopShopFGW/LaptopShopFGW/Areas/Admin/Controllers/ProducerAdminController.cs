using LaptopShopFGW.Models.BUS;
using ShopOnlineConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LaptopShopFGW.Areas.Admin.Controllers
{
    public class ProducerAdminController : Controller
    {
        // GET: Admin/ProducerAdmin
        public ActionResult Index()
        {
            var ds = ProducerBUS.ListAdmin();
            return View(ds);
        }

        // GET: Admin/ProducerAdmin/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/ProducerAdmin/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/ProducerAdmin/Create
        [HttpPost]
        public ActionResult Create(Producer nsx)
        {
            try
            {
                // TODO: Add insert logic here
                ProducerBUS.AddProducer(nsx);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/ProducerAdmin/Edit/5
        public ActionResult Edit(String id)
        {
            return View(ProducerBUS.DetailsAdmin(id));
        }

        // POST: Admin/ProducerAdmin/Edit/5
        [HttpPost]
        public ActionResult Edit(String id, Producer nsx)
        {
            try
            {
                // TODO: Add update logic here
                ProducerBUS.UpdateProducer(id, nsx);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        

        // GET: Admin/ProducerAdmin/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/ProducerAdmin/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
