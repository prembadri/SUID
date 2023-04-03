using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SUIDSystem.UI.Student
{
    public partial class UgCertifcates : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SUIDSystem.DAL.StudentCertificatesOperations dal = new DAL.StudentCertificatesOperations();
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            bool result = dal.Insert(new SUIDSystem.Model.StudentCertificate
            {
                BordorUniversityName = txtBoardName.Text,
                RollNumber = txtRollNumber.Text,
                StudentName = txtStudentName.Text,
                TotalMarks = Convert.ToInt32(txtTotalMarks.Text),
                Grade = txtGrade.Text,
                StudentID = Convert.ToInt32(Session["StudentID"]),
                ScanedCertificate = upCertificate.FileName
            });
            if ((upCertificate.PostedFile != null) && (upCertificate.PostedFile.ContentLength > 0))
            {
                string fn = System.IO.Path.GetFileName(upCertificate.PostedFile.FileName);
                string SaveLocation = Server.MapPath("..\\StudentCertificates") + "\\" + fn;
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
                Response.Write("<script type=\"text/javascript\">alert('Insertion Successfully');</script>");
                //Response.Write("Inserted Successfully");
            }
            else
            {
                Response.Write("<script type=\"text/javascript\">alert('Insertion Un Successfully');</script>");
                //Response.Write("Inserted UN Successful");
            }
        }

        protected void Btn12th_Click(object sender, EventArgs e)
        {
            Response.Redirect("PgCertificates.aspx");
        }
    }
}