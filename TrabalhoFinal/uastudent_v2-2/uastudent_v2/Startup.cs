using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(uastudent_v2.Startup))]
namespace uastudent_v2
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
