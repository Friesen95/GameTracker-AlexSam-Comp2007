using System;
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
        protected int lowerIndex = 0, higherIndex = 7;
        protected void Page_Load(object sender, EventArgs e)
        {

            if(Session["userName"]!=null)
            {

            }

            if(!IsPostBack)
            {
                this.getGame();
            }
        }

        protected void getGame()
        {
            this.getSoccerGame(lowerIndex, higherIndex);
            this.getHockeyGame(lowerIndex, higherIndex);
            this.getBaseballGame(lowerIndex, higherIndex);
            this.getBasketballGame(lowerIndex, higherIndex);
        }
        
        /*<summary>
         *This Method gets the games data and puts it into the proper gridView 
         * </summary>
         * 
         * @methods getGame
         * @return {void}
         */
        protected void getSoccerGame(int lowerIndex, int higherIndex)
        {
            using (comp2007db db = new comp2007db())
            {
                var SoccerGames = (from allSoccerGames in db.games where
                                   allSoccerGames.datePlayed >= DateTime.Now.AddDays(lowerIndex)
                                   && allSoccerGames.datePlayed <= DateTime.Now.AddDays(higherIndex)
                                   && allSoccerGames.sportType == "Soccer" orderby allSoccerGames.datePlayed
                             select allSoccerGames);
                SoccerGamesGridView.DataSource = SoccerGames.AsQueryable().ToList();
                SoccerGamesGridView.DataBind();
            }

        }
        protected void getBasketballGame(int lowerIndex, int higherIndex)
        {
            using (comp2007db db = new comp2007db())
            {
                var BasketballGames = (from allBasketballGames in db.games where
   allBasketballGames.datePlayed >= DateTime.Now.AddDays(lowerIndex)
   && allBasketballGames.datePlayed <= DateTime.Now.AddDays(higherIndex)
   && allBasketballGames.sportType == "Basketball"
                                   orderby allBasketballGames.datePlayed
                                   select allBasketballGames);
                BasketballGamesGridView.DataSource = BasketballGames.AsQueryable().ToList();
                BasketballGamesGridView.DataBind();
            }

        }
        protected void getBaseballGame(int lowerIndex, int higherIndex)
        {
            using (comp2007db db = new comp2007db())
            {
                var BaseballGames = (from allBaseballGames in db.games where
   allBaseballGames.datePlayed >= DateTime.Now.AddDays(lowerIndex)
   && allBaseballGames.datePlayed <= DateTime.Now.AddDays(higherIndex)
   && allBaseballGames.sportType == "Baseball"
                                   orderby allBaseballGames.datePlayed
                                   select allBaseballGames);
                BaseballGamesGridView.DataSource = BaseballGames.AsQueryable().ToList();
                BaseballGamesGridView.DataBind();
            }
        }
        protected void getHockeyGame(int lowerIndex, int higherIndex)
        {
            using (comp2007db db = new comp2007db())
            {
                var HockeyGames = (from allHockeyGames in db.games where
     allHockeyGames.datePlayed >= DateTime.Now.AddDays(lowerIndex)
     && allHockeyGames.datePlayed <= DateTime.Now.AddDays(higherIndex)
     && allHockeyGames.sportType == "Hockey"
                                     orderby allHockeyGames.datePlayed
                                     select allHockeyGames);
                HockeyGamesGridView.DataSource = HockeyGames.AsQueryable().ToList();
                HockeyGamesGridView.DataBind();
            }

        }
        protected void SoccerPreviousButton_Clicked(object sender, EventArgs e)
        {
            this.PreviousButton_Clicked();
            this.getSoccerGame(lowerIndex, higherIndex);
        }
        protected void SoccerNextButton_Clicked(object sender, EventArgs e)
        {
            this.NextButton_Clicked();
            this.getSoccerGame(lowerIndex, higherIndex);
        }

        protected void SoccerGamesGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            this.DeleteGame(sender, e, SoccerGamesGridView);
            this.getSoccerGame(lowerIndex, higherIndex);
        }
        protected void SoccerGamesGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            SoccerGamesGridView.PageIndex = e.NewPageIndex;
            this.getSoccerGame(lowerIndex, higherIndex);
        }

        protected void BasketballGamesGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            this.DeleteGame(sender, e, BasketballGamesGridView);
            this.getBasketballGame(lowerIndex, higherIndex);
        }

        protected void BasketballGamesGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }
        protected void BasketballPreviousButton_Clicked(object sender, EventArgs e)
        {
            this.PreviousButton_Clicked();
            this.getBasketballGame(lowerIndex, higherIndex);
        }
        protected void BasketBallNextButton_Clicked(object sender, EventArgs e)
        {
            this.NextButton_Clicked();
            this.getBasketballGame(lowerIndex, higherIndex);
        }


        protected void BaseballGamesGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            this.DeleteGame(sender, e, BaseballGamesGridView);
            this.getBaseballGame(lowerIndex, higherIndex);
        }

        protected void BaseballGamesGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }
        protected void BaseballPreviousButton_Clicked(object sender, EventArgs e)
        {
            this.PreviousButton_Clicked();
            this.getBaseballGame(lowerIndex, higherIndex);
        }
        protected void BaseballNextButton_Clicked(object sender, EventArgs e)
        {
            this.NextButton_Clicked();
            this.getBaseballGame(lowerIndex, higherIndex);
        }

        protected void HockeyNextButton_Click(object sender, EventArgs e)
        {
            this.NextButton_Clicked();
            this.getHockeyGame(lowerIndex,higherIndex);
        }
        protected void HockeyPreviousButton_Clicked(object sender, EventArgs e)
        {
            this.PreviousButton_Clicked();
            this.getHockeyGame(lowerIndex, higherIndex);
        }

        protected void HockeyGamesGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            this.DeleteGame(sender, e, HockeyGamesGridView);
            this.getHockeyGame(lowerIndex, higherIndex);
        }

        protected void HockeyGamesGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }
        protected void Clear_Click(object sender, EventArgs e)
        {
            higherIndex = 7;
            lowerIndex = 0;
        }
        protected void PreviousButton_Clicked()
        {
            higherIndex -= 7;
            lowerIndex -= 7;
        }

        protected void NextButton_Clicked()
        {
            higherIndex += 7;
            lowerIndex += 7;
        }
        protected void DeleteGame(object sender, GridViewDeleteEventArgs e, GridView Games)
        {
            int selectedRow = e.RowIndex;
            int gameId = Convert.ToInt32(Games.DataKeys[selectedRow].Values["Id"]);

            using (comp2007db db = new comp2007db())
            {
                game deletedGame = (from gameRecord in db.games
                                    where gameRecord.Id == gameId
                                    select gameRecord).FirstOrDefault();
                db.games.Remove(deletedGame);
                db.SaveChanges();
            }
        }

    }
}