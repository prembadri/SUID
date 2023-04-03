<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="SearchStatus.aspx.cs" Inherits="SUIDSystem.UI.CompanyPersons.SearchStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPlaceHolder" runat="server">
    <asp:TextBox ID="txtStatus" runat="server"></asp:TextBox>
    <asp:Button ID="btnstatus" runat="server" Text="Search status" OnClick="btnstatus_Click" />
    <asp:DetailsView ID="dvstatus" runat="server" Height="50px" Width="125px"></asp:DetailsView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavigationPlaceHolder" runat="server">
    <div>
<ul class="nav nav-pills nav-stacked" style="max-width: 300px;">
    <li ><a href="../CompanyPersons/Company.aspx">Company Home</a></li>
    <li class="active"><a href="../CompanyPersons/SearchStatus.aspx">Search Status</a></li>
    <li><a href="../CompanyPersons/VerificationPage.aspx">Search Profile</a></li>
</ul>
    </div>
</asp:Content>
