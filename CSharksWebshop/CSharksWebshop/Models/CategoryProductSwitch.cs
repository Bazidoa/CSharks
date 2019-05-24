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

        public bool IsChecked { get; set; }

        [ForeignKey("Product")]
        public int Product_ID { get; set; }
        public Product Product { get; set; }

        public CategoryProductSwitch()
        {

        }
        public CategoryProductSwitch(int Category_ID, int Product_ID)
        {
            this.Category_ID = Category_ID;
            this.Product_ID = Product_ID;
        }
    }
}