using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SUIDSystem.UI.Student
{
    public partial class OtherCertificates : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SUIDSystem.DAL.StudentCertificatesOperations dal = new DAL.StudentCertificatesOperations();

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            bool result = dal.Update(new SUIDSystem.Model.StudentCertificate
            {
                StudentCertificateID = Convert.ToInt32(txtCertificateID.Text),
                BordorUniversityName = txtBoardName.Text,
                RollNumber = txtRollNumber.Text,
                StudentID = Convert.ToInt32(txtStudnetID.Text),
                StudentName = txtStudentName.Text,
                TotalMarks = Convert.ToInt32(txtTotalMarks.Text),
                Grade = txtGrade.Text,
                ScanedCertificate = upCertificate.FileName
            });
            if (result == true)
            {
                Response.Write("Update Successfull");
            }
            else
            {
                Response.Write("Update Un Successfull");
            }
        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            bool result = dal.Delete(new SUIDSystem.Model.StudentCertificate
            {
                StudentCertificateID = Convert.ToInt32(txtCertificateID.Text),
                BordorUniversityName = txtBoardName.Text,
                RollNumber = txtRollNumber.Text,
                StudentID = Convert.ToInt32(txtStudnetID.Text),
                StudentName = txtStudentName.Text,
                TotalMarks = Convert.ToInt32(txtTotalMarks.Text),
                Grade = txtGrade.Text,
                ScanedCertificate = upCertificate.FileName
            });
            if (result == true)
            {
                Response.Write("Deleted Successfull");
            }
            else
            {
                Response.Write("Deleted Un Successfull");
            }

        }
        
    }
}