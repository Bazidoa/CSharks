﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CSharksWebshop.Models
{
    public class OrderEntry
    {
        [Key]
        [Column(Order = 1)]
        public string UserID { get; set; }
        [Key]
        [Column(Order = 2)]
        public int ProductID { get; set; }

        public int Quantity { get; set; }

        public DateTime OrderTime { get; set; }

        public int ProductPrice { get; set; }

        public OrderEntry(string UserID, int ProductID)
        {
            this.UserID = UserID;
            this.ProductID = ProductID;
            
        }

        public OrderEntry()
        {

        }
    }
}