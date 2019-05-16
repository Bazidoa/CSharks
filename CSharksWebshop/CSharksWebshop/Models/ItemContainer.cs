using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CSharksWebshop.Models
{
    public abstract class ItemContainer
    {
        private string userId;
        private List<Product> products = new List<Product>();

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

        public ItemContainer(string userId, List<Product> products)
        {
            this.userId = userId;
            this.products = products;
        }

        public void RemoveContainerItem(int productId)
        {
            foreach (Product prod in Products)
            {
                if (productId == prod.ID)
                {
                    products.Remove(prod);
                    break;
                }
            }
        }

        public void EmptyContainer()
        {
            products.Clear();
        }

        public int SumItemsPrice()
        {
            int result = 0;
            foreach (Product prod in products)
            {
                result += prod.ProductPrice;
            }
            return result;
        }
    }
}