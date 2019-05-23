namespace CSharksWebshop.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class OrderEntriesTableAndModelCreated : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.OrderEntries",
                c => new
                    {
                        UserID = c.String(nullable: false, maxLength: 128),
                        ProductID = c.Int(nullable: false),
                        Quantity = c.Int(nullable: false),
                        OrderTime = c.DateTime(nullable: false),
                        ProductPrice = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.UserID, t.ProductID });
            
        }
        
        public override void Down()
        {
            DropTable("dbo.OrderEntries");
        }
    }
}
