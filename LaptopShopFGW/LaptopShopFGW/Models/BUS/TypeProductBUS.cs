using ShopOnlineConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LaptopShopFGW.Models.BUS
{
    public class TypeProductBUS
    {
        //-- khachhang
        public static IEnumerable<TypeProduct> List()
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<TypeProduct>("select * from TypeProduct  where TinhTrang = 0");
        }
        public static IEnumerable<Product> Details(String id)
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<Product>("select * from Product where TypeProductID = '" + id + "'");
        }
        //--Admin
        public static IEnumerable<TypeProduct> ListAdmin()
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<TypeProduct>("select * from TypeProduct");
        }
        public static void InsertLSP(TypeProduct lsp)
        {
            var db = new ShopOnlineConnectionDB();
            db.Insert(lsp);

        }
        public static TypeProduct DetailsAdmin(String id)
        {
            var db = new ShopOnlineConnectionDB();
            return db.SingleOrDefault<TypeProduct>("select * from TypeProduct where TypeProductID = '" + id + "'");
        }
        public static void EditLSP(String id, TypeProduct lsp)
        {
            var db = new ShopOnlineConnectionDB();
            db.Update(lsp,id);

        }
        public static void DeleteLSP(String id, TypeProduct lsp)
        {
            var db = new ShopOnlineConnectionDB();
            db.Update(lsp, id);

        }
    }
}