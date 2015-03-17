using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        //instantiate service
        RegistrationLoginService.VenueRegServiceClient vrsc = new RegistrationLoginService.VenueRegServiceClient();

        //assign text box content to the object properties
        RegistrationLoginService.Venue v = new RegistrationLoginService.Venue();
        v.VenueName = txtVenueName.Text;
        v.VenueAddress = txtVenueAddress.Text;
        v.VenueCity = txtVenueCity.Text;
        v.VenueState = txtVenueState.Text;
        v.VenueZipCode = txtVenueZip.Text;
        v.VenuePhone = txtVenuePhone.Text;
        v.VenueEmail = txtVenueEmail.Text;
        v.VenueWebPage = txtVenueWebPage.Text;
        v.VenueAgeRestriction = int.Parse(txtVenueAge.Text);
        RegistrationLoginService.VenueLogin vl = new RegistrationLoginService.VenueLogin();
        vl.VenueLoginUserName = txtUserName.Text;
        vl.VenueLoginPasswordPlain = txtConfirm.Text;

        //call the register method in the service
        bool result = vrsc.RegisterVenue(v, vl);
        //check the results
        if(result)
        {
            lblResult.Text = "You have successfully registered";
        }
        else
        {
            lblResult.Text = "Registration failed";
        }
    }
}