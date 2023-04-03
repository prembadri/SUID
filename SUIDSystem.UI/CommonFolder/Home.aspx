<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SUIDSystem.UI.CommonFolder.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="../Scripts/jquery-2.1.0.min.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPlaceHolder" runat="server">
    <div id="myCarousel" class="carousel slide" data-interval="3000" data-ride="carousel" style="height: 400px; width: 100%" >
   <!-- Carousel indicators -->
   <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
       <li data-target="#myCarousel" data-slide-to="4"></li>
       <li data-target="#myCarousel" data-slide-to="5"></li>
       
   </ol>   
   <!-- Carousel items -->
   <div class="carousel-inner">
      <div class="item  active">
         <img src="../MainImages/Slide1.JPG" alt="First slide" style="height:400px;width:100%;margin:5px;border-radius:10px;border-color:black" />
      </div>
      <div class="item">
         <img src="../MainImages/1.JPG" alt="Second slide" style="height:400px;width:100%;margin:5px;border-radius:10px;border-color:black"/>
      </div>
      <div class="item">
         <img src="../MainImages/2.JPG" alt="Third slide" style="height:400px;width:100%;margin:5px;border-radius:10px;border-color:black"/>
      </div>
       <div class="item">
         <img src="../MainImages/3.JPG" alt="Third slide" style="height:400px;width:100%;margin:5px;border-radius:10px;border-color:black"/>
      </div>
       <%--<div class="item">
         <img src="../MainImages/4.JPG" alt="Third slide" style="height:400px;width:100%;margin:5px;border-radius:10px;border-color:black"/>
      </div>--%>
       <div class="item">
         <img src="../MainImages/Slide2.JPG" alt="Third slide" style="height:400px;width:100%;margin:5px;border-radius:10px;border-color:black"/>
      </div>
   </div>
</div> 
    
  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavigationPlaceHolder" runat="server">
    <div class="panel panel-primary" style="height:auto;width:230px">
  <div class="panel-heading">
      
    <h3 class="panel-title">SUID</h3>
  </div>
  <div class="panel-body" style="height:auto;width:230px">
      <a href="../CommonFolder/AboutSUID.aspx"><asp:Image ImageUrl="~/MainImages/SUIDlogo.JPG" Height="100px" Width="200px" runat="server" /></a>
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
