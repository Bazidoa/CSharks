using System;
using CSharksWebshop.Models;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace CSharksWebshop.Test
{
    [TestClass]
    public class CategoryNameTest
    {
        [TestMethod]
        public void TestCategoryNameValidator()
        {
            string category = "Games";
            CategoryName categName = new CategoryName();
            Assert.IsTrue(categName.CategoryNameValidator(category));
        }

        [TestMethod]
        public void TestCategoryNameValidatorFalse()
        {
            string category = "Játé kok";
            CategoryName categName = new CategoryName();
            Assert.IsFalse(categName.CategoryNameValidator(category));
        }

        [TestMethod]
        public void TestCategoryNameValidatorEmpty()
        {
            string category = String.Empty;
            CategoryName categName = new CategoryName();
            Assert.IsFalse(categName.CategoryNameValidator(category));
        }
    }
}
