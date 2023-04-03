using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SUIDSystem.UI.EducationDepartment
{
    public partial class UpdateCertificates : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SUIDSystem.DAL.EducationCertficatesOperations dal = new DAL.EducationCertficatesOperations();
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            bool result = dal.insert(new SUIDSystem.Model.EDCertificate
            {
                EDCertificateID = Convert.ToInt32(txtCerti.Text),
                BordorUniversityName = txtBoardName.Text,
                StudentName = txtStudentName.Text,
                Grade = txtGrade.Text,
                ScanedCertificate = upCertificate.FileName,
                RollNumber = txtRollNumber.Text,
                TotalMarks = Convert.ToInt32(txtTotalMarks.Text),
                QualificationID = Convert.ToInt32(ddlqulifications.Text)
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

        protected void btnDelete_Click(object sender, EventArgs e)
        {
             bool result = dal.Delete(new SUIDSystem.Model.EDCertificate
            {
                EDCertificateID = Convert.ToInt32(txtCerti.Text),
                BordorUniversityName = txtBoardName.Text,
                StudentName = txtStudentName.Text,
                Grade = txtGrade.Text,
                ScanedCertificate = upCertificate.FileName,
                RollNumber = txtRollNumber.Text,
                TotalMarks = Convert.ToInt32(txtTotalMarks.Text),
                QualificationID = Convert.ToInt32(ddlqulifications.Text)
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