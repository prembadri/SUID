<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="SUIDSystem.UI.Student.Student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="../Scripts/jquery-2.1.0.min.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
        <style type="text/css">
        .auto-style8
        {
            width: 30%;
            height: 40px;
            margin:10px;
        }
        .auto-style9
        {
            width: 10%;
            height: 40px;
            margin:10px;
        }
            .auto-style10
            {
                width: 24%;
                height: 40px;
                margin: 10px;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPlaceHolder" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ImageUrl="~/MainImages/Images/Students_Main_Photo.jpg" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavigationPlaceHolder" runat="server">
    <div>
<ul class="nav nav-pills nav-stacked" style="max-width: 300px;">
    <li class="active"><a href="../Studnt/Student.aspx">Studnt</a></li>
    <li><a href="../Student/StudentRegisteration.aspx">Student Registeration</a></li>
    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">
      Upload Certificates<span class="caret"></span>
    </a>
        <ul class="dropdown-menu">
      <li><a href="../Student/TenCertficates.aspx">10 or SSC</a></li>
      <li><a href="../Student/InterCertificates.aspx">10+2 or Inter</a></li>
      <li><a href="../Student/UgCertifcates.aspx">UG</a></li>
      <li><a href="../Student/PgCertificates.aspx">PG</a></li>
     <li><a href="../Student/OtherCertificates.aspx">Other</a></li>
    </ul></li>
    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">
      Update or Delete Certificates<span class="caret"></span>
    </a>
        <ul class="dropdown-menu">
       <li><a href="../Student/UpdateStudent.aspx">Student</a></li>
      <li><a href="../Student/UpdateTenCertificates.aspx">10 or SSC</a></li>
      <li><a href="../Student/UpdateInterCertificates.aspx">10+2 or Inter</a></li>
      <li><a href="../Student/updateUGCertificates.aspx">UG</a></li>
      <li><a href="../Student/UpdatePGCertficates.aspx">PG</a></li>
    </ul></li>
    
    <li><a href="../Student/DownloadAknoodgement.aspx">See Aknolodgement</a></li>
    <li><a href="../Student/DownLoadSUIDCard.aspx">Download Student ID CARD</a></li>
</ul>

    </div>
    
</asp:Content>
