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
    public partial class UpdateDeleteAdmin : System.Web.UI.Page
    {
        AdminOperations admindal = new AdminOperations();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            bool result = admindal.Update(new SUIDSystem.Model.Admin
            {
                DepartmentID = Convert.ToInt32(DdlDept.Text),
                AdminID = Convert.ToInt32(txtAdminID.Text),
                AdminName = txtAdminName.Text
            });
            if (result == true)
            {
                Response.Write("<script type=\"text/javascript\">alert('Updated Successfully');</script>");
                //Response.Write("Update Successfully");
            }
            else
            {
                Response.Write("<script type=\"text/javascript\">alert('Updated Un Successfully');</script>");
                //Response.Write("Update UnSuccessful");
            }
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            bool result = admindal.Delete(new SUIDSystem.Model.Admin
            {
                DepartmentID = Convert.ToInt32(DdlDept.Text),
                AdminID = Convert.ToInt32(txtAdminID.Text),
                AdminName = txtAdminName.Text
            });
            if (result == true)
            {
                Response.Write("<script type=\"text/javascript\">alert('Deleted Successfully');</script>");
                //Response.Write("Deleted Successfully");
            }
            else
            {
                Response.Write("<script type=\"text/javascript\">alert('Deleted Un Successfully');</script>");
                //Response.Write("Deleted UnSuccessful");
            }
        }
    }
}