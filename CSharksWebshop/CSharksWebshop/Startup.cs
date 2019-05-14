using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CSharksWebshop.Startup))]
namespace CSharksWebshop
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
