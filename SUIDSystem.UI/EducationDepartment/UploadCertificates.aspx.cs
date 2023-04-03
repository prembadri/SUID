using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SUIDSystem.UI.EducationDepartment
{
    public partial class UploadCertificates : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SUIDSystem.DAL.EducationCertficatesOperations dal = new DAL.EducationCertficatesOperations();
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            bool result = dal.insert(new SUIDSystem.Model.EDCertificate
            {
                QualificationID = Convert.ToInt32(ddlqulifications.Text),
                BordorUniversityName = txtBoardName.Text,
                RollNumber = txtRollNumber.Text,
                StudentName = txtStudentName.Text,
                TotalMarks = Convert.ToInt32(txtTotalMarks.Text),
                Grade = txtGrade.Text,
                ScanedCertificate = upCertificate.FileName

            });
            if ((upCertificate.PostedFile != null) && (upCertificate.PostedFile.ContentLength > 0))
            {
                string fn = System.IO.Path.GetFileName(upCertificate.PostedFile.FileName);
                string SaveLocation = Server.MapPath("..\\ECertificates") + "\\" + fn;
                try
                {
                    upCertificate.PostedFile.SaveAs(SaveLocation);
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.Message);
                }
            }
            if (result == true)
            {
                Response.Write("Inserted Successfully");
            }
            else
            {
                Response.Write("Inserted UN Successful");
            }
 
        }
    }
}