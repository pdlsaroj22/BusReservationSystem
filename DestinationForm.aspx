<%@ Page Title="" Language="C#" MasterPageFile="~/BackEnd.master" AutoEventWireup="true" CodeFile="DestinationForm.aspx.cs" Inherits="DestinationForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiViewDestination" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
    <asp:Label ID="lblAddDestination" runat="server" Text="Add New Destination"></asp:Label>
    <asp:TextBox ID="txtAddDestination" runat="server" Width="154px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddDest" runat="server" ControlToValidate="txtAddDestination" ErrorMessage="Field cannot be empty"></asp:RequiredFieldValidator>
    <br />
    <asp:Button ID="btnAdd" runat="server" Text="Add" Width="106px" OnClick="btnAdd_Click" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tbl_destination] WHERE [DId] = @DId" InsertCommand="INSERT INTO [tbl_destination] ([Destination]) VALUES (@Destination)" SelectCommand="SELECT * FROM [tbl_destination]" UpdateCommand="UPDATE [tbl_destination] SET [Destination] = @Destination WHERE [DId] = @DId">
                <DeleteParameters>
                    <asp:Parameter Name="DId" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Destination" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Destination" Type="String" />
                    <asp:Parameter Name="DId" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
       </asp:View>
        <asp:View ID="View2" runat="server">

            <asp:Label ID="lblSuccessMessage" runat="server" Text="Destination Successfully added.."></asp:Label>
            <asp:Button ID="btnAddMore" runat="server" Text="Add More" OnClick="btnAddMore_Click" /><asp:Button ID="BtnContinue" runat="server" Text="Continue" OnClick="BtnContinue_Click" />
        </asp:View>

             </asp:MultiView>
</asp:Content>

