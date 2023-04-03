<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="SUIDStaff.aspx.cs" Inherits="SUIDSystem.UI.SUIDStaff.SUIDStaff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPlaceHolder" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <asp:Image ImageUrl="~/MainImages/Images/Student-on-Computer_Section Banners.jpg" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavigationPlaceHolder" runat="server">
    <div>
<ul class="nav nav-pills nav-stacked" style="max-width: 300px;">
    <li class="active"><a href="../SUIDStaff/SUIDStaff.aspx">SUID Staff Home</a></li>
    <li><a href="../SUIDStaff/Verification.aspx">Want To Do</a></li>
    <li><a href="../SUIDStaff/StatusGeneration.aspx">Generate Status Report</a></li>
    <li><a href="../SUIDStaff/UpdateStatusReport.aspx">Update Status Report</a></li>
    <li><a href="../SUIDStaff/NumberandEmail.aspx">Generate SUID Number</a></li>
    <li><a href="../SUIDStaff/SearchStatus.aspx">Search Status</a></li>
</ul>
    </div>
</asp:Content>
