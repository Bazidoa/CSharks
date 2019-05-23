using System;
using CSharksWebshop.Models;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace CSharksWebshop.Test
{
    [TestClass]
    public class ProductTest
    {
        [TestMethod]
        public void TestProduct()
        {
            Product product = new Product("Hordozható Rádió", 15000, true, "leírás", 12, "Samsung");

            Assert.AreEqual("Hordozható Rádió", product.ProductName);
            Assert.AreEqual(15000, product.ProductPrice);
            Assert.AreEqual(true, product.IsAvailable);
            Assert.AreEqual("leírás", product.ProductDescription);
            Assert.AreEqual(12, product.InStock);
            Assert.AreEqual("Samsung", product.Manufacturer);
        }
        [TestMethod]
        public void TestUrlFriendlyNameCorrect()
        {
            Product product = new Product("Hordozható Rádió", 15000, true, "leírás", 12, "Samsung");
            Assert.AreEqual("hordozhato-radio", product.UrlFriendlyName);
        }
        [TestMethod]
        public void TestUrlFriendlyNameHUNVowels()
        {
            Product product = new Product("Árvíztűrő tükörfúrógép", 15000, true, "leírás", 12, "Samsung");
            Assert.AreEqual("arvizturo-tukorfurogep", product.UrlFriendlyName);
        }
    }
}
