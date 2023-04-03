<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="StudentRegisteration.aspx.cs" Inherits="SUIDSystem.UI.Student.StudentRegisteration" %>
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
     <div class="panel panel-success" style="height:auto">
  <div class="panel-heading">
    <h3 class="panel-title">Student Registeration</h3>
  </div>
  <div class="panel-body" style="height:auto">
      <table style="width:100%">
          <tr>
              <td class="auto-style10"><asp:Label ID="Label3" Text="Student Name" runat="server" For="txtStudentName"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtStudentName" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>

          <tr>
              <td class="auto-style10"><asp:Label ID="Label4" Text="Father Name" runat="server" For="txtFatherName"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtFatherName" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>
          <tr>
              <td class="auto-style10"><asp:Label ID="Label5" Text="Mother Name" runat="server" For="txtMotherName"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtMotherName" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>
          <tr>
              <td class="auto-style10"><asp:Label ID="Labe1" Text="Gender" runat="server" For="txtGender"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtGender" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>

          <tr>
              <td class="auto-style10"><asp:Label ID="Label2" Text="Date Of Birth" runat="server" For="txtDOB"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtDOB" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>
          <tr>
              <td class="auto-style10"><asp:Label ID="Label6" Text="Age" runat="server" For="txtAge"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtAge" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>
          <tr>
              <td class="auto-style10"><asp:Label ID="Label1" Text="Current Address" runat="server" For="txtAddress"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtAddress" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>
          

          <tr>
              <td class="auto-style10"><asp:Label ID="Label7" Text="City" runat="server" For="txtCity"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtCity" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>
          <tr>
              <td class="auto-style10"><asp:Label ID="Label8" Text="State" runat="server" For="txtState"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtState" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>      
          
          <tr>
              <td class="auto-style10"><asp:Label ID="Label9" Text="Country" runat="server" For="txtCountry"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtCountry" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>
          <tr>
              <td class="auto-style10"><asp:Label ID="Label10" Text="PinCode" runat="server" For="txtPinCode"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtPinCode" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>
          <tr>
              <td class="auto-style10"><asp:Label ID="Label17" Text="Email ID" runat="server" /></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtEmailid" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>
          <tr>
              <td class="auto-style10"><asp:Label ID="Label11" Text="Contact Number" runat="server" For="txtContactNumber"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtContactNumber" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>

          <tr>
              <td class="auto-style10"><asp:Label ID="Label12" Text="Pan Card ID" runat="server" For="txtPanCardID"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtPanCardID" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>
          <tr>
              <td class="auto-style10"><asp:Label ID="Label13" Text="Driving Licence" runat="server" For="txtDrivingLicence"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtDrivingLicence" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>
          <tr>
              <td class="auto-style10"><asp:Label ID="Label14" Text="Pass port ID" runat="server" For="txtPassportID"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtPassportID" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>
          
          <tr>
              <td class="auto-style10"><asp:Label ID="Label15" Text="Photo" runat="server" For="upPhoto"/></td>
              <td class="auto-style8">
                  <asp:FileUpload ID="upPhoto" runat="server" /></td>
              <td class="auto-style9"></td>
          </tr>
         
      </table><br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
                <asp:Button ID="btnStudentAdd" Text="Add Student" runat="server" OnClick="btnStudentAdd_Click" class="btn btn-success"/>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
                
  </div>
    </div>
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
