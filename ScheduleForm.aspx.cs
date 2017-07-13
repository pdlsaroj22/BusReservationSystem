using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class ScheduleForm : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

    }

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            try
            {

                con.Open();
                int seat = Int32.Parse(TextBoxSeat.Text);
                int price = Int32.Parse(TextBoxPrice.Text);
                String query = "insert into tbl_Schedule values('" + DropDownListFrom.SelectedItem.Value + "','" + DropDownListTo.SelectedItem.Value+ "','" + selectConfirmDate.SelectedDate + "','" + seat + "','" + price+ "','" + TextBoxRemarks.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                LabelMessage.Text = "Data inserted successfully";
            }
            catch (Exception err)
            {
                LabelMessage.Text = "error in inserting data";
                LabelMessage.Text += err.Message;

            }
            finally
            {
                con.Close();
            }
            
        }
    }
}