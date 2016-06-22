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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack && (Request.QueryString.Count > 0))
            //{
            //    this.GetUser();
            //}
        }

       
        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
        //private void GetUser()
        //{
        //    int UserID = Convert.ToInt32(Request.QueryString["StudentID"]);

        //    //connect to DB
        //    using (comp2007db db = new comp2007db())
        //    {
        //        User updatedUser = (from user in db.Users where user.id == UserID select user).FirstOrDefault();

        //        if (updatedUser != null)
        //        {
        //            LastnameTextBox.Text = updatedUser.LastName;
        //            FirstNameTextBox.Text = updatedUser.FirstName;
        //            emailTextBox.Text = updatedUser.email;
        //            passwordTextBox.Text = updatedUser.password;
        //            confirmPasswordTextBox.Text = updatedUser.password;
        //        }
        //    }
        //}

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            var userStore = new UserStore<IdentityUser>();
            var userManager = new UserManager<IdentityUser>(userStore);

            //create a new user object 
            var user = new IdentityUser()
            {
                UserName = userNameTextBox.Text,
                Email = emailTextBox.Text
            };

            // create a new user in the db and store the result
            IdentityResult result = userManager.Create(user, passwordTextBox.Text);

            // check if succesfully registered
            if(result.Succeeded)
            {
                // authenticate and login our new user
                var authenticationmanager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                // sign in
                authenticationmanager.SignIn(new AuthenticationProperties() { }, userIdentity );

                // redirect to default page
                Session["userName"] = user.UserName;
                Response.Redirect("Default.aspx");
            }
            else
            {
                // display the error in the error div
                statusLabel.Text = result.Errors.FirstOrDefault();
                alertFlash.Visible = true;
            }






            ////connect to EF DB
            //using (comp2007db db = new comp2007db())
            //{
            //    // use the user model to save a new record
            //    User newUser = new User();

            //    int UserID = 0;

            //    if (Request.QueryString.Count > 0)
            //    {
            //        // get user id from url
            //        UserID = Convert.ToInt32(Request.QueryString["UserID"]);
            //        // get the current user from the DB
            //        newUser = (from user in db.Users where user.id == UserID select user).FirstOrDefault();
            //    }
            //    // add for data to new user record
            //    newUser.LastName = LastnameTextBox.Text;
            //    newUser.FirstName = FirstNameTextBox.Text;
            //    newUser.email = emailTextBox.Text;
            //    newUser.password = passwordTextBox.Text;

            //    // add a new user to User Table Collection
            //    if (UserID == 0)
            //    {
            //        db.Users.Add(newUser);
            //    }
            //    try
            //    {
            //        // run insert commands to database
            //        db.SaveChanges();
            //    }
            //    catch(Exception ex)
            //    {
            //        string script = "<script>alert('" + ex.Message + "');</script>";
                    
                    
            //            Page.ClientScript.RegisterStartupScript(GetType(), script,"errorMessage");
                    
            //    }
            //    Response.Redirect("~/Default.aspx");
            //}
        }
    }
}