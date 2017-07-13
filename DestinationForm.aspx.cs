using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class DestinationForm : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (!IsPostBack)
        {
            MultiViewDestination.ActiveViewIndex = 0;
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            try
            {

                con.Open();
                String query = "insert into tbl_destination values('" + txtAddDestination.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                lblSuccessMessage.Text += "Data inserted successfully";
            }
            catch (Exception err)
            {
                lblSuccessMessage.Text = "error in inserting data";
                lblSuccessMessage.Text += err.Message;

            }
            finally {
                con.Close();
            }
            MultiViewDestination.ActiveViewIndex = 1;
        }
    
}

    protected void btnAddMore_Click(object sender, EventArgs e)
    {
        Response.Redirect("DestinationForm.aspx");
    }

    protected void BtnContinue_Click(object sender, EventArgs e)
    {
        Response.Redirect("ScheduleForm.aspx");
    }
}