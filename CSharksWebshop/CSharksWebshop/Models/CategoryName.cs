using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

namespace CSharksWebshop.Models
{
    public class CategoryName
    {
        //public int ID { get; set; }
        [Key]
        public string Category_Name { get; set; } = "Other";


        public bool CategoryNameValidator(string category)
        {
            return Regex.IsMatch(category, @"^[a-zA-Z]+$");
        }
    }

}