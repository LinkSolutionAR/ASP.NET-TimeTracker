using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeTracker.TimeTracker
{
    public partial class User_List_aspx : System.Web.UI.Page
    {
        public User_List_aspx()
        {
        }

        protected void Page_Load(object sender, EventArgs e)
        {
      
        }

        protected void Button_Click(Object sender, EventArgs args)
        {
            Response.Redirect("User_Create.aspx");
        }
    }
}