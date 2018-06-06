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

            //string username = "dario.rick";
            //string password = "#D92J(:p)E";
            //MembershipUser mu = Membership.GetUser(username);
            //mu.UnlockUser();
            //mu.ChangePassword(mu.ResetPassword("Dario"), password);

            //MembershipUser usr = Membership.GetUser(username);
            //string resetPwd = usr.ResetPassword();
            //usr.ChangePassword(resetPwd, password);
        }
    }
}