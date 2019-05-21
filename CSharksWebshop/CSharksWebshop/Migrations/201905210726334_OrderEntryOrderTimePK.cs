namespace CSharksWebshop.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class OrderEntryOrderTimePK : DbMigration
    {
        public override void Up()
        {
            DropPrimaryKey("dbo.OrderEntries");
            AlterColumn("dbo.OrderEntries", "OrderTime", c => c.String(nullable: false, maxLength: 128));
            AddPrimaryKey("dbo.OrderEntries", new[] { "UserID", "ProductID", "OrderTime" });
        }
        
        public override void Down()
        {
            DropPrimaryKey("dbo.OrderEntries");
            AlterColumn("dbo.OrderEntries", "OrderTime", c => c.String());
            AddPrimaryKey("dbo.OrderEntries", new[] { "UserID", "ProductID" });
        }
    }
}
