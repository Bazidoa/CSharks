namespace CSharksWebshop.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class OrderTableCreated : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Orders",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        OrderTime = c.DateTime(nullable: false),
                        UserID = c.String(),
                        FirstName = c.String(),
                        LastName = c.String(),
                        PostCode = c.String(),
                        Street = c.String(),
                        City = c.String(),
                        HouseNumber = c.String(),
                        UserEmail = c.String(),
                        OrderStatus = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.ID);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Orders");
        }
    }
}
