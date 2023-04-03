<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="ContactUS.aspx.cs" Inherits="SUIDSystem.UI.CommonFolder.ContactUS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="../Scripts/jquery-2.1.0.min.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPlaceHolder" runat="server">
     <div>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Image ID="Image3" ImageUrl="~/MainImages/Images/banner_contactus.jpg" runat="server" Width="80%" Height="200px"/>
        <table class="table table-striped table-hover" style="width:100%;text-align:center">
  <tbody>
    <tr class="danger">
      
      <td>Project Title</td>
      <td>Student Unique Identity Number</td>
      
    </tr>
    <tr class="success">
      
      <td>Project Devloper Name</td>
      <td>Badri Prem Kumar</td>
      
    </tr>
    <tr class="warning">
     
      <td>Project Guid</td>
      <td>Preeven kumar.D</td>
      
    </tr>
    <tr class="danger">
      
      <td>Company</td>
      <td>Synechron Software Pvt. Ltd.,</td>
      
    </tr>
    <tr class="warning">
     
      <td>Emil ID</td>
      <td>bpk.synechron@gmail.com</td>
      
    </tr>
      <tr class="success">
      
      <td>Contact No</td>
      <td>+91-9700-507-517, +91-9765-143-678</td>
      
    </tr>
  </tbody>
</table>
    </div>
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
