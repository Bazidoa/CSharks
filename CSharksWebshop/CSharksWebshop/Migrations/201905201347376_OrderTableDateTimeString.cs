namespace CSharksWebshop.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class OrderTableDateTimeString : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Orders", "OrderTime", c => c.String());
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Orders", "OrderTime", c => c.DateTime(nullable: false));
        }
    }
}
