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
        //Guid = Global Unique Identifier
        public int ID { get; set; }

        private string productName;
        [Required]
        public string ProductName
        {
            get
            {
                return productName;
            }
            set
            {
                this.productName = value;
                this.UrlFriendlyName = UrlFriendlyNameConverter(value);
            }
        }
        //public string ProductCategory { get; set; } Nem kell mert majd Category-k lesznek és ott felsoroljuk a ProductID-kat
        public int ProductPrice { get; set; }
        public bool IsAvailable { get; set; }
        public string ProductDescription { get; set; }
        public int InStock { get; set; }
        //[Required]
        public string UrlFriendlyName { get; set; }

        [ForeignKey("CategoryName")]
        public string Category_Name { get; set; }
        public CategoryName CategoryName{ get; set; }
        

        public string Manufacturer { get; set; }
        private string productPictureURL;
        public string ProductPictureURL
        {
            get { return productPictureURL; }
            set
            {
                productPictureURL = value;
            }
        }

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
        public Product(int ID, string ProductName, int ProductPrice, bool IsAvailable, string ProductDescription, int InStock, string Manufacturer) 
            : this(ProductName,ProductPrice,IsAvailable,ProductDescription,InStock,Manufacturer)
        {
            this.ID = ID;
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