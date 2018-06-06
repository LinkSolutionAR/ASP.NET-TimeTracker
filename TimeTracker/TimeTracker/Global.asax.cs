using System;
using System.Web;
using System.Web.Security;

namespace WebApplication1
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Código que se ejecuta al iniciar la aplicación
            if (Roles.Enabled)
            {
                if (!Roles.RoleExists("ProjectAdministrator"))
                {
                    Roles.CreateRole("ProjectAdministrator");
                }
                if (!Roles.RoleExists("ProjectManager"))
                {
                    Roles.CreateRole("ProjectManager");
                }
                if (!Roles.RoleExists("Consultant"))
                {
                    Roles.CreateRole("Consultant");
                }
            }
        }
    }
}