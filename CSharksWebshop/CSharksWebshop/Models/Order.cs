using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CSharksWebshop.Models
{
    public enum OrderStatus { ACTIVE = 1, DELETED, SHIPPING, SHIPPED }

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

        public Order(string costumerName, Address adress, string costumerEmail)
        {

        }

        public Order( string customerName, Address adress, string customerEmail, Enum orderStatus)
        {
            this.orderStatus = orderStatus;
            this.customerName = customerName;
            this.adress = adress;
            this.customerEmail = customerEmail;
            this.OrderDate = DateTime.Now;
        }
        public void ConfirmOrder()
        {

        }
        public void CancelOrder()
        {

        }
        //public Address ChangeAddress()
        //{

        //}
    }
}