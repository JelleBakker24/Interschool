using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Interschool.Startup))]
namespace Interschool
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
