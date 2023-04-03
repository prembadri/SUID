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
    public partial class ExamControlerRegisteration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        ExamConrtolerOperations examdal = new ExamConrtolerOperations();
        protected void btnExamControllerregister_Click(object sender, EventArgs e)
        {

            bool result = examdal.Insert(new SUIDSystem.Model.ExamController
            {
                DepartmentID = Convert.ToInt32(ddlExamDepartment.Text),
                ExamControllerName = txtExamControllerName.Text,
                Location = txtExamControllerLocation.Text,
                NameoftheBordorUniversity = txtbordoruniversity.Text

            });
            if (result == true)
            {
                Response.Write("<script type=\"text/javascript\">alert('Insertion Successfully');</script>");
                //Response.Write("Insertion Successfully");
            }
            else
            {
                Response.Write("<script type=\"text/javascript\">alert('Insertion Un Successfully');</script>");
                //Response.Write("Insertion UnSuccessfull");
            }
        }

        protected void BtnUpdateDelete_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateDeleteExamController.aspx");
        }
    }
}