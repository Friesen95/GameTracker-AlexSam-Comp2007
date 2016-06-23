using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
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
            var userStore = new UserStore<IdentityUser>();
            var userManager = new UserManager<IdentityUser>(userStore);

            // search for and create a new user object
            var user = userManager.Find(userNameTextBox.Text, passwordTextBox.Text);

            // if a match is found
            if(user != null)
            {
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                // sign in the user
                authenticationManager.SignIn(new AuthenticationProperties() { IsPersistent = false }, userIdentity);

                Session["userName"] = user.UserName;
                if (user.UserName == "admin")
                {
                    Session["admin"] = true;
                }
                Response.Redirect("Default.aspx");
            }
            else
            {
                // throw an error to alertFlash
                statusLabel.Text = "Invalid User Name or Password";
                alertFlash.Visible = true;
            }




            

            ////connect to DB
            //using (comp2007db db = new comp2007db())
            //{
            //    User loginUser = (from user in db.Users where user.email == emailTextBox.Text && user.password == passwordTextBox.Text select user).FirstOrDefault();

            //    if (loginUser != null)
            //    {
            //        Session["userName"] = loginUser.FirstName;
            //        Response.Redirect("Default.aspx");
            //    }
            //    else
            //    {
            //        invalidLogin.Visible = true;
            //    }
            //}
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}