<%@ Page Title="" Language="C#" MasterPageFile="~/BackEnd.master" AutoEventWireup="true" CodeFile="ScheduleForm.aspx.cs" Inherits="ScheduleForm" %>
<%@ Register TagPrefix="CL" TagName="calender" Src="~/CalendarControl.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 119px;
        }
        .auto-style2 {
        }
        .auto-style4 {
            width: 6px;
        }
        .auto-style5 {
            width: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Add New Schedule<table style="width: 56%; height: 221px;">
        <tr>
            <td class="auto-style2">&nbsp;From</td>
            <td class="auto-style5">
                <asp:DropDownList ID="DropDownListFrom" runat="server" Height="16px" Width="116px" DataSourceID="SqlDataSource1" DataTextField="Destination" DataValueField="DId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_destination]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorFrom" runat="server" ErrorMessage="Must be selected" ControlToValidate="DropDownListFrom"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style1">&nbsp;To</td>
            <td class="auto-style4">
                <asp:DropDownList ID="DropDownListTo" runat="server" Height="16px" Width="114px" DataSourceID="SqlDataSource1" DataTextField="Destination" DataValueField="DId">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorTo" runat="server" ErrorMessage="Must be selected" ControlToValidate="DropDownListTo"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;Date</td>
            <td class="auto-style5"><CL:calender ID="selectConfirmDate" runat="server" /></td>
            <td class="auto-style1">&nbsp;Seat</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBoxSeat" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorSeat" runat="server" ErrorMessage="Seat cannot be empty" ControlToValidate="TextBoxSeat"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;Price</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBoxPrice" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPrice" runat="server" ErrorMessage="Price should ne inserted" ControlToValidate="TextBoxPrice"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style1">&nbsp;Remarks</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBoxRemarks" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" />
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="BtnReset" runat="server" Text="Reset" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="4">
                <asp:Label ID="LabelMessage" runat="server"></asp:Label>
            </td>
        </tr>
        </table>
    
    
</asp:Content>

