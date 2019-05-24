namespace CSharksWebshop.DataModels
{
    using CSharksWebshop.Models;
    using System;
    using System.Data.Entity;
    using System.Linq;

    public class WebshopModel : DbContext
    {
        // Your context has been configured to use a 'WebshopModel' connection string from your application's 
        // configuration file (App.config or Web.config). By default, this connection string targets the 
        // 'CSharksWebshop.DataModels.WebshopModel' database on your LocalDb instance. 
        // 
        // If you wish to target a different database and/or database provider, modify the 'WebshopModel' 
        // connection string in the application configuration file.
        public WebshopModel()
            : base("name=WebshopModel")
        {
        }

        // Add a DbSet for each entity type that you want to include in your model. For more information 
        // on configuring and using a Code First model, see http://go.microsoft.com/fwlink/?LinkId=390109.

        // public virtual DbSet<MyEntity> MyEntities { get; set; }
        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<Address> Addresses { get; set; }
        public virtual DbSet<Order> Orders { get; set; }
        public virtual DbSet<OrderEntry> OrderEntries { get; set; }
        //public virtual DbSet<Basket> Baskets { get; set; }
        public virtual DbSet<BasketEntry> BasketEntries { get; set; }
        public virtual DbSet<UserData> UserDatas { get; set; }

    }

    //public class MyEntity
    //{
    //    public int Id { get; set; }
    //    public string Name { get; set; }
    //}
}