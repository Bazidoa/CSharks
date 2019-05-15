using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CSharksWebshop.Models
{
    public class UserData
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string UserName { get; set; }
        public List<Address> UserAddresses { get; set; }

        public UserData(string fname, string lname, string uname, Address address)
        {
            this.FirstName = fname;
            this.LastName = lname;
            this.UserName = uname;
            this.UserAddresses.Add(address);
        }

        public List<Order> ShowMyOrders()
        {
            //ahhoz ezt meg lehessen csinálni valami keresztül össze kell kapcsolni a userrel majd az orderekkel
            //userID adattag ide?
        }
    }
}