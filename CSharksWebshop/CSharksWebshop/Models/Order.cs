using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CSharksWebshop.Models
{
    public enum OrderStatusEnum { ACTIVE = 1, DELETED, SHIPPING, SHIPPED }

    public class Order : ItemContainer
    {
        private Enum orderStatus;
        private string customerName;
        private DateTime orderDate;
        private Address adress;
        private string customerEmail;

        public string CustomerEmail
        {
            get { return customerEmail; }
            set { customerEmail = value; }
        }

        public Address Adress
        {
            get { return adress; }
            set { adress = value; }
        }

        public DateTime OrderDate
        {
            get { return orderDate; }
            set { orderDate = value; }
        }

        public string CustomerName
        {
            get { return customerName; }
            set { customerName = value; }
        }

        public Enum OrderStatus
        {
            get { return orderStatus; }
            set { orderStatus = value; }
        }

        public Order(string userId, List<Product> products,string customerName, Address adress, string customerEmail) : this(userId, products, OrderStatusEnum.ACTIVE, customerName, adress, customerEmail)
        {
        }

        public Order(string userId, List<Product> products, Enum orderStatus, string customerName, Address adress, string customerEmail) : base(userId, products)
        {
            this.orderStatus = OrderStatus;
            this.customerName = customerName;
            this.adress = adress;
            this.customerEmail = customerEmail;
            this.OrderDate = DateTime.Now;
        }
        public void ConfirmOrder()
        {
            if ((OrderStatusEnum)OrderStatus != OrderStatusEnum.DELETED)
            {
                if ((OrderStatusEnum)OrderStatus == OrderStatusEnum.ACTIVE)
                {
                    OrderStatus = OrderStatusEnum.SHIPPING;
                }else if ((OrderStatusEnum)OrderStatus == OrderStatusEnum.SHIPPING)
                {
                    OrderStatus = OrderStatusEnum.SHIPPED;
                }
            }
        }
        public void CancelOrder()
        {
            OrderStatus = OrderStatusEnum.DELETED;
        }
        //public Address ChangeAddress()
        //{

        //}
    }
}