<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="SUIDSystem.UI.Admin.Department" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../Scripts/jquery-2.1.0.min.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPlaceHolder" runat="server">
    <div class="panel panel-success">
  <div class="panel-heading">
    <h3 class="panel-title">Adding Department's</h3>
  </div>
  <div class="panel-body">
      <table style="width:100%">
        

          <tr>
              <td class="auto-style10"><asp:Label ID="Label3" Text="Dept. Name" runat="server" For="txtDeptName"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtDeptName" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>
      </table>
      <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btndeptAdding" Text="ADDING DEPARTMENT" runat="server" OnClick="btndeptAdding_Click" />
      &nbsp;<asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
          <AlternatingRowStyle BackColor="White" />
          <Columns>
              <asp:BoundField DataField="DepartmentID" HeaderText="DepartmentID" SortExpression="DepartmentID" />
              <asp:BoundField DataField="DepartmentName" HeaderText="DepartmentName" SortExpression="DepartmentName" />
          </Columns>
          <EditRowStyle BackColor="#2461BF" />
          <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
          <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
          <RowStyle BackColor="#EFF3FB" />
          <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
          <SortedAscendingCellStyle BackColor="#F5F7FB" />
          <SortedAscendingHeaderStyle BackColor="#6D95E1" />
          <SortedDescendingCellStyle BackColor="#E9EBEF" />
          <SortedDescendingHeaderStyle BackColor="#4870BE" />
      </asp:GridView>
      <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="Fetchdepartmernt" TypeName="SUIDSystem.DAL.DepartmentOperations"></asp:ObjectDataSource>
  </div> 

</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavigationPlaceHolder" runat="server">
     <div>
<ul class="nav nav-pills nav-stacked" style="max-width: 300px;">
    <li ><a href="../Admin/Admin.aspx">Main Admin</a></li>
    <li class="active"><a href="../Admin/Department.aspx">Department Registeration</a></li>
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
