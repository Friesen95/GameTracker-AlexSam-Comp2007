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
    public partial class GameCreator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && (Request.QueryString.Count > 0))
            {
                this.GetGame();
            }
        }

        private void GetGame()
        {
            int GameID = Convert.ToInt32(Request.QueryString["GameID"]);

            //connect to DB
            using (comp2007db db = new comp2007db())
            {
                game updatedGame = (from game in db.games where game.Id == GameID select game).FirstOrDefault();

                if (updatedGame != null)
                {
                    homeNameTextBox.Text = updatedGame.homeName;
                    awayNameTextBox.Text = updatedGame.awayName;
                    homePointsTextBox.Text = updatedGame.homePoints.ToString();
                    awayPointsTextBox.Text = updatedGame.awayPoints.ToString();
                    attendancesTextBox.Text = updatedGame.attendances.ToString();
                    stadiumTextBox.Text = updatedGame.stadium;
                    sportTypeTextBox.SelectedValue = updatedGame.sportType;
                    datePlayedTextBox.Text = updatedGame.datePlayed.ToString("yyy-MM-dd");
                }
            }
        }

        
        

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void AddGameButton_Click(object sender, EventArgs e)
        {
            using (comp2007db db = new comp2007db())
            { 
                // use the syudent model to save a new record
                game newGame = new game();

            int GameID = 0;

            if (Request.QueryString.Count > 0)
            {
                // get game id from url
                GameID = Convert.ToInt32(Request.QueryString["GameID"]);
                // get the current Game from the DB
                newGame = (from game in db.games where game.Id == GameID select game).FirstOrDefault();
            }
            // add for data to new student record
            newGame.homeName = homeNameTextBox.Text;
            newGame.awayName = awayNameTextBox.Text;
            newGame.homePoints = Convert.ToInt32(homePointsTextBox.Text);
            newGame.awayPoints = Convert.ToInt32(awayPointsTextBox.Text);
            newGame.attendances = Convert.ToInt32(attendancesTextBox.Text);
            newGame.stadium = stadiumTextBox.Text;
            newGame.sportType = sportTypeTextBox.SelectedValue;
            newGame.datePlayed = Convert.ToDateTime(datePlayedTextBox.Text);

            // add a new game to Games Table Collection
            if (GameID == 0)
            {
                db.games.Add(newGame);
            }

            // run insert commands to database
            db.SaveChanges();

            Response.Redirect("~/Default.aspx");
        }

    }
    }
}