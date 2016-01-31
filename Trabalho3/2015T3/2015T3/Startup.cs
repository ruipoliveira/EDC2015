using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(_2015T3.Startup))]
namespace _2015T3
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
