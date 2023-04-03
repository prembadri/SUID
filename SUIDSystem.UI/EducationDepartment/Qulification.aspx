<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Qulification.aspx.cs" Inherits="SUIDSystem.UI.EducationDepartment.Qulification" %>
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
    <h3 class="panel-title">Adding Qualification's</h3>
  </div>
  <div class="panel-body" style="height:auto">
      <table style="width:100%">
        

          <tr>
              <td class="auto-style10"><asp:Label ID="Label3" Text="Qualification Name" runat="server" For="txtQualificationName"/></td>
              <td class="auto-style8"><asp:TextBox runat="server" id="txtQualificationName" ForeColor="Black" Width="50%" class="form-control"/></td>
              <td class="auto-style9"></td>
          </tr>
      </table>
      <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnQualificationAdding" class="form-control" Text="ADDING Qualification" runat="server" OnClick="btnQualificationAdding_Click" />
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None">
          <AlternatingRowStyle BackColor="White" />
          <Columns>
              <asp:BoundField DataField="QulificationID" HeaderText="QulificationID" SortExpression="QulificationID" />
              <asp:BoundField DataField="QualificationName" HeaderText="QualificationName" SortExpression="QualificationName" />
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
      <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="fetchQulification" TypeName="SUIDSystem.DAL.QulificationOperations"></asp:ObjectDataSource>
      <br />

  </div> 

</div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavigationPlaceHolder" runat="server">
     <div>
<ul class="nav nav-pills nav-stacked" style="max-width: 300px;">
    <li ><a href="../EducationDepartment/EducationDepartment.aspx">Education Department Home</a></li>
    <li class="active"><a href="../EducationDepartment/Qulification.aspx">Adding Qualification </a></li>
    <li><a href="../EducationDepartment/UploadCertificates.aspx">Upload Certificates</a></li>
    <li><a href="../EducationDepartment/UploadCertificates.aspx">Update Certificates</a></li>
</ul>

    </div>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
