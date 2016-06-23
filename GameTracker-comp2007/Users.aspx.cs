using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using GameTracker_comp2007.Models;
using System.Web.ModelBinding;
namespace GameTracker_comp2007
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                this.getUsers();
            }
        }
        protected void getUsers()
        {
            using (userConnection db = new userConnection())
            {
                var Users = (from users in db.AspNetUsers select users);

                UsersGridView.DataSource = Users.ToList();
                UsersGridView.DataBind();
            }
        }

        protected void UsersGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int selectedRow = e.RowIndex;

            string UserID = UsersGridView.DataKeys[selectedRow].Values["Id"].ToString();

            using (userConnection db = new userConnection())
            {
                AspNetUser deletedUser = (from users in db.AspNetUsers where users.Id == UserID select users).FirstOrDefault();
                db.AspNetUsers.Remove(deletedUser);
                db.SaveChanges();
            }

            //refresh the grid
            this.getUsers();

        }
    }
}