using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SUIDSystem.UI.Student
{
    public partial class UpdateStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SUIDSystem.DAL.StudentOperations dal = new DAL.StudentOperations();
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            bool result = dal.Update(new SUIDSystem.Model.Student
            {
                StudentID = Convert.ToInt32(txtStudentID.Text),
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
                Drivinglicence = txtDrivingLicence.Text,
                Passport = txtPassportID.Text,
                PANNumber = txtPanCardID.Text,
                Email=txtEmailid.Text,
                Photo = upPhoto.FileName
            });
            if (result == true)
            {
                Response.Write("<script type=\"text/javascript\">alert('Updated  Successfully');</script>");
                //Response.Write("Updateion Successfully");
            }
            else
            {
                Response.Write("<script type=\"text/javascript\">alert('Updated Un Successfully');</script>");
                //Response.Write("Updateion Un Successful");
            }
        }
    }
}