namespace CSharksWebshop.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class removeBasket : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Products", "Basket_ID", "dbo.Baskets");
            DropIndex("dbo.Products", new[] { "Basket_ID" });
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
                        UserId = c.String(),
                    })
                .PrimaryKey(t => t.ID);
            
            AddColumn("dbo.Products", "Basket_ID", c => c.Int());
            CreateIndex("dbo.Products", "Basket_ID");
            AddForeignKey("dbo.Products", "Basket_ID", "dbo.Baskets", "ID");
        }
    }
}
