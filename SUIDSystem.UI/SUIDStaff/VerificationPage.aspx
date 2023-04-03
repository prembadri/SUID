<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="VerificationPage.aspx.cs" Inherits="SUIDSystem.UI.SUIDStaff.VerificationPage" %>
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
    <div class="panel panel-success" style="height: auto">
        <div class="panel-heading">
            <h3 class="panel-title">Verification Panal</h3>
        </div>
        <div class="panel-body" style="height:auto">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" PageSize="1">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
                    <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="DateofBirth" HeaderText="DateofBirth" SortExpression="DateofBirth" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                    <asp:BoundField DataField="Pincode" HeaderText="Pincode" SortExpression="Pincode" />
                    <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
                    <%-- <asp:BoundField DataField="Photo" HeaderText="Photo" SortExpression="Photo" />--%>
                    <asp:TemplateField HeaderText="Photo" SortExpression="Photo">
                        <ItemTemplate>
                            <asp:Image ID="Photo" ImageUrl='<%# Eval("Photo","~/StudentPhotos/{0}")%>' Height="90px" Width="100px" runat="server"/>
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
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="FetchStudent" TypeName="SUIDSystem.DAL.StudentOperations">
                <SelectParameters>
                    <asp:QueryStringParameter Name="StudentID" QueryStringField="StudentID" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
</div>
    <div class="panel panel-info" style="height:auto">
  <div class="panel-heading">
    <h3 class="panel-title">Certificates </h3>
  </div>
  <div class="panel-body" style="height:auto">
    
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="ObjectDataSource2" ForeColor="Black" GridLines="Vertical" AllowPaging="True">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="StudentCertificateID" HeaderText="StudentCertificateID" SortExpression="StudentCertificateID" />
                <asp:BoundField DataField="BordorUniversityName" HeaderText="BordorUniversityName" SortExpression="BordorUniversityName" />
                <asp:BoundField DataField="RollNumber" HeaderText="RollNumber" SortExpression="RollNumber" />
                <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
                <asp:BoundField DataField="TotalMarks" HeaderText="TotalMarks" SortExpression="TotalMarks" />
                <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
                <%--<asp:BoundField DataField="ScanedCertificate" HeaderText="ScanedCertificate" SortExpression="ScanedCertificate" />--%>
                <asp:TemplateField HeaderText="ScanedCertificate" SortExpression="ScanedCertificate">
                        <ItemTemplate>
                            <asp:Image ID="Photo" ImageUrl='<%# Eval("ScanedCertificate","~/StudentCertificates/{0}")%>' Height="180px" Width="150px" runat="server" CssClass="img" />
                        </ItemTemplate>
                    </asp:TemplateField>
                <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="fetchcertificates" TypeName="SUIDSystem.DAL.StudentCertificatesOperations">
            <SelectParameters>
                <asp:QueryStringParameter Name="certID" QueryStringField="StudentID" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
  </div>
       <br /><br />
       
    <div class="panel panel-warning" style="height:auto">
  <div class="panel-heading">
    <h3 class="panel-title">Education Department Certificates</h3>
  </div>
  <div class="panel-body" style="height:auto">
    <table>
          <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>
                  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                  <asp:Button ID="Button1" runat="server" Text="Button" />
                  <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource3" ForeColor="#333333" GridLines="None">
                      <AlternatingRowStyle BackColor="White" />
                      <Columns>
                          <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                          <asp:BoundField DataField="BordorUniversityName" HeaderText="BordorUniversityName" SortExpression="BordorUniversityName" />
                          <asp:BoundField DataField="RollNumber" HeaderText="RollNumber" SortExpression="RollNumber" />
                          <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
                          <asp:BoundField DataField="TotalMarks" HeaderText="TotalMarks" SortExpression="TotalMarks" />
                          <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
                          <asp:BoundField DataField="ScanedCertificate" HeaderText="ScanedCertificate" SortExpression="ScanedCertificate" />
                          <asp:BoundField DataField="QualificationID" HeaderText="QualificationID" SortExpression="QualificationID" />
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
                  <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" SelectMethod="fetchAllCertficates" TypeName="SUIDSystem.DAL.EducationCertficatesOperations">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="TextBox1" Name="rollnumber" PropertyName="Text" Type="String" />
                      </SelectParameters>
                  </asp:ObjectDataSource>
              </td>
          </tr>
      </table>
      <br />
      <asp:Button Text="Genune Status Report" class="btn btn-success" runat="server" id="genune" OnClick="genune_Click"/>
  </div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavigationPlaceHolder" runat="server">
        <div>
<ul class="nav nav-pills nav-stacked" style="max-width: 300px;">
    <li ><a href="../SUIDStaff/SUIDStaff.aspx">SUID Staff Home</a></li>
    <li class="active"><a href="../SUIDStaff/Verification.aspx">Want To Do</a></li>
    <li><a href="../SUIDStaff/StatusGeneration.aspx">Generate Status Report</a></li>
    <li><a href="../SUIDStaff/UpdateStatusReport.aspx">Update Status Report</a></li>
    <li><a href="../SUIDStaff/NumberandEmail.aspx">Generate SUID Number</a></li>
    <li><a href="../SUIDStaff/SearchStatus.aspx">Search Status</a></li>
</ul>
    </div>
</asp:Content>
