<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="DownLoadSUIDCard.aspx.cs" Inherits="SUIDSystem.UI.Student.DownLoadSUIDCard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="../Scripts/jquery-2.1.0.min.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script type = "text/javascript">
        function PrintPanel() {
            var panel = document.getElementById("<%=pnlContents.ClientID %>");
            var printWindow = window.open('', '', 'height=400,width=800');
            //printWindow.document.write('<html><head><title>SUID Numer</title>');
            printWindow.document.write('</head><body >');
            printWindow.document.write(panel.innerHTML);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            setTimeout(function () {
                printWindow.print();
            }, 500);
            return false;
        }
    </script>
        </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPlaceHolder" runat="server">
   
    <div class="panel panel-primary" style="height:auto">
  <div class="panel-heading">
    <h3 class="panel-title">DownLoad SUID</h3>
  </div>
  <div class="panel-body" style="height:auto">
      <table>
          <tr>
              <td>Akno NO</td>
              <td>
                  <asp:TextBox runat="server" id="txtStudentID"/></td>
          </tr>
          <tr>
              <td>Student Name</td>
              <td>
                  <asp:TextBox runat="server" id="txtStudentName"/></td>
          </tr>
          <tr>
              <td>FatherName</td>
              <td>
                  <asp:TextBox runat="server" ID="txtFatherName" /></td>
          </tr>
          
      </table>
      <asp:Button ID="Button1" Text="Download" runat="server" CssClass="btn-primary"/>
       <asp:Panel runat="server" id="pnlContents">
      <asp:DataList ID="DataList3" runat="server" DataSourceID="ObjectDataSource2">
        <HeaderTemplate>
            <asp:Image ID="Image1" ImageUrl="~/MainImages/baner.jpg" runat="server" Height="150px" Width="800px"/>
        </HeaderTemplate>
          <ItemTemplate>
              <table>
                  <tr>
                      <td><h3>SUID Number:</h3></td>
                         <td> <asp:Label ID="lblSUIDNo" runat="server" Text='<%#Eval("SUIDNo") %>' Font-Bold="true" Font-Size="Large" ></asp:Label></td>
                  </tr>
              </table>
          </ItemTemplate>  
      </asp:DataList>
      <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="fetchSUIDno" TypeName="SUIDSystem.DAL.UidNumberGenerater">
          <SelectParameters>
              <asp:ControlParameter ControlID="txtStudentID" Name="suid" PropertyName="Text" Type="Int32" />
          </SelectParameters>
      </asp:ObjectDataSource>
    <asp:DataList ID="DataList2" runat="server" DataSourceID="ObjectDataSource3">
                        <ItemTemplate>
                            <div><div style="float:left">
                                <table>
                                <tr>
                                    <td rowspan="5">
                                    <asp:Image  id="Photo" ImageUrl='<%# Eval("Photo","~/StudentPhotos/{0}")%>' Height="150px" Width="100px" runat="server" />
                                    </td>
                                    <td><asp:Label ID="AckID" Text="ACKID:" runat="server" />
                                         <asp:Label ID="lblStudentID" runat="server" Text='<%#Eval("StudentID") %>'/></td>
                                </tr>
                                <tr>
                                    <td><asp:Label ID="Label2" Text="Name:" runat="server" />
                                        <asp:Label ID="lblStudentName" runat="server" Text='<%#Eval("StudentName") %>'/></td>
                                </tr>
                                    <tr>
                                    <td><asp:Label ID="Label4" Text="Gender:" runat="server" />
                                        <asp:Label ID="lblGender" runat="server" Text='<%#Eval("Gender") %>'/></td>
                                </tr>
                                    <tr>
                                    <td><asp:Label ID="Label5" Text="Date of Birth:" runat="server" />
                                        <asp:Label ID="lbldob" runat="server" Text='<%#Eval("DateofBirth") %>'/></td>
                                </tr>
                                    <tr>
                                    <td>
                                        <asp:Label ID="Label1" Text="Address" runat="server" />
                                        <asp:Label ID="lblCurrentAddress" runat="server" Text='<%#Eval("CurrentAddress") %>'/></td>
                                </tr>
                            </table>
                            </div>
                            <div style="float:left">
                                <table>
                                    
                                    <tr>
                                    <td><asp:Label ID="Label6" Text="City:" runat="server" /><asp:Label ID="lblCity" runat="server" Text='<%#Eval("City") %>'/></td>
                                </tr>
                                    
                                    <tr>
                                    <td><asp:Label ID="Label7" Text="State:" runat="server" />
                                        <asp:Label ID="lblState" runat="server" Text='<%#Eval("State") %>'/></td>
                                </tr>
                                    
                                    <tr>
                                    <td><asp:Label ID="Label8" Text="Country:" runat="server" />
                                        <asp:Label ID="lblCountry" runat="server" Text='<%#Eval("Country") %>'/></td>
                                </tr>
                                    
                                    <tr>
                                    <td><asp:Label ID="Label9" Text="Pincode:" runat="server" />
                                        <asp:Label ID="lblPincode" runat="server" Text='<%#Eval("Pincode") %>'/></td>
                                
                                    </tr>
                                    <tr>
                                    <td><asp:Label ID="Label10" Text="ContactNo:" runat="server" /><asp:Label ID="lblContactNumber" runat="server" Text='<%#Eval("ContactNumber") %>'/></td>
                                </tr>
                                    <tr>
                                    <td><asp:Label ID="Label11" Text="EnrolementDateTime:" runat="server" /><asp:Label ID="Label12" runat="server" Text='<%#Eval("EnrolementDateTime") %>'/></td>
                                </tr>
                                </table>
                            </div>
                            </div>
                        </ItemTemplate>
        
        <FooterTemplate>
            <asp:Image ImageUrl="~/MainImages/Images/1.jpg" runat="server" Height="150px" Width="800px" />
        </FooterTemplate>
                    </asp:DataList>
 
      <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" SelectMethod="FetchStudentDownload" TypeName="SUIDSystem.DAL.StudentOperations">
          <SelectParameters>
              <asp:ControlParameter ControlID="txtStudentID" Name="StudentID" PropertyName="Text" Type="Int32" />
              <asp:ControlParameter ControlID="txtStudentName" Name="SName" PropertyName="Text" Type="String" />
              <asp:ControlParameter ControlID="txtFatherName" Name="Sfather" PropertyName="Text" Type="String" />
          </SelectParameters>
      </asp:ObjectDataSource>
 
  </div>
