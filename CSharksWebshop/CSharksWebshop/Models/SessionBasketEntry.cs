using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CSharksWebshop.Models
{
    public class SessionBasketEntry
    {
        public string ID { get; set; }
        public int ProductID { get; set; }
        public int Quantity { get; set; }
    }
}