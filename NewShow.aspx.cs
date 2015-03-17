using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewShow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSaveShow_Click(object sender, EventArgs e)
    {
        //instantiate service
        AddShowAddArtistService.ShowTrackerServiceClient stsc = new AddShowAddArtistService.ShowTrackerServiceClient();

        //assign text box content to the object properties
        AddShowAddArtistService.Show s = new AddShowAddArtistService.Show();
        s.ShowName = txtShowName.Text;
        s.ShowDate = DateTime.Parse(txtShowDate.Text);
        s.ShowTime = TimeSpan.Parse(txtShowTime.Text);
        s.ShowTicketInfo = txtShowTicketInfo.Text;
        AddShowAddArtistService.ShowDetail sd = new AddShowAddArtistService.ShowDetail();
        sd.ShowDetailArtistStartTime = TimeSpan.Parse(txtShowArtistStartTime.Text);
        sd.ShowDetailAdditional = txtShowDetails.Text;

        //call the method in the service
        bool result = stsc.AddShow(s, sd);

        //check the results
        if (result)
        {
            lblResultShow.Text = "Show added";
        }
        else
        {
            lblResultShow.Text = "Update failed";
        }
    }
    protected void btnSaveArtist_Click(object sender, EventArgs e)
    {
        //instantiate service
        AddShowAddArtistService.ShowTrackerServiceClient stsc = new AddShowAddArtistService.ShowTrackerServiceClient();

        //assign text box content to the object properties
        AddShowAddArtistService.Artist a = new AddShowAddArtistService.Artist();
        a.ArtistName = txtArtistName.Text;
        a.ArtistEmail = txtArtistEmail.Text;
        a.ArtistWebPage = txtArtistWebPage.Text;

        //call the method in the service
        bool result = stsc.AddArtist(a);

        //check the results
        if (result)
        {
            lblResultArtist.Text = "Artist added";
        }
        else
        {
            lblResultArtist.Text = "Update failed";
        }
    }
}