using CSharksWebshop.DataModels;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Security.Principal;
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

        public static string CanSee(Address address, IPrincipal user)
        {
            using (WebshopModel db = new WebshopModel())
            {
                string uID = user.Identity.GetUserId();
                List<Address> addresses = db.Addresses.Where(x => x.UserId == uID).ToList();
                UserData userData = db.UserDatas.Where(y => y.UserID == uID).FirstOrDefault();
                if (address.City == userData.City &&
                     address.HouseNumber.ToString() == userData.HouseNumber &&
                     address.ZipCode.ToString() == userData.PostCode &&
                     address.Street == userData.Street)
                {
                    return "display:none";
                }
                else
                {
                    return "";
                }
            }
        }
    }
}