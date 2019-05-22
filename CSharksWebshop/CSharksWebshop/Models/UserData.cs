using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CSharksWebshop.Models
{
    public class UserData
    {
        [Key]
        public string UserID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string UserName { get; set; }
        public string Street { get; set; }
        public string City { get; set; }
        public string PostCode { get; set; }
        public string HouseNumber { get; set; }
        public string UserEmail { get; set; }


         //paraméterként megkapja az összes ordert egy IEnumerable-ben
         /*public List<Order> ShowMyOrders(IEnumerable<Order> orders)
         {
             List<Order> userOrders = new List<Order>();
             foreach (Order order in orders)
             {
                 if (order.UserId == this.UserID)
                 {
                     userOrders.Add(order);
                 }
             }
             return userOrders;
             //ahhoz ezt meg lehessen csinálni valami keresztül össze kell kapcsolni a userrel majd az orderekkel
             //userID adattag ide?
         }
         */
    }
}