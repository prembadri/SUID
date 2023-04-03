using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SUIDSystem.DAL;
using SUIDSystem.Model;

namespace SUIDSystem.UI.Admin
{
    public partial class AdminRegisteration : System.Web.UI.Page
    {
        AdminOperations admindal = new AdminOperations();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdminreg_Click(object sender, EventArgs e)
        {
            bool result = admindal.Insert(new SUIDSystem.Model.Admin
            {
                DepartmentID = Convert.ToInt32(DdlDept.Text),
                AdminName = txtAdminName.Text
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

        protected void btnupdateanddelete_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateDeleteAdmin.aspx");
        }
    }
}