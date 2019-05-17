using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CSharksWebshop.DataModels;

namespace CSharksWebshop.Models
{
    public class Basket
    {

        public List<Product> BasketProducts { get;set; } = new List<Product>();
        public string UserID { get; set; }

        //ez kell az adatbázisnak, hogy tudjon Auto Incrementelni.
        public int ID { get; set; }

        public Basket()
        {

        }
        public Basket(string userId, List<Product> products)
        {

        }

        public void AddProduct(Product productToAdd)
        {
            this.BasketProducts.Add(productToAdd);
        }


        public void RemoveProduct(Product productToRemove)
        {
            foreach (Product prod in BasketProducts)
            {
                if (productToRemove.ID == prod.ID)
                {
                    BasketProducts.Remove(prod);
                    break;
                }
            }
        }

        public void EmptyBasket()
        {
            this.BasketProducts.Clear();
        }

        public int SumBasketPrice()
        {
            int sum = 0;
            foreach (Product product in BasketProducts)
            {
                sum += product.ProductPrice;
            }
            return sum;
        }

    }
}