using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(EDC2015parte2.Startup))]
namespace EDC2015parte2
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
