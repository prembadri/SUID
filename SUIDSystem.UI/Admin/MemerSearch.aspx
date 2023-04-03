<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="MemerSearch.aspx.cs" Inherits="SUIDSystem.UI.Admin.MemerSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="../Scripts/jquery-2.1.0.min.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPlaceHolder" runat="server">

     <div style="width:100%; height: 366px;">
        
         
        <div style="float:left;width:33%">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h4>Staff Member Search</h4>
                </div>
                <div class="panel-body">
                    <asp:Label ID="Label3" Text="Staff ID" runat="server" For="txtStaffID"/><br />
                    <asp:TextBox runat="server" id="StaffID" class="form-control" Width="150px"/><br />
                    <asp:Button Text="Search" runat="server" id="btnstaffSearch" OnClick="btnstaffSearch_Click"/>  
                    <asp:DetailsView ID="DetailsView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                        <EditRowStyle BackColor="#999999" />
                        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    </asp:DetailsView>
                    <br />
                </div>
            </div>
        </div>
        <div style="float:left;width:33%">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h4>Exam Controller Search</h4>
                </div>
                <div class="panel-body">
                    <asp:Label ID="Label1" Text="Exam Controller ID" runat="server" For="txtExamControllerID"/><br />
                    <asp:TextBox runat="server" id="txtExamControllerID" class="form-control" Width="150px"/><br />
                    <asp:Button Text="Search" runat="server" id="btnExamControllerSearch" OnClick="btnExamControllerSearch_Click"/>  
                    <asp:DetailsView ID="DetailsView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                        <EditRowStyle BackColor="#999999" />
                        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    </asp:DetailsView>
                    <br />
                </div>
            </div>
        </div>
        <div style="float:right;width:30%">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h4>Company's Search</h4>
                </div>
                <div class="panel-body">
                    <asp:Label ID="Label2" Text="Company Employee ID" runat="server" For="txtCompanyEmployeeID"/><br />
                    <asp:TextBox runat="server" id="txtCompanyEmployeeID" class="form-control" Width="150px"/><br />
                    <asp:Button Text="Search" runat="server" id="btnCompanySearch" OnClick="btnCompanySearch_Click"/>  
                    <asp:DetailsView ID="DetailsView3" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                        <EditRowStyle BackColor="#999999" />
                        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    </asp:DetailsView>
                    <br />
                </div>
            </div>
        </div>
       </div>

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
    <li class="active"><a href="../Admin/MemerSearch.aspx">Members Search</a></li>

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
