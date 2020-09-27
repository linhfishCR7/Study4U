using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Study4U.Startup))]
namespace Study4U
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
