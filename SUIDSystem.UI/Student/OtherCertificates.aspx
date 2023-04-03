<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="OtherCertificates.aspx.cs" Inherits="SUIDSystem.UI.Student.OtherCertificates" %>
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
    <h3 class="panel-title">10+2 Certificates Uploading</h3>
  </div>
  <div class="panel-body" style="height:auto">
      <table style="width:100%">
          <tr>
              <td class="auto-style10"><asp:Label ID="Label1" Text="Certificate ID" runat="server" For="txtCertificateID"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtCertificateID" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>
          <tr>
              <td class="auto-style10"><asp:Label ID="Label3" Text="Board Name" runat="server" For="txtBoardName"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtBoardName" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>

          <tr>
              <td class="auto-style10"><asp:Label ID="Label4" Text="Roll Number" runat="server" For="txtRollNumber"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtRollNumber" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>
          <tr>
              <td class="auto-style10"><asp:Label ID="Label5" Text="Studnet Name" runat="server" For="txtStudentName"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtStudentName" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>
          <tr>
              <td class="auto-style10"><asp:Label ID="Labe1" Text="Total Marks" runat="server" For="txtTotalMarks"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtTotalMarks" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>

          <tr>
              <td class="auto-style10"><asp:Label ID="Label2" Text="Grade" runat="server" For="txtGrade"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtGrade" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>
          <tr>
              <td class="auto-style10"><asp:Label ID="Label6" Text="Student ID Number" runat="server" For="txtStudnetID"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtStudnetID" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>
    
          <tr>
              <td class="auto-style10"><asp:Label ID="Label15" Text="Scaned Certificate" runat="server" For="upCertificate"/></td>
              <td class="auto-style8">
                  <asp:FileUpload ID="upCertificate" runat="server" /></td>
              <td class="auto-style9"></td>
          </tr>
         
      </table><br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
                <asp:Button ID="btnUpdate" Text="Update" runat="server" OnClick="btnUpdate_Click" class="btn btn-success"/>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
                <asp:Button ID="BtnDelete" Text="Delete" runat="server" OnClick="BtnDelete_Click" class="btn btn-success" />
      </div></div> 
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
