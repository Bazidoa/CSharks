using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using CSharksWebshop.Models;

namespace CSharksWebshop.Test
{
    [TestClass]
    public class AddressTest
    {
        [TestMethod]
        public void TestAddressConstructor()
        {
            Address address = new Address("Budapest", 1117, "Budafoki út", 56);
            Assert.AreEqual("Budapest", address.City);
            Assert.AreEqual(1117, address.ZipCode);
            Assert.AreEqual("Budafoki út", address.Street);
            Assert.AreEqual(56, address.HouseNumber);
        }

        //[TestMethod]
        //[ExpectedException(typeof(NullReferenceException))]
        //public void TestAddressWrongConstructor()
        //{
            
        //}
    }
}
