<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="UpdateDeleteExamController.aspx.cs" Inherits="SUIDSystem.UI.Admin.UpdateDeleteExamController" %>
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
    
    <div class="panel panel-success">
  <div class="panel-heading">
    <h3 class="panel-title">Exam Controller Update or Remove</h3>
  </div>
  <div class="panel-body">
      <table style="width:100%">
          
          <tr>
              <td class="auto-style10"><asp:Label ID="Label2" Text="Department" runat="server" For="ddlExamDepartment"/></td>
              <td class="auto-style8"><asp:DropDownList ID="ddlExamDepartment" runat="server" class="form-control" Width="50%" DataSourceID="ObjectDataSource1" DataTextField="DepartmentName" DataValueField="DepartmentID"></asp:DropDownList>
                  <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="Fetchdepartmernt" TypeName="SUIDSystem.DAL.DepartmentOperations"></asp:ObjectDataSource>
              </td>
              <td class="auto-style9"></td>
          </tr>
          
          <tr>
              <td class="auto-style10"><asp:Label ID="Label1" Text="Exam Controller ID" runat="server" For="txtExamControllerID"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtExamControllerID" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>

          <tr>
              <td class="auto-style10"><asp:Label ID="Label3" Text="Exam Controller Name" runat="server" For="txtExamControllerName"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtExamControllerName" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>

          <tr>
              <td class="auto-style10"><asp:Label ID="Label4" Text="Location" runat="server" For="txtExamControllerLocation"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtExamControllerLocation" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>
          <tr>
              <td class="auto-style10"><asp:Label ID="Label5" Text="Name of the board or University" runat="server" For="txtbordoruniversity"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtbordoruniversity" ForeColor="Black" Width="50%" class="form-control"/></td>
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
    <li ><a href="../Admin/Admin.aspx">Main Admin</a></li>
    <li><a href="../Admin/Department.aspx">Department Registeration</a></li>
    <li><a href="../Admin/AdminRegisteration.aspx">Admin Registeration</a></li>
    <li><a href="../Admin/SUIDStaffRegisteration.aspx">SUID Staff Registeration</a></li>
    <li><a href="../Admin/ExamControlerRegisteration.aspx">Exam Controller Registeration</a></li>
    <li><a href="../Admin/CompanyRegisteration.aspx">Company's Registeration</a></li>
    <li><a href="../Admin/MemerSearch.aspx">Members Search</a></li>

    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">
      Update or Delete<span class="caret"></span>
    </a>
        <ul class="dropdown-menu">
      <li><a href="../Admin/UpdateDeleteAdmin.aspx">Admin</a></li>
      <li><a href="../Admin/UpdateDeleteSUIDStaff.aspx">SUID Staff</a></li>
      <li><a href="../Admin/UpdateDeleteExamController.aspx">Exam Controller</a></li>
      <li><a href="../Admin/UpdateDeleteCompanyPerson.aspx">Company's</a></li>
    </ul></li>
</ul>
    </div>
</asp:Content>
