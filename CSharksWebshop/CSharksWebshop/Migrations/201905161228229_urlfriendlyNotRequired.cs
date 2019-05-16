namespace CSharksWebshop.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class urlfriendlyNotRequired : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Products", "UrlFriendlyName", c => c.String());
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Products", "UrlFriendlyName", c => c.String(nullable: false));
        }
    }
}
