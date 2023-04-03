using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SUIDSystem.Model;
using SUIDSystem.DAL;
namespace SUIDSystem.UI.Admin
{
    public partial class UpdateDeleteExamController : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        ExamConrtolerOperations dal = new ExamConrtolerOperations();
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            bool result = dal.Upate(new SUIDSystem.Model.ExamController
            {
                DepartmentID = Convert.ToInt32(ddlExamDepartment.Text),
                ExamControllerID = Convert.ToInt32(txtExamControllerID.Text),
                ExamControllerName = txtExamControllerName.Text,
                NameoftheBordorUniversity = txtbordoruniversity.Text,
                Location = txtExamControllerLocation.Text,
            });
            if (result == true)
            {
                Response.Write("<script type=\"text/javascript\">alert('Updated Successfully');</script>");
                //Response.Write("Update Successfully");
            }
            else
            {
                Response.Write("<script type=\"text/javascript\">alert('Updatted Un Successfully');</script>");
                //Response.Write("Update Un Sucessful");
            }
        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {

            bool result = dal.Delete(new SUIDSystem.Model.ExamController
            {
                DepartmentID = Convert.ToInt32(ddlExamDepartment.Text),
                ExamControllerID = Convert.ToInt32(txtExamControllerID.Text),
                ExamControllerName = txtExamControllerName.Text,
                NameoftheBordorUniversity = txtbordoruniversity.Text,
                Location = txtExamControllerLocation.Text,
            });
            if (result == true)
            {
                Response.Write("<script type=\"text/javascript\">alert('Deleted Successfully');</script>");
                //Response.Write("Deleted Successfully");
            }
            else
            {
                Response.Write("<script type=\"text/javascript\">alert('Deleted Un Successfully');</script>");
                //Response.Write("Deleted Un Sucessful");
            }
        }

    }
}