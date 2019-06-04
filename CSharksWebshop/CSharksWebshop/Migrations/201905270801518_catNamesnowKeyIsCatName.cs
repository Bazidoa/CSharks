namespace CSharksWebshop.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class catNamesnowKeyIsCatName : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Products", "Category_ID", "dbo.CategoryNames");
            DropIndex("dbo.Products", new[] { "Category_ID" });
            RenameColumn(table: "dbo.Products", name: "Category_ID", newName: "Category_Name");
            DropPrimaryKey("dbo.CategoryNames");
            AlterColumn("dbo.CategoryNames", "Category_Name", c => c.String(nullable: false, maxLength: 128));
            AlterColumn("dbo.Products", "Category_Name", c => c.String(maxLength: 128));
            CreateIndex("dbo.Products", "Category_Name");
            AddPrimaryKey("dbo.CategoryNames", "Category_Name");
            AddForeignKey("dbo.Products", "Category_Name", "dbo.CategoryNames", "Category_Name");
            DropColumn("dbo.CategoryNames", "ID");
        }
        
        public override void Down()
        {
            AddColumn("dbo.CategoryNames", "ID", c => c.Int(nullable: false, identity: true));
            DropForeignKey("dbo.Products", "Category_Name", "dbo.CategoryNames");
            DropIndex("dbo.Products", new[] { "Category_Name" });
            DropPrimaryKey("dbo.CategoryNames");
            AlterColumn("dbo.Products", "Category_Name", c => c.Int(nullable: false));
            AlterColumn("dbo.CategoryNames", "Category_Name", c => c.String());
            AddPrimaryKey("dbo.CategoryNames", "ID");
            RenameColumn(table: "dbo.Products", name: "Category_Name", newName: "Category_ID");
            CreateIndex("dbo.Products", "Category_ID");
            AddForeignKey("dbo.Products", "Category_ID", "dbo.CategoryNames", "ID", cascadeDelete: true);
        }
    }
}
