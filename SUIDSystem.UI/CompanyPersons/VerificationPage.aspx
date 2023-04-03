<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="VerificationPage.aspx.cs" Inherits="SUIDSystem.UI.CompanyPersons.VerificationPage" %>
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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
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
            <%--<asp:BoundField DataField="Scandcert" HeaderText="Scandcert" SortExpression="Scandcert" />--%>
            <asp:TemplateField HeaderText="ScanedCertificate" SortExpression="ScanedCertificate">
                        <ItemTemplate>
                            <asp:Image ID="Photo" ImageUrl='<%# Eval("Scandcert","~/StudentCertificates/{0}")%>' Height="180px" Width="150px" runat="server" CssClass="img" />
                        </ItemTemplate>
                    </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="fetchcertficates" TypeName="SUIDSystem.DAL.CompanyVerificationOperations">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtverificatin" Name="suidno" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <br />
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavigationPlaceHolder" runat="server">
    <div>
<ul class="nav nav-pills nav-stacked" style="max-width: 300px;">
    <li><a href="../CompanyPersons/Company.aspx">Company Home</a></li>
    <li><a href="../CompanyPersons/SearchStatus.aspx">Search Status</a></li>
    <li class="active"><a href="../CompanyPersons/VerificationPage.aspx">Search Profile</a></li>
</ul>
    </div>
</asp:Content>
