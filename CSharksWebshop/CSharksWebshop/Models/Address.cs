using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CSharksWebshop.Models
{
    public class Address
    {
        private string city;
        private int zipCode;
        private string street;
        private int houseNumber;

        public int HouseNumber
        {
            get { return houseNumber; }
            set { houseNumber = value; }
        }

        public string Street
        {
            get { return street; }
            set { street = value; }
        }

        public int ZipCode
        {
            get { return zipCode; }
            set { zipCode = value; }
        }

        public string City
        {
            get { return city; }
            set { city = value; }
        }

        public Address(string city, int zipCode, string street, int houseNumber)
        {
            this.City = city;
            this.ZipCode = zipCode;
            this.Street = street;
            this.HouseNumber = houseNumber;
        }
    }
}