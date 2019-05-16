using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Web;

namespace CSharksWebshop.Models
{
    public class Product
    {
        //[Key]
        //[DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID { get; set; }
        [Required]
        public string ProductName { get; set; }
        //public string ProductCategory { get; set; } Nem kell mert majd Category-k lesznek és ott felsoroljuk a ProductID-kat
        public int ProductPrice { get; set; }
        public bool IsAvailable { get; set; }
        public string ProductDescription { get; set; }
        public int InStock { get; set; }
        [Required]
        public string UrlFriendlyName { get; set; }

        public string Manufacturer { get; set; }

        public Product()
        {

        }

        public Product(string ProductName, int ProductPrice, bool IsAvailable, string ProductDescription, int InStock, string Manufacturer)
        {
            this.ProductName = ProductName;
            this.ProductPrice = ProductPrice;
            this.IsAvailable = IsAvailable;
            this.ProductDescription = ProductDescription;
            this.InStock = InStock;
            this.Manufacturer = Manufacturer;
            this.UrlFriendlyName = UrlFriendlyNameConverter(ProductName);
        }

        public string UrlFriendlyNameConverter(string name)
        {
            name = name.ToLower();
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < name.Length; i++)
            {

                switch (name[i])
                {
                    case 'á':
                    case 'ä':
                        sb.Append('a');
                        break;
                    case 'é':
                        sb.Append('e');
                        break;
                    case 'ó':
                    case 'ö':
                    case 'ő':
                        sb.Append('o');
                        break;
                    case 'ú':
                    case 'ü':
                    case 'ű':
                        sb.Append('u');
                        break;
                    case 'í':
                        sb.Append('i');
                        break;
                    case ' ':
                        sb.Append('-');
                        break;
                    default:
                        sb.Append(name[i]);
                        break;
                }
            }
            return sb.ToString();
        }
    }
}