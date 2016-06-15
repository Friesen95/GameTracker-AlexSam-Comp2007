using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.ModelBinding;
using GameTracker_comp2007.Models;

namespace GameTracker_comp2007
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {

            

            //connect to DB
            using (comp2007db db = new comp2007db())
            {
                User loginUser = (from user in db.Users where user.email == emailTextBox.Text && user.password == passwordTextBox.Text select user).FirstOrDefault();

                if (loginUser != null)
                {
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    invalidLogin.Visible = true;
                }
            }
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}