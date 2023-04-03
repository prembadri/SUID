<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="NumberandEmail.aspx.cs" Inherits="SUIDSystem.UI.SUIDStaff.NumberandEmail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPlaceHolder" runat="server">
     <table>
        
        <tr style="width:100%">
            <td style="width:25%"><asp:Label ID="Label2" Text="StudentID" runat="server" /></td>
            <td style="width:25%"><asp:TextBox runat="server" id="txtstudentID" Width="50%"  CssClass="form-control"/></td>
            <td style="width:25%"><asp:Button ID="Button2" runat="server" Text="Add the Unique Number" OnClick="Button2_Click" /></td>
            <td></td>
        </tr>
    </table>
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
