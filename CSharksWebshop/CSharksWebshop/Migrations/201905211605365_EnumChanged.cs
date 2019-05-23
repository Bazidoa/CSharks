namespace CSharksWebshop.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class EnumChanged : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Orders", "OrderStatus", c => c.String());
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Orders", "OrderStatus", c => c.Int(nullable: false));
        }
    }
}