</div>
   </asp:Panel>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button Text="Print Card" runat="server" cssclass="btn-danger" OnClientClick=" PrintPanel()" ID="btnPrint"/>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavigationPlaceHolder" runat="server">
   <div>
<ul class="nav nav-pills nav-stacked" style="max-width: 300px;">
    <li class="active"><a href="../Studnt/Student.aspx">Studnt</a></li>
    <li><a href="../Student/StudentRegisteration.aspx">Student Registeration</a></li>
    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">
      Upload Certificates<span class="caret"></span>
    </a>
        <ul class="dropdown-menu">
      <li><a href="../Student/TenCertficates.aspx">10 or SSC</a></li>
      <li><a href="../Student/InterCertificates.aspx">10+2 or Inter</a></li>
      <li><a href="../Student/UgCertifcates.aspx">UG</a></li>
      <li><a href="../Student/PgCertificates.aspx">PG</a></li>
     <li><a href="../Student/OtherCertificates.aspx">Other</a></li>
    </ul></li>
    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">
      Update or Delete Certificates<span class="caret"></span>
    </a>
        <ul class="dropdown-menu">
       <li><a href="../Student/UpdateStudent.aspx">Student</a></li>
      <li><a href="../Student/UpdateTenCertificates.aspx">10 or SSC</a></li>
      <li><a href="../Student/UpdateInterCertificates.aspx">10+2 or Inter</a></li>
      <li><a href="../Student/updateUGCertificates.aspx">UG</a></li>
      <li><a href="../Student/UpdatePGCertficates.aspx">PG</a></li>
    </ul></li>
    
    <li><a href="../Student/DownloadAknoodgement.aspx">See Aknolodgement</a></li>
    <li><a href="../Student/DownLoadSUIDCard.aspx">Download Student ID CARD</a></li>
</ul>

    </div>
</asp:Content>
