using LaptopShopFGW.Models.BUS;
using ShopOnlineConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LaptopShopFGW.Areas.Admin.Controllers
{
    public class TypeProductAdminController : Controller
    {
        // GET: Admin/ProductTypeAdmin
        public ActionResult Index()
        {
            var db = TypeProductBUS.ListAdmin();
            return View(db);
        }

        // GET: Admin/ProductTypeAdmin/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/ProductTypeAdmin/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/ProductTypeAdmin/Create
        [HttpPost]
        public ActionResult Create(TypeProduct lsp)
        {
            try
            {
                // TODO: Add insert logic here
                TypeProductBUS.InsertLSP(lsp);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/ProductTypeAdmin/Edit/5
        public ActionResult Edit(String id)
        {
            var db = TypeProductBUS.DetailsAdmin(id);
            return View(db);
        }

        // POST: Admin/ProductTypeAdmin/Edit/5
        [HttpPost]
        public ActionResult Edit(String id, TypeProduct lsp)
        {
            try
            {
                // TODO: Add update logic here
                TypeProductBUS.EditLSP(id, lsp);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/ProductTypeAdmin/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/ProductTypeAdmin/Delete/5
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

        // GET: Admin/ProductTypeAdmin/XoaTamThoi/5
        public ActionResult XoaTamThoi(String id)
        {
            var db = TypeProductBUS.DetailsAdmin(id);
            return View(db);
        }

        // POST: Admin/ProductTypeAdmin/Delete/5
        [HttpPost]
        public ActionResult XoaTamThoi(String id, TypeProduct lsp)
        {
            try
            {
                // TODO: Add delete logic here
                lsp.TinhTrang = "1";
                TypeProductBUS.EditLSP(id, lsp);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
