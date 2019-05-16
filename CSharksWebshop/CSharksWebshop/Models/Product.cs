using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CSharksWebshop.Models
{
    public class Product
    {
        //[Key]
        //[DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID { get; set; }
        [Required]
        public string ProductName { get; set; }
        //public string ProductCategory { get; set; } Nem kell mert majd Category-k lesznek és ott felsoroljuk a ProductID-kat
        public int ProductPrice { get; set; }
        public bool IsAvailable { get; set; }
        public string ProductDescription { get; set; }
        public int InStock { get; set; }
        [Required]
        public string UrlFriendlyName { get; set; }
        
        public string Manufacturer { get; set; }
    }
}