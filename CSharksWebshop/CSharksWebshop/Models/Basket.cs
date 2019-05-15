using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CSharksWebshop.Models
{
    public class Basket : ItemContainer
    {

        public List<Product> basketProducts = new List<Product>();
        public string UserID { get; set; }


        public void AddProduct(Product productToAdd)
        {
            basketProducts.Add(productToAdd);
        }

        //Ezeket a metódusokat örökli az ItemContainer abstract osztályból
       /* 
        public void RemoveProduct(Product productToRemove)
        {

        }

        public void EmptyBasket()
        {
            this.basketProducts = new List<Product>();
        }

        public int SumBasketPrice()
        {
            int sum = 0;
            foreach (Product product in basketProducts)
            {
                sum += product.ProductPrice;
            }
            return sum;
        }
        */
    }
}