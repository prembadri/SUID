<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="DownLoad.aspx.cs" Inherits="SUIDSystem.UI.CommonFolder.DownLoad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="../Scripts/jquery-2.1.0.min.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPlaceHolder" runat="server">
     <div><br />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Image ID="Image3" ImageUrl="~/MainImages/Images/download-banner.jpg" runat="server" Width="80%" Height="220px"/>
    </div>
    <div class="panel-body">
    <table style="width:100%">
        <tr>
            <td style="text-align:center" class="auto-style8"><h2>Student Registeation Form</h2></td>
            <td> <a href="../Dounloadings/Student registerationForm.docx"><button type="button" class="btn btn-warning">Download</button></a></td>
        </tr>
        <tr>
            <td style="text-align:center" class="auto-style8"><h2>SUID Project Documentation</h2></td>
            <td> <a href="../Dounloadings/Student registerationForm.docx"><button type="button" class="btn btn-warning">Download</button></a></td>
        </tr>

    </table>
   </div>
    <br /><br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavigationPlaceHolder" runat="server">
     <div class="panel panel-primary" style="height:auto;width:230px">
  <div class="panel-heading">
      
    <h3 class="panel-title">SUID</h3>
  </div>
  <div class="panel-body" style="height:auto;width:230px">
      <a href="../CommonFolder/AboutSUID.aspx"><asp:Image ID="Image1" ImageUrl="~/MainImages/SUIDlogo.JPG" Height="100px" Width="200px" runat="server" /></a>
  </div>
</div>
    <br />
    
    <div class="panel panel-primary" style="height:auto;width:230px">
  <div class="panel-heading">
      
    <h3 class="panel-title">Right To Information</h3>
  </div>
  <div class="panel-body" style="height:auto;width:230px">
      <a href="#"><asp:Image ID="Image2" ImageUrl="~/MainImages/Images/rti-logo.gif" Height="100px" Width="200px" runat="server" /></a>
  </div>
</div>
</asp:Content>
