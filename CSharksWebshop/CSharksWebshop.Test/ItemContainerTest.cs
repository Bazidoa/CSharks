using System;
using System.Collections.Generic;
using System.Data.Entity;
using CSharksWebshop.DataModels;
using CSharksWebshop.Models;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace CSharksWebshop.Test
{
    [TestClass]
    public class ItemContainerTest
    {
        List<Product> products;
        ItemContainer items;
        public ItemContainerTest()
        {
            products = new List<Product>();
            items = new ItemContainer("625", products);

            products.Add(new Product(1, "Búgócsiga", 4000, true, "leírás", 3, "Búgócsiga Kft"));
            products.Add(new Product(2, "Commodore64", 10000, true, "leírás", 10, "Comodore"));
            products.Add(new Product(3, "Kiskacsa", 500, true, "leírás", 5, "Kacsa Kft"));
        }
        [TestMethod]
        public void TestRemoveContainerItem()
        {
            items.RemoveContainerItem(2);
            Assert.AreEqual(2, items.Products.Count);
        }

        [TestMethod]
        public void TestEmptyContainer()
        {
            items.EmptyContainer();
            Assert.AreEqual(0, items.Products.Count);
        }

        [TestMethod]
        public void TestSumItemsPrice()
        {
            Assert.AreEqual(14500, items.SumItemsPrice());
        }


      
    }
}
