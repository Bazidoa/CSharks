namespace CSharksWebshop.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class DateTImetoString : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.OrderEntries", "OrderTime", c => c.String());
        }
        
        public override void Down()
        {
            AlterColumn("dbo.OrderEntries", "OrderTime", c => c.DateTime(nullable: false));
        }
    }
}
