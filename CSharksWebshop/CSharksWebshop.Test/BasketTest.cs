using System;
using System.Collections.Generic;
using System.Data.Entity;
using CSharksWebshop.DataModels;
using CSharksWebshop.Models;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace CSharksWebshop.Test
{
    [TestClass]
    public class BasketTest
    {
        /*[TestMethod]
        [ExpectedException(typeof(MissingProductException))]
        public void RemoveFromEmptyBasketTest()
        {
            Basket basket = new Basket();
            Product product = new Product();
            basket.RemoveProduct(product);
        }

        [TestMethod]
        public void AddProduct()
        {
            List<Product> products = new List<Product>();
            Basket basket = new Basket("625", products);
            basket.AddProduct(new Product("Búgócsiga", 4000, true, "leírás", 3, "Búgócsiga Kft"));
            basket.AddProduct(new Product("Commodore64", 10000, true, "leírás", 10, "Comodore"));
            Assert.AreEqual(2, basket.BasketProducts.Count);
        }

        [TestMethod]
        public void RemoveProductTest()
        {
            List<Product> products = new List<Product>();
            Basket basket = new Basket("625", products);

            Product product1 = new Product("Búgócsiga", 4000, true, "leírás", 3, "Búgócsiga Kft");
            Product product2 = new Product("Commodore64", 10000, true, "leírás", 10, "Comodore");
            Product product3 = new Product("Kiskacsa", 500, true, "leírás", 5, "Kacsa Kft");
            basket.AddProduct(product1);
            basket.AddProduct(product2);
            basket.AddProduct(product3);
            basket.RemoveProduct(product2);

            Assert.AreEqual(2, basket.BasketProducts.Count);
        }

        [TestMethod]
        public void EmptyBasket()
        {
            List<Product> products = new List<Product>();
            Basket basket = new Basket("625", products);

            basket.AddProduct(new Product("Búgócsiga", 4000, true, "leírás", 3, "Búgócsiga Kft"));
            basket.AddProduct(new Product("Commodore64", 10000, true, "leírás", 10, "Comodore"));
            basket.AddProduct(new Product("Commodore64", 1500, true, "leírás", 15, "Moncsi Kft"));
            basket.AddProduct(new Product("Kiskacsa", 500, true, "leírás", 5, "Kacsa Kft"));
            basket.EmptyBasket();

            Assert.AreEqual(0, basket.BasketProducts.Count);
        }

        [TestMethod]
        public void SumBasketPrice()
        {
            List<Product> products = new List<Product>();
            Basket basket = new Basket("625", products);

            basket.AddProduct(new Product("Búgócsiga", 4000, true, "leírás", 3, "Búgócsiga Kft"));
            basket.AddProduct(new Product("Commodore64", 10000, true, "leírás", 10, "Comodore"));
            basket.AddProduct(new Product("Kiskacsa", 500, true, "leírás", 5, "Kacsa Kft"));

            Assert.AreEqual(14500, basket.SumBasketPrice());
        }*/


        //Ezt még rövidíteni akarom, így nem tetszik!
        //public BasketTest()
        //{
        //    List<Product> products = new List<Product>();
        //    Product product1 = new Product("Búgócsiga", 4000, true, "leírás", 3, "Búgócsiga Kft");
        //    Product product2 = new Product("Commodore64", 10000, true, "leírás", 10, "Comodore");
        //    Product product3 = new Product("Commodore64", 1500, true, "leírás", 15, "Moncsi Kft");
        //    products.Add(product1);
        //    products.Add(product2);
        //    products.Add(product3);

        //    Basket basket = new Basket("625", products);

        //    //!!!!!!!!!!!!!!!!!!!!
        //    //WebshopModel db = new WebshopModel();
        //    //DbSet<Product> ProductsList = db.Products;

        //    //List<Product> products = new List<Product>();
        //    //foreach (Product item in ProductsList)
        //    //{
        //    //    products.Add(item);
        //    //}
        //    //basket = new Basket("15", products);
        //}
    }
}
