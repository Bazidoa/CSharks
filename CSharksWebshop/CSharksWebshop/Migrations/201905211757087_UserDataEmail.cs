namespace CSharksWebshop.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class UserDataEmail : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.UserDatas", "UserEmail", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.UserDatas", "UserEmail");
        }
    }
}
