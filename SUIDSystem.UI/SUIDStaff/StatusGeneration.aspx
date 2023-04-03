<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="StatusGeneration.aspx.cs" Inherits="SUIDSystem.UI.SUIDStaff.StatusGeneration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPlaceHolder" runat="server">
    <div class="panel panel-success" style="height:auto">
  <div class="panel-heading">
    <h3 class="panel-title">Status Report Generation</h3>
  </div>
  <div class="panel-body" style="height:auto">
      <table style="width:100%">
          <tr>
              <td class="auto-style10"><asp:Label ID="Label3" Text="Student ID" runat="server"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtstudentID" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>

          <tr>
              <td class="auto-style10"><asp:Label ID="Label4" Text="Staff ID" runat="server" For="txtRollNumber"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtStaffID" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>
          <tr>
              <td class="auto-style10"><asp:Label ID="Label5" Text="Status" runat="server" For="txtStudentName"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtStatus" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>
          <tr>
              <td class="auto-style10"><asp:Label ID="Labe1" Text="Remarks" runat="server" For="txtTotalMarks"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtRemarks" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>
           <tr>
              <td class="auto-style10"><asp:Label ID="Label1" Text="Uploaded Files" runat="server" For="txtTotalMarks"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtFiles" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>
      </table><br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
                <asp:Button ID="InsertStatus" Text="InsertStatus" runat="server" OnClick="InsertStatus_Click" class="btn btn-success"/>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
                <asp:Button ID="GoToGenerater" Text="Generate SUID Number" runat="server" OnClick="GoToGenerater_Click" class="btn btn-success" />
      </div></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavigationPlaceHolder" runat="server">
        <div>
<ul class="nav nav-pills nav-stacked" style="max-width: 300px;">
    <li ><a href="../SUIDStaff/SUIDStaff.aspx">SUID Staff Home</a></li>
    <li><a href="../SUIDStaff/Verification.aspx">Want To Do</a></li>
    <li><a href="../SUIDStaff/StatusGeneration.aspx">Generate Status Report</a></li>
    <li><a href="../SUIDStaff/UpdateStatusReport.aspx">Update Status Report</a></li>
    <li class="active"><a href="../SUIDStaff/NumberandEmail.aspx">Generate SUID Number</a></li>
    <li><a href="../SUIDStaff/SearchStatus.aspx">Search Status</a></li>
</ul>
    </div>
</asp:Content>
