using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CSharksWebshop.Models
{
    public class Address
    {
        [Key]
        public int ID { get; set; }
        public string UserId { get; set; }
        public string City { get; set; }
        public string Street { get; set; }
        public int HouseNumber { get; set; }
        public int ZipCode { get; set; }

        public Address()
        {

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