using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CSharksWebshop.Models
{
    public class Product
    {
        public string ID { get; set; }
        public string ProductName { get; set; }
        //public string ProductCategory { get; set; } Nem kell mert majd Category-k lesznek és ott felsoroljuk a ProductID-kat
        public int ProductPrice { get; set; }
        public bool IsAvailable { get; set; }
        public string ProductDescription { get; set; }
        public int InStock { get; set; }

    }
}