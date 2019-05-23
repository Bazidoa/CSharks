namespace CSharksWebshop.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ProductsRecreated : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Products",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        ProductName = c.String(nullable: false),
                        ProductPrice = c.Int(nullable: false),
                        IsAvailable = c.Boolean(nullable: false),
                        ProductDescription = c.String(),
                        InStock = c.Int(nullable: false),
                        UrlFriendlyName = c.String(nullable: false),
                        Manufacturer = c.String(),
                    })
                .PrimaryKey(t => t.ID);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Products");
        }
    }
}
