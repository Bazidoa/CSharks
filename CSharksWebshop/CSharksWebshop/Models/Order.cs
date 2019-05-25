using CSharksWebshop.DataModels;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Security.Principal;
using System.Web;

namespace CSharksWebshop.Models
{
    public enum OrderStatusEnum { NOTCREATED,ACTIVE, DELETED, SHIPPING, SHIPPED }

    public class Order
    {
        [Key]
        public int OrderID { get; set; }
        public string OrderTime { get; set; }
        public string UserID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string PostCode { get; set; }
        public string Street { get; set; }
        public string City { get; set; }
        public string HouseNumber { get; set; }
        public string UserEmail { get; set; }
        public string OrderStatus { get; set; } = OrderStatusEnum.NOTCREATED.ToString();



        //public void ConfirmOrder()
        //{
        //    OrderStatusEnum order = (OrderStatusEnum)OrderStatus;

        //    if (order != OrderStatusEnum.DELETED)
        //    {
        //        if (order == OrderStatusEnum.ACTIVE)
        //        {
        //            OrderStatus = (int)OrderStatusEnum.SHIPPING;
        //        }else if (order == OrderStatusEnum.SHIPPING)
        //        {
        //            OrderStatus = (int)OrderStatusEnum.SHIPPED;
        //        }
        //    }
        //}
        //public void CancelOrder()
        //{
        //    OrderStatus = (int)OrderStatusEnum.DELETED;
        //}
        //public Address ChangeAddress()
        //{

        //}
        public static List<Address> UserAddresses(IPrincipal user)
        {
            using (WebshopModel db = new WebshopModel())
            {
                string userID = user.Identity.GetUserId();
                List<Address> addresses = db.Addresses.Where(x => x.UserId == userID).ToList();
                return addresses;
            }
        }
    }
}