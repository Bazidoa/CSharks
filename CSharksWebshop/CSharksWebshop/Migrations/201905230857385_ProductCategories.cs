namespace CSharksWebshop.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ProductCategories : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.CategoryNames",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        Category_Name = c.String(),
                    })
                .PrimaryKey(t => t.ID);
            
            CreateTable(
                "dbo.CategoryProductSwitches",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        Category_ID = c.Int(nullable: false),
                        Product_ID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.ID)
                .ForeignKey("dbo.CategoryNames", t => t.Category_ID, cascadeDelete: true)
                .ForeignKey("dbo.Products", t => t.Product_ID, cascadeDelete: true)
                .Index(t => t.Category_ID)
                .Index(t => t.Product_ID);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.CategoryProductSwitches", "Product_ID", "dbo.Products");
            DropForeignKey("dbo.CategoryProductSwitches", "Category_ID", "dbo.CategoryNames");
            DropIndex("dbo.CategoryProductSwitches", new[] { "Product_ID" });
            DropIndex("dbo.CategoryProductSwitches", new[] { "Category_ID" });
            DropTable("dbo.CategoryProductSwitches");
            DropTable("dbo.CategoryNames");
        }
    }
}
