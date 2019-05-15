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
        private string costumerName;
        private DateTime orderDate;
        private Address adress;
        private string costumerEmail;

        public string CostumerEmail
        {
            get { return costumerEmail; }
            set { costumerEmail = value; }
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

        public string CostumerName
        {
            get { return costumerName; }
            set { costumerName = value; }
        }

        public Enum OrderStatus
        {
            get { return orderStatus; }
            set { orderStatus = value; }
        }

        public Order(Enum orderStatus, string costumerName, Address adress, string costumerEmail)
        {
            this.orderStatus = orderStatus;
            this.costumerName = costumerEmail;
            this.adress = adress;
            this.costumerEmail = costumerEmail;
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