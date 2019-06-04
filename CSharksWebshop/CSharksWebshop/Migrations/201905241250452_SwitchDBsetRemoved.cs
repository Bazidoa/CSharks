namespace CSharksWebshop.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class SwitchDBsetRemoved : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.CategoryProductSwitches", "Category_ID", "dbo.CategoryNames");
            DropForeignKey("dbo.CategoryProductSwitches", "Product_ID", "dbo.Products");
            DropIndex("dbo.CategoryProductSwitches", new[] { "Category_ID" });
            DropIndex("dbo.CategoryProductSwitches", new[] { "Product_ID" });
            DropTable("dbo.CategoryProductSwitches");
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.CategoryProductSwitches",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        Category_ID = c.Int(nullable: false),
                        IsChecked = c.Boolean(nullable: false),
                        Product_ID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.ID);
            
            CreateIndex("dbo.CategoryProductSwitches", "Product_ID");
            CreateIndex("dbo.CategoryProductSwitches", "Category_ID");
            AddForeignKey("dbo.CategoryProductSwitches", "Product_ID", "dbo.Products", "ID", cascadeDelete: true);
            AddForeignKey("dbo.CategoryProductSwitches", "Category_ID", "dbo.CategoryNames", "ID", cascadeDelete: true);
        }
    }
}
