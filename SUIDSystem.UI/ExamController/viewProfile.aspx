<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="viewProfile.aspx.cs" Inherits="SUIDSystem.UI.ExamController.viewProfile" %>
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
         <asp:TextBox ID="txtverificatin" runat="server"></asp:TextBox>
    <asp:Button ID="btnProfile" runat="server" Text="profile" OnClick="btnProfile_Click" />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:BoundField DataField="StdNo" HeaderText="StdNo" SortExpression="StdNo" />
            <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
            <%--<asp:BoundField DataField="Photo" HeaderText="Photo" SortExpression="Photo" />--%>
             <asp:TemplateField HeaderText="Photo" SortExpression="Photo">
                        <ItemTemplate>
                            <asp:Image ID="Photo" ImageUrl='<%# Eval("Photo","~/StudentPhotos/{0}")%>' Height="90px" Width="100px" runat="server"/>
                        </ItemTemplate>
                    </asp:TemplateField>
            <asp:BoundField DataField="qulificationname" HeaderText="qulificationname" SortExpression="qulificationname" />
            <asp:BoundField DataField="TotalMarks" HeaderText="TotalMarks" SortExpression="TotalMarks" />
            <asp:BoundField DataField="Scandcert" HeaderText="Scandcert" SortExpression="Scandcert" />
            <asp:TemplateField HeaderText="ScanedCertificate" SortExpression="ScanedCertificate">
                        <ItemTemplate>
                            <asp:Image ID="Photo" ImageUrl='<%# Eval("Scandcert","~/StudentCertificates/{0}")%>' Height="180px" Width="150px" runat="server" CssClass="img" />
                        </ItemTemplate>
                    </asp:TemplateField>
        </Columns>
         </asp:GridView>
         <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="fetchcertficates" TypeName="SUIDSystem.DAL.CompanyVerificationOperations">
             <SelectParameters>
                 <asp:ControlParameter ControlID="txtverificatin" Name="suidno" PropertyName="Text" Type="String" />
             </SelectParameters>
         </asp:ObjectDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavigationPlaceHolder" runat="server">
     <div>
<ul class="nav nav-pills nav-stacked" style="max-width: 300px;">
    <li><a href="../ExamController/ExamController.aspx">Exam Controllor Home</a></li>
    <li><a href="../ExamController/InsertSuid.aspx">Insert Students</a></li>
    <li><a href="../ExamController/SearchStatus.aspx">Search Status</a></li>
    <li class="active"><a href="../ExamController/viewProfile.aspx">View Profile</a></li>
</ul>
    </div>
</asp:Content>
