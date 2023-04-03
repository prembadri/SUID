<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="EducationDepartment.aspx.cs" Inherits="SUIDSystem.UI.EducationDepartment.EducationDepartment" %>
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
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ImageUrl="~/MainImages/Images/2563.JPG" runat="server" Height="300px" Width="300px"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavigationPlaceHolder" runat="server">
     <div>
<ul class="nav nav-pills nav-stacked" style="max-width: 300px;">
    <li class="active"><a href="../EducationDepartment/EducationDepartment.aspx">Education Department Home</a></li>
    <li ><a href="../EducationDepartment/Qulification.aspx">Adding Qualification </a></li>
    <li><a href="../EducationDepartment/UploadCertificates.aspx">Upload Certificates</a></li>
    <li><a href="../EducationDepartment/UploadCertificates.aspx">Update Certificates</a></li>
</ul>

    </div>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
