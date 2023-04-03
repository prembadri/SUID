<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="ExamController.aspx.cs" Inherits="SUIDSystem.UI.ExamController.ExamController" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="../Scripts/jquery-2.1.0.min.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>


     <script  type="text/javascript" >
         $().ready(function () {
             //alert("I am in the ready");
             //alert($("img").length);
             $(".img").mouseover(function () { $(this).width(350); $(this).height(400) });
             $(".img").mouseleave(function () { $(this).width(100); $(this).height(150) });
         })
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPlaceHolder" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ImageUrl="~/MainImages/jobs-banner1.jpg" runat="server" Width="90%" />
    <p style="font-size:xx-large"> Exam Controller</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavigationPlaceHolder" runat="server">
    <div>
<ul class="nav nav-pills nav-stacked" style="max-width: 300px;">
    <li class="active"><a href="../ExamController/ExamController.aspx">Exam Controllor Home</a></li>
    <li><a href="../ExamController/InsertSuid.aspx">Insert Students</a></li>
    <li><a href="../ExamController/SearchStatus.aspx">Search Status</a></li>
    <li ><a href="../ExamController/viewProfile.aspx">View Profile</a></li>
</ul>
    </div>
</asp:Content>
