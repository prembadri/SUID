<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Company.aspx.cs" Inherits="SUIDSystem.UI.CompanyPersons.Company" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPlaceHolder" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <asp:Image ImageUrl="~/MainImages/Images/runyan_walking_0_Banner.jpg" Height="250px" Width="800px" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavigationPlaceHolder" runat="server">
         <div>
<ul class="nav nav-pills nav-stacked" style="max-width: 300px;">
    <li class="active"><a href="../CompanyPersons/Company.aspx">Company Home</a></li>
    <li><a href="../CompanyPersons/SearchStatus.aspx">Search Status</a></li>
    <li><a href="../CompanyPersons/VerificationPage.aspx">Search Profile</a></li>
</ul>
    </div>
</asp:Content>
