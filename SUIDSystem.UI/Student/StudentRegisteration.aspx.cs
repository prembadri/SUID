using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SUIDSystem.UI.Student
{
    public partial class StudentRegisteration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SUIDSystem.DAL.StudentOperations dal = new DAL.StudentOperations();
        protected void btnStudentAdd_Click(object sender, EventArgs e)
        {
            //bool result = dal.insert(new SUIDSystem.Model.Student
            SUIDSystem.Model.Student newstudent = new Model.Student()
            {

                StudentName = txtStudentName.Text,
                FatherName = txtFatherName.Text,
                MotherName = txtMotherName.Text,
                Gender = txtGender.Text,
                DateofBirth = Convert.ToDateTime(txtDOB.Text),
                Age = Convert.ToInt32(txtAge.Text),
                CurrentAddress = txtAddress.Text,
                City = txtCity.Text,
                State = txtState.Text,
                Country = txtCountry.Text,
                Pincode = txtPinCode.Text,
                ContactNumber = txtContactNumber.Text,
                PANNumber = txtPanCardID.Text,
                Drivinglicence = txtDrivingLicence.Text,
                Passport = txtPassportID.Text,
                EnrolementDateTime = DateTime.Now,
                Photo = upPhoto.FileName,Email=txtEmailid.Text
                //Photo="..\\StudentPhotos\\"+upPhoto.FileName

            };
            if ((upPhoto.PostedFile != null) && (upPhoto.PostedFile.ContentLength > 0))
            {
                string fn = System.IO.Path.GetFileName(upPhoto.PostedFile.FileName);
                string SaveLocation = Server.MapPath("..\\StudentPhotos") + "\\" + fn;
                try
                {
                    upPhoto.PostedFile.SaveAs(SaveLocation);
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.Message);
                }
            }
            SUIDSystem.DAL.StudentOperations dal = new DAL.StudentOperations();
            SUIDSystem.Model.Student s = dal.insert(newstudent);
            Session["StudentID"] = s.StudentID;
            Response.Redirect("TenCertficates.aspx");
        }
    }
}