<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Verification.aspx.cs" Inherits="SUIDSystem.UI.SUIDStaff.Verification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPlaceHolder" runat="server">
     <div class="panel panel-success">
  <div class="panel-heading">
    <h3 class="panel-title">Verification Status</h3>
  </div>
  <div class="panel-body">
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
          <Columns>
              <asp:BoundField DataField="StatusReportID" HeaderText="StatusReportID" SortExpression="StatusReportID" />
              <asp:BoundField DataField="RemarksonStatus" HeaderText="RemarksonStatus" SortExpression="RemarksonStatus" />
              <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
              <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
              <asp:BoundField DataField="SUIDStaffID" HeaderText="SUIDStaffID" SortExpression="SUIDStaffID" />
          </Columns>
      </asp:GridView>
      <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="fetchLastStatusREport" TypeName="SUIDSystem.DAL.StatusReportGenerater"></asp:ObjectDataSource>
  </div>
</div>
    <div class="panel panel-warning">
  <div class="panel-heading">
    <h3 class="panel-title">Panel warning</h3>
  </div>
  <div class="panel-body" style="height:auto">
      <table>
          <tr style="width:100%">
              <td style="width:30%"><asp:Label ID="Label3" Text="Last Student ID" runat="server" For="txtStaffID"/></td>
              <td style="width:60%"><asp:TextBox runat="server"  id="StaffID" class="form-control" Width="150px"/></td>
              <td><asp:Button Text="Search" runat="server" id="btnSearch" OnClick="btnSearch_Click"/> </td>
          </tr>
          
      </table>
      <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource2" AllowPaging="True" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
              <Columns>
                  <asp:CommandField ShowSelectButton="True" />
                  <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
                  <asp:BoundField DataField="EnrolementDateTime" HeaderText="EnrolementDateTime" SortExpression="EnrolementDateTime" />
                  <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
                  <asp:BoundField DataField="DateofBirth" HeaderText="DateofBirth" SortExpression="DateofBirth" />
                  <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                  <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                  <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                  <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                  <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
                  <%--<asp:BoundField DataField="Photo" HeaderText="Photo" SortExpression="Photo" />--%>
                  <asp:TemplateField HeaderText="Photo" SortExpression="Photo">
                                <ItemTemplate>
                                    <asp:Image id="Photo" ImageUrl='<%# Eval("Photo","~/StudentPhotos/{0}")%>' Height="150px" Width="110px" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
              </Columns>
              </asp:GridView>
              <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="fetchStudents" TypeName="SUIDSystem.DAL.VirificationOperations">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="StaffID" Name="CustomerID" PropertyName="Text" Type="Int32" />
                  </SelectParameters>
              </asp:ObjectDataSource>
              
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
