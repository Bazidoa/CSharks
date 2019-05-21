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
        // van ID, nincs ID, van session, nincs session

        //private class FakeSessionState : HttpSessionStateBase
        //{
        //    Dictionary<string, object> items = new Dictionary<string, object>();
        //    public override object this[string name]
        //    {
        //        get { return items.ContainsKey(name) ? items[name] : null; }
        //        set { items[name] = value;  }
        //    }
        //}

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
        [ExpectedException(typeof(System.NullReferenceException))]
        public void TestWithNoUser()
        {
            //Arrange
            string expected = null;
            string actual = null;
            //Act        
            actual = UserAuthentication.WhoAmI(null, null);
            //Assert
            Assert.AreEqual(expected, actual);
        }

        //[TestMethod]
        //public void Test()
        //{
        //    var httpRequest = new HttpRequest("", "http://www.monsite.com", "");
        //    var httpContext = new HttpContext(httpRequest, new HttpResponse(null));
        //    //Arrange
        //    string expected = "TestUser2";
        //    IIdentity identity = new GenericIdentity(expected, "dummy");
        //    HttpSessionStateBase session = new HttpSessionStateWrapper(HttpContext.Current.Session);
        //    session["dummy"] = "Dummy";
        //    var costumerId = (string)HttpContext.Current.Session["CustomerId"];
        //    IPrincipal user = new GenericPrincipal(identity, new string[] { "admin", "customer" });
        //    string actual = "Dummy";
        //    //Act        
        //    actual = UserAuthentication.WhoAmI(user, session);
        //    //Assert
        //    Assert.AreEqual(expected, actual);
        //}
    }
}