namespace CSharksWebshop.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class UserDatasTableAddition : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.UserDatas", "LastName", c => c.String());
            AddColumn("dbo.UserDatas", "UserName", c => c.String());
            AddColumn("dbo.UserDatas", "Street", c => c.String());
            AddColumn("dbo.UserDatas", "City", c => c.String());
            AddColumn("dbo.UserDatas", "PostCode", c => c.String());
            AddColumn("dbo.UserDatas", "HouseNumber", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.UserDatas", "HouseNumber");
            DropColumn("dbo.UserDatas", "PostCode");
            DropColumn("dbo.UserDatas", "City");
            DropColumn("dbo.UserDatas", "Street");
            DropColumn("dbo.UserDatas", "UserName");
            DropColumn("dbo.UserDatas", "LastName");
        }
    }
}
