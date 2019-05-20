namespace CSharksWebshop.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ProductsPictureURLupdate : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Products", "Basket_ID", "dbo.Baskets");
            DropIndex("dbo.Products", new[] { "Basket_ID" });
            AddColumn("dbo.Products", "ProductPictureURL", c => c.String());
            DropColumn("dbo.Products", "Basket_ID");
            DropTable("dbo.Baskets");
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.Baskets",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        UserID = c.String(),
                    })
                .PrimaryKey(t => t.ID);
            
            AddColumn("dbo.Products", "Basket_ID", c => c.Int());
            DropColumn("dbo.Products", "ProductPictureURL");
            CreateIndex("dbo.Products", "Basket_ID");
            AddForeignKey("dbo.Products", "Basket_ID", "dbo.Baskets", "ID");
        }
    }
}
