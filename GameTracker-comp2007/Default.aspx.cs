﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using GameTracker_comp2007.Models;
using System.Web.ModelBinding;
using System.Linq.Dynamic;

namespace GameTracker_comp2007
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /*<summary>
         *This Method gets the games data and puts it into the proper gridView 
         * </summary>
         * 
         * @methods getGame
         * @return {void}
         */
        protected void getGame()
        {
            using (DefaultConnection db = new DefaultConnection())
            {

            }

        }

        protected void SoccerGamesGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void SoccerGamesGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }
    }
}