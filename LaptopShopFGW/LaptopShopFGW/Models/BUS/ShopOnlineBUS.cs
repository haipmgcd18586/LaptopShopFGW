using ShopOnlineConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LaptopShopFGW.Models.BUS
{
    public class ShopOnlineBUS
    {
        public static IEnumerable<Product> List()
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<Product>("select * from Product where TinhTrang = 0");
        }

        public static Product Details(String a)
        {
            var db = new ShopOnlineConnectionDB();
            return db.SingleOrDefault<Product>("select * from Product where ProductID = @0", a);
        }
    }
}