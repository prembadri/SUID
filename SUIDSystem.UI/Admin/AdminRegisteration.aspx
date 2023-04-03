<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="AdminRegisteration.aspx.cs" Inherits="SUIDSystem.UI.Admin.AdminRegisteration" %>
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
    <h3 class="panel-title">Adding Department's</h3>
  </div>
  <div class="panel-body">
      <table style="width:100%">
        

          <tr>
              <td class="auto-style10"><asp:Label ID="Label3" Text="Department ID" runat="server"/></td>
              <td class="auto-style8">
                  <asp:DropDownList ID="DdlDept" runat="server" class="form-control" Width="50%" AutoPostBack="True" DataSourceID="ObjectDataSource2" DataTextField="DepartmentName" DataValueField="DepartmentID" ></asp:DropDownList>
                  
                  <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="Fetchdepartmernt" TypeName="SUIDSystem.DAL.DepartmentOperations"></asp:ObjectDataSource>
                  
                  </td>
         </tr>

          <tr>
              <td class="auto-style10"><asp:Label ID="Label2" Text="Admin Name" runat="server" /></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtAdminName" ForeColor="Black" Width="50%" /></td>
              <td class="auto-style9"></td>
          </tr>

          
      </table>
      <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnAdminreg" Text="ADD Admin" class="btn btn-success" runat="server" OnClick="btnAdminreg_Click" />
      
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupdateanddelete" Text="Update & Delete of Admin" class="btn btn-success" runat="server" OnClick="btnupdateanddelete_Click" />
      
  </div> 
         
      
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavigationPlaceHolder" runat="server">
     <div>
<ul class="nav nav-pills nav-stacked" style="max-width: 300px;">
    <li ><a href="../Admin/Admin.aspx">Main Admin</a></li>
    <li><a href="../Admin/Department.aspx">Department Registeration</a></li>
    <li class="active"><a href="../Admin/AdminRegisteration.aspx">Admin Registeration</a></li>
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
