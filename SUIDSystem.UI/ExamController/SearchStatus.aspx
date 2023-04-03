<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="SearchStatus.aspx.cs" Inherits="SUIDSystem.UI.ExamController.SearchStatus" %>
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
    <table>
        <tr>
            <td>Student SUID NUMBER </td>
            <td><asp:TextBox ID="txtStatus" runat="server"></asp:TextBox></td>
            <td><asp:Button ID="btnstatus" runat="server" Text="Search Staus" OnClick="btnstatus_Click" /></td>
        </tr>
    </table> 
    
    <asp:DetailsView ID="dvstatus" runat="server" Height="50px" Width="125px"></asp:DetailsView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavigationPlaceHolder" runat="server">
    <div>
<ul class="nav nav-pills nav-stacked" style="max-width: 300px;">
    <li><a href="../ExamController/ExamController.aspx">Exam Controllor Home</a></li>
    <li><a href="../ExamController/InsertSuid.aspx">Insert Students</a></li>
    <li class="active"><a href="../ExamController/SearchStatus.aspx">Search Status</a></li>
    <li ><a href="../ExamController/viewProfile.aspx">View Profile</a></li>
</ul>
    </div>
</asp:Content>
