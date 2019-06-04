namespace CSharksWebshop.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class FKaddedToProduct_CategoryName : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Products", "Category_ID", c => c.Int(nullable: false));
            CreateIndex("dbo.Products", "Category_ID");
            AddForeignKey("dbo.Products", "Category_ID", "dbo.CategoryNames", "ID", cascadeDelete: true);
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Products", "Category_ID", "dbo.CategoryNames");
            DropIndex("dbo.Products", new[] { "Category_ID" });
            DropColumn("dbo.Products", "Category_ID");
        }
    }
}
