<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="SUIDSystem.UI.Admin.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../Scripts/jquery-2.1.0.min.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPlaceHolder" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ImageUrl="~/MainImages/Images/education-banner.jpg" runat="server" /><br />
    <p style="font-size:xx-large;text-align:center">ADMIN PANAL</p>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavigationPlaceHolder" runat="server">
<div>
<ul class="nav nav-pills nav-stacked" style="max-width: 300px;">
    <li class="active"><a href="../Admin/Admin.aspx">Main Admin</a></li>
    <li><a href="../Admin/Department.aspx">Department Registeration</a></li>
    <li><a href="../Admin/AdminRegisteration.aspx">Admin Registeration</a></li>
    <li><a href="../Admin/SUIDStaffRegisteration.aspx">SUID Staff Registeration</a></li>
    <li><a href="../Admin/ExamControlerRegisteration.aspx">Exam Controller Registeration</a></li>
    <li><a href="../Admin/CompanyRegisteration.aspx">Company's Registeration</a></li>
    <li><a href="../Admin/MemerSearch.aspx">Members Search</a></li>

    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">
      Update or Delete<span class="caret"></span>
    </a>
        <ul class="dropdown-menu">
      <li><a href="../Admin/UpdateDeleteAdmin.aspx">Admin</a></li>
      <li><a href="../Admin/UpdateDeleteSUIDStaff.aspx">SUID Staff</a></li>
      <li><a href="../Admin/UpdateDeleteExamController.aspx">Exam Controller</a></li>
      <li><a href="../Admin/UpdateDeleteCompanyPerson.aspx">Company's</a></li>
    </ul></li>
</ul>
    </div>
</asp:Content>
