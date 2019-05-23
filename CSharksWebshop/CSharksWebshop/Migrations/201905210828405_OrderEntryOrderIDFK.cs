namespace CSharksWebshop.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class OrderEntryOrderIDFK : DbMigration
    {
        public override void Up()
        {
            DropPrimaryKey("dbo.Orders");
            AddColumn("dbo.OrderEntries", "Order_ID", c => c.Int(nullable: false));

            DropColumn("dbo.Orders", "ID");
            AddColumn("dbo.Orders", "OrderID", c => c.Int(nullable: false, identity: true));
            AddPrimaryKey("dbo.Orders", "OrderID");
            CreateIndex("dbo.OrderEntries", "Order_ID");
            AddForeignKey("dbo.OrderEntries", "Order_ID", "dbo.Orders", "OrderID", cascadeDelete: true);
        }
        
        public override void Down()
        {
            AddColumn("dbo.Orders", "ID", c => c.Int(nullable: false, identity: true));
            DropForeignKey("dbo.OrderEntries", "Order_ID", "dbo.Orders");
            DropIndex("dbo.OrderEntries", new[] { "Order_ID" });
            DropPrimaryKey("dbo.Orders");
            DropColumn("dbo.Orders", "OrderID");
            DropColumn("dbo.OrderEntries", "Order_ID");
            AddPrimaryKey("dbo.Orders", "ID");
        }
    }
}
