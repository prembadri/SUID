<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="DownloadAknoodgement.aspx.cs" Inherits="SUIDSystem.UI.Student.DownloadAknoodgement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPlaceHolder" runat="server">
      <div style="width:100%">
    
        <div style="float:right;width:70%; height:auto; margin-bottom: 50px;">
            <div class="panel panel-success" style="height:auto">
                <div class="panel-heading">
                    <h4>Acknodgement Download</h4>
                </div>
                <div class="panel-body" style="height:auto">
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="ObjectDataSource1">
                        <HeaderTemplate>
                            <asp:Image ID="Image1" ImageUrl="~/MainImages/baner.jpg" runat="server" Height="100px" Width="500px" />
                        </HeaderTemplate>
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
                            <h4 class="h4">***Wait for Getting Student ID Card You Will Get Mail or SMS About SUID***</h4>
                        </FooterTemplate>
                    </asp:DataList>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="FetchStudent" TypeName="SUIDSystem.DAL.StudentOperations">
                        <SelectParameters>
                            <asp:SessionParameter Name="StudentID" SessionField="StudentID" Type="Int32" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                    <asp:DataList ID="DataList2" runat="server" DataSourceID="ObjectDataSource2">
                        <HeaderTemplate>
                            <h4 class="h4">***Check all Details in Of Your Certificate ***</h4>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <table>
                                <tr>
                                    <td rowspan="5">
                                    <asp:Image ID="Photo" ImageUrl='<%# Eval("ScanedCertificate","~/StudentCertificates/{0}")%>' Height="180px" Width="150px" runat="server" />
                                    </td>
                                    <td><asp:Label ID="CERTID" Text="StudentCert ID:" runat="server" />
                                         <asp:Label ID="lblCERTID" runat="server" Text='<%#Eval("StudentCertificateID") %>'/></td>
                                </tr>
                                <tr>
                                    <td><asp:Label ID="Label2" Text="Board Or University:" runat="server" />
                                        <asp:Label ID="lblBordorUniversityName" runat="server" Text='<%#Eval("BordorUniversityName") %>'/></td>
                                </tr>
                                    <tr>
                                    <td><asp:Label ID="Label4" Text="RollNumber:" runat="server" />
                                        <asp:Label ID="lblRollNumber" runat="server" Text='<%#Eval("RollNumber") %>'/></td>
                                </tr>
                                    <tr>
                                    <td><asp:Label ID="Label5" Text="StudentName:" runat="server" />
                                        <asp:Label ID="lblStudentName" runat="server" Text='<%#Eval("StudentName") %>'/></td>
                                </tr>
                                    <tr>
                                    <td>
                                        <asp:Label ID="Label12" Text="TotalMarks:" runat="server" />
                                        <asp:Label ID="lblTotalMarks" runat="server" Text='<%#Eval("TotalMarks") %>'/></td>
                                </tr><tr>
                                <td>
                                        <asp:Label ID="Label13" Text="Grade:" runat="server" />
                                        <asp:Label ID="lblGrade" runat="server" Text='<%#Eval("Grade") %>'/></td>
                                </tr>
                            </table>
                        </ItemTemplate>
                        <FooterTemplate>
                            <h4 class="h4">***If there is Any Mistake Please Update Now & Re Submit Details***</h4>
                        </FooterTemplate>
                    </asp:DataList>
                    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="fetchcertificates" TypeName="SUIDSystem.DAL.StudentCertificatesOperations">
                        <SelectParameters>
                            <asp:SessionParameter Name="certID" SessionField="StudentID" Type="Int32" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
            </div>
        </div>
            </div>
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
