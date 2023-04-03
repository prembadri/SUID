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
    public partial class UpdateDeleteSUIDStaff : System.Web.UI.Page
    {
        SUIDStaffOperatios staffdal = new SUIDStaffOperatios();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpate_Click(object sender, EventArgs e)
        {
            bool result = staffdal.Update(new SUIDSystem.Model.SUIDStaff
            {
                DepartmentID = Convert.ToInt32(cmdStaffDepartmernt.Text),
                SUIDStaffID = Convert.ToInt32(txtStaffID.Text),
                StaffName = txtStaffName.Text,
                Location = txtstaffLocation.Text
            });
            if (result == true)
            {
                Response.Write("<script type=\"text/javascript\">alert('Updated Successfully');</script>");
                //Response.Write("Updated Successfully");
            }
            else
            {
                Response.Write("<script type=\"text/javascript\">alert('Updated Un Successfully');</script>");
                //Response.Redirect("Updated UnSuccfull");
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            bool result = staffdal.Delete(new SUIDSystem.Model.SUIDStaff
            {
                DepartmentID = Convert.ToInt32(cmdStaffDepartmernt.Text),
                SUIDStaffID = Convert.ToInt32(txtStaffID.Text),
                StaffName = txtStaffName.Text,
                Location = txtstaffLocation.Text
            });
            if (result == true)
            {
                Response.Write("<script type=\"text/javascript\">alert('Deleted Successfully');</script>");
                //Response.Write("Deletion Successfully");
            }
            else
            {
                Response.Write("<script type=\"text/javascript\">alert('Deleted Un Successfully');</script>");
                //Response.Redirect("Deletion UnSuccfull");
            }
        }
    }
}