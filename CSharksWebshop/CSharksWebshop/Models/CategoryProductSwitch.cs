using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CSharksWebshop.Models
{
    public class CategoryProductSwitch
    {
        public int ID { get; set; }
        [ForeignKey("CategoryName")]
        public int Category_ID { get; set; }
        public CategoryName CategoryName { get; set; }

        [ForeignKey("Product")]
        public int Product_ID { get; set; }
        public Product Product { get; set; }
    }
}