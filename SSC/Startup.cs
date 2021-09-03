using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SSC.Startup))]
namespace SSC
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
