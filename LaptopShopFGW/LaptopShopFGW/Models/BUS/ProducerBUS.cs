using ShopOnlineConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LaptopShopFGW.Models.BUS
{
    public class ProducerBUS
    {
        //--Khách
        public static IEnumerable<Producer> List()
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<Producer>("select * from Producer where TinhTrang =0");
        }
        
        public static IEnumerable<Product> Details(String id)
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<Product>("select * from Product where ProducerID = '"+id+"'");
        }
        //--Admin
        public static void AddProducer(Producer nsx)
        {
            var db = new ShopOnlineConnectionDB();
            db.Insert(nsx);
        }
        public static IEnumerable<Producer> ListAdmin()
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<Producer>("select * from Producer");
        }
        public static Producer DetailsAdmin(String id)
        {
            var db = new ShopOnlineConnectionDB();
            return db.SingleOrDefault<Producer>("select * from Producer where ProducerID = '" + id + "'");
        }

        public static void UpdateProducer(String id , Producer nsx)
        {
            var db = new ShopOnlineConnectionDB();
            db.Update(nsx, id);
        }
        
    }
}