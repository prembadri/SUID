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
    public partial class SUIDStaffRegisteration : System.Web.UI.Page
    {
        SUIDStaffOperatios staffdal = new SUIDStaffOperatios();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnstaffregister_Click(object sender, EventArgs e)
        {
            bool result = staffdal.Insert(new SUIDSystem.Model.SUIDStaff
            {
                DepartmentID = Convert.ToInt32(cmdStaffDepartmernt.Text),
                StaffName = txtStaffName.Text,
                Location = txtstaffLocation.Text,

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

        protected void btnUpdateDelete_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateDeleteSUIDStaff.aspx");
        }
    }
}