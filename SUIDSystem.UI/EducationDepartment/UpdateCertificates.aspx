<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="UpdateCertificates.aspx.cs" Inherits="SUIDSystem.UI.EducationDepartment.UpdateCertificates" %>
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
        <div class="panel-heading"><h3 class="panel-title">Adding Certificates</h3></div>
        <div class="panel-body" style="height:auto"><table style="width:100%">
            <tr>
                <td><asp:Label ID="Label2" Text="Qualification" runat="server" For="ddlqulifications"/></td>
                <td><asp:DropDownList ID="ddlqulifications" Width="50%" runat="server" DataSourceID="ObjectDataSource1" DataTextField="QualificationName" DataValueField="QulificationID" class="form-control"></asp:DropDownList>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="fetchQulification" TypeName="SUIDSystem.DAL.QulificationOperations"></asp:ObjectDataSource>
                </td>
            </tr>
             <tr>
              <td class="auto-style10"><asp:Label ID="Label7" Text="Certificate ID" runat="server" For="txtCerti"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtCerti" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>

            <tr>
              <td class="auto-style10"><asp:Label ID="Label3" Text="Board or University Name" runat="server" For="txtBoardName"/></td>
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
              <td class="auto-style10"><asp:Label ID="Label1" Text="Grade" runat="server" For="txtGrade"/></td>
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
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
            <asp:Button ID="btnDelete" Text="Delete" runat="server" OnClick="btnDelete_Click" class="btn btn-success"/>
    </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavigationPlaceHolder" runat="server">
     <div>
<ul class="nav nav-pills nav-stacked" style="max-width: 300px;">
    <li ><a href="../EducationDepartment/EducationDepartment.aspx">Education Department Home</a></li>
    <li ><a href="../EducationDepartment/Qulification.aspx">Adding Qualification </a></li>
    <li ><a href="../EducationDepartment/UploadCertificates.aspx">Upload Certificates</a></li>
    <li class="active"><a href="../EducationDepartment/UploadCertificates.aspx">Update Certificates</a></li>
</ul>

    </div>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
