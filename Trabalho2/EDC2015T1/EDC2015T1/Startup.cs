using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(EDC2015T1.Startup))]
namespace EDC2015T1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
