using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CalendarControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CalendarDate_SelectionChanged(object sender, EventArgs e)
    {
        TextBoxCalendar.Text = CalendarDate.SelectedDate.ToShortDateString();
    }
    public string SelectedDate
    {
        get
        {
            return TextBoxCalendar.Text;
        }
        set
        {
            TextBoxCalendar.Text = value;
        }
    }
}