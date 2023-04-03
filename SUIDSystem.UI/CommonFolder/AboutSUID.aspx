<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="AboutSUID.aspx.cs" Inherits="SUIDSystem.UI.CommonFolder.AboutSUID" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="../Scripts/jquery-2.1.0.min.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPlaceHolder" runat="server">
     <div>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Image ID="Image3" ImageUrl="~/MainImages/Images/about-hed.png" runat="server" Width="80%" Height="300px"/>
        </div>
            <h3 style="text-align:center;color:#0094ff">Project Introduction</h3>
            <p style="font-size:medium">This system is used to create a tool that manages the handling of Entrance Exam verification, counselling Certificate verification and Interview candidate verification using the student unique identification associated with each individual.</p>
            <p style="font-size:medium">The application deals with allowing the Student to register for a Student unique identity. The Student Unique Identity (SUID) is supported with a pin number. </p>
            <p style="font-size:medium">Student’s being issued Hall tickets or those have who are eligible for counseling they are associated with the SUID. This helps the Student to write exam or attending the counselling without having the Certificates.</p>
            <p style="font-size:medium">The SUID will provide all Certificates to access at Counselling or Interview from the Student Identification server. The details and profile of the Student’s with the photo and copy of the certificates can be viewed as part of Verification at all check times.</p>
            <p style="font-size:medium">The all department can use the application to trace or stop any Fake Students at any verification time. The all department people will get the database access of the SUID they can see and verified the details of the person. If there is any fake person they can make the person disqualified for the place.</p>
            <p style="font-size:medium">The Student uses the SUID scheme to apply for Entrance Exam and counselling. The details of the Students are picked from the registration database. The Student is provided with the test details by the application. The details contain the location, date and time information. The test details are provided to the Student on completion of the test. </p>
    <hr />
        <h3 style="text-align:center;color:#0094ff">SYSTEM REQUIREMENT</h3>
        <h4>Software Requirement</h4>
        <asp:BulletedList ID="BulletedList1" runat="server" Width="658px">
                <asp:ListItem> Operating System	: Windows XP or Higher	</asp:ListItem>
                <asp:ListItem>Platform	: .NET</asp:ListItem>
                <asp:ListItem>Scripting 	: JSP, CSS</asp:ListItem>
                <asp:ListItem>     Backend	: Microsoft -Sql server</asp:ListItem>
                <asp:ListItem>Web Server	: IIS</asp:ListItem>
            </asp:BulletedList>

        <h4>Hardware Requirement(Minimum)</h4>
        <asp:BulletedList ID="BulletedList2" runat="server" Width="658px">
                <asp:ListItem> Processor			: PIV	</asp:ListItem>
                <asp:ListItem>Ram				: 512 Mb</asp:ListItem>
                <asp:ListItem>Hard Disk			: 10 GB Space</asp:ListItem>
            </asp:BulletedList>
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
