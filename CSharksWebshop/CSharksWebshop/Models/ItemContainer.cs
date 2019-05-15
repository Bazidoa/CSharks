using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CSharksWebshop.Models
{
    public abstract class ItemContainer
    {
        private string userId;
        private List<Product> products;

        public List<Product> Products
        {
            get { return products; }
            set { products = value; }
        }

        public string UserId
        {
            get { return userId; }
            set { userId = value; }
        }

        public void RemoveContainerItem()
        {

        }
        public void EmptyContainer()
        {

        }
        public int SumItemsPrice()
        {
            return 1;
        }
    }
}