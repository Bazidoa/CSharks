namespace CSharksWebshop.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class BasketEntryDateTime : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.BasketEntries", "OrderTime", c => c.DateTime());
        }
        
        public override void Down()
        {
            DropColumn("dbo.BasketEntries", "OrderTime");
        }
    }
}
