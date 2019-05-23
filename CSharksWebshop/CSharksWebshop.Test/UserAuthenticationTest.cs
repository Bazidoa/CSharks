using System;
using System.Collections.Generic;
using System.Security.Principal;
using System.Web;
using CSharksWebshop.Models;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace CSharksWebshop.Test
{
    [TestClass]
    public class UserAuthenticationTest
    {
        [TestMethod]
        public void TestWithValidUser()
        {
            //Arrange
            string expected = "TestUser1";
            IIdentity identity = new GenericIdentity(expected, "dummy");
            IPrincipal user = new GenericPrincipal(identity, new string[] { "admin", "customer"});
            string actual = null;
            //Act        
            actual = UserAuthentication.WhoAmI(user,null);
            //Assert
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void SessionTest()
        {
            //Arrange
            string expected = "TestUser2";
            string actual = "Dummy";
            IIdentity identity = new DummyIdentity();
            IPrincipal user = new GenericPrincipal(identity, new string[] { "admin", "customer" });

            DummySession session = new DummySession(expected);
            //Act        
            actual = UserAuthentication.WhoAmI(user, session);
            //Assert
            Assert.AreEqual(expected, actual);
        }

        //[TestMethod]
        //[ExpectedException(typeof(System.NullReferenceException))]
        //public void TestWithNoUser()
        //{
        //    //Arrange
        //    string expected = null;
        //    string actual = null;
        //    //Act        
        //    actual = UserAuthentication.WhoAmI(null, null);
        //    //Assert
        //    Assert.AreEqual(expected, actual);
        //}
    }
}