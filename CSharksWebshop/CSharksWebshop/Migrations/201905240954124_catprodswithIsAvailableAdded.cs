namespace CSharksWebshop.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class catprodswithIsAvailableAdded : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.CategoryProductSwitches", "IsChecked", c => c.Boolean(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.CategoryProductSwitches", "IsChecked");
        }
    }
}
