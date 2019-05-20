using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CSharksWebshop.Models
{
    public class UserData
    {
        /*public string FirstName { get; set; }
        public string LastName { get; set; }
        public string UserName { get; set; }
        public List<Address> UserAddresses { get; set; }

        // Ha jól gondolom akkor egy UserID-vel össze kéne kötni ezt meg a User-t és akkor meg lehetne találni az Orderjeit
        public string UserID { get; set; }

        public UserData(string fname, string lname, string uname, Address address)
        {
            this.FirstName = fname;
            this.LastName = lname;
            this.UserName = uname;
            this.UserAddresses.Add(address);
        }

        //paraméterként megkapja az összes ordert egy IEnumerable-ben
        public List<Order> ShowMyOrders(IEnumerable<Order> orders)
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