<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CalendarControl.ascx.cs" Inherits="CalendarControl" %>
<asp:Calendar ID="CalendarDate" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="82px" NextPrevFormat="ShortMonth" Width="202px" OnSelectionChanged="CalendarDate_SelectionChanged">
    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
    <DayStyle BackColor="#CCCCCC" />
    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
    <OtherMonthDayStyle ForeColor="#999999" />
    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
    <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
    <TodayDayStyle BackColor="#999999" ForeColor="White" />
</asp:Calendar>
<asp:TextBox ID="TextBoxCalendar" runat="server" Width="186px" Visible="false"></asp:TextBox>

