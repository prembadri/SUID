<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="SearchStatus.aspx.cs" Inherits="SUIDSystem.UI.SUIDStaff.SearchStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPlaceHolder" runat="server">
    <asp:TextBox ID="txtSUIDNO" runat="server"></asp:TextBox><asp:Button ID="btnsearch" runat="server" Text="Button" OnClick="btnsearch_Click" />
    <asp:DetailsView ID="dvStatus" runat="server" Height="50px" Width="125px"></asp:DetailsView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavigationPlaceHolder" runat="server">
        <div>
<ul class="nav nav-pills nav-stacked" style="max-width: 300px;">
    <li ><a href="../SUIDStaff/SUIDStaff.aspx">SUID Staff Home</a></li>
    <li><a href="../SUIDStaff/Verification.aspx">Want To Do</a></li>
    <li><a href="../SUIDStaff/StatusGeneration.aspx">Generate Status Report</a></li>
    <li><a href="../SUIDStaff/UpdateStatusReport.aspx">Update Status Report</a></li>
    <li><a href="../SUIDStaff/NumberandEmail.aspx">Generate SUID Number</a></li>
    <li class="active"><a href="../SUIDStaff/SearchStatus.aspx">Search Status</a></li>
</ul>
    </div>
</asp:Content>
