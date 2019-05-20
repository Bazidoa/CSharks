using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CSharksWebshop.Models
{
    public enum OrderStatusEnum { ACTIVE = 1, DELETED, SHIPPING, SHIPPED }

    public class Order
    {

        public int ID { get; set; }
        public DateTime OrderTime { get; set; }
        public string UserID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string PostCode { get; set; }
        public string Street { get; set; }
        public string City { get; set; }
        public string HouseNumber { get; set; }
        public string UserEmail { get; set; }
        public int OrderStatus { get; set; } = 1;



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
    }
}