<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="InsertSuid.aspx.cs" Inherits="SUIDSystem.UI.ExamController.InsertSuid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="../Scripts/jquery-2.1.0.min.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>


     <script  type="text/javascript" >
         $().ready(function () {
             //alert("I am in the ready");
             //alert($("img").length);
             $(".img").mouseover(function () { $(this).width(350); $(this).height(400) });
             $(".img").mouseleave(function () { $(this).width(100); $(this).height(150) });
         })
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPlaceHolder" runat="server">
    <table>
        <tr>
            <td><asp:Label Text="Student ID" runat="server" /></td>
            <td><asp:TextBox ID="txtSID" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label Text="SUID Number" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td><asp:TextBox ID="txtsuid" runat="server" class="form-control"></asp:TextBox></td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnsubmit" runat="server" Text="submit" OnClick="btnsubmit_Click" CssClass="btn-success" />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:BoundField DataField="suidno" HeaderText="suidno" SortExpression="suidno" />
            <asp:BoundField DataField="studentName" HeaderText="studentName" SortExpression="studentName" />
            <asp:BoundField DataField="boardName" HeaderText="boardName" SortExpression="boardName" />
            <asp:BoundField DataField="rollNo" HeaderText="rollNo" SortExpression="rollNo" />
            <%--<asp:BoundField DataField="certificate" HeaderText="certificate" SortExpression="certificate" />--%>
            <asp:TemplateField HeaderText="ScanedCertificate" SortExpression="ScanedCertificate">
                        <ItemTemplate>
                            <asp:Image ID="Photo" ImageUrl='<%# Eval("certificate","~/StudentCertificates/{0}")%>' Height="180px" Width="150px" runat="server" CssClass="img" />
                        </ItemTemplate>
                    </asp:TemplateField>
            <asp:BoundField DataField="grade" HeaderText="grade" SortExpression="grade" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="fetchstudent" TypeName="SUIDSystem.DAL.ExamVerificationOperations"></asp:ObjectDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavigationPlaceHolder" runat="server">
    <div>
<ul class="nav nav-pills nav-stacked" style="max-width: 300px;">
    <li><a href="../ExamController/ExamController.aspx">Exam Controllor Home</a></li>
    <li class="active"><a href="../ExamController/InsertSuid.aspx">Insert Students</a></li>
    <li><a href="../ExamController/SearchStatus.aspx">Search Status</a></li>
    <li ><a href="../ExamController/viewProfile.aspx">View Profile</a></li>
</ul>
    </div>
</asp:Content>
