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
    public partial class UpdateDeleteCompanyPerson : System.Web.UI.Page
    {
        CompanyPersonsOperations dal = new CompanyPersonsOperations();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            bool result = dal.Update(new SUIDSystem.Model.CompanyPerson
            {
                DepartmentID = Convert.ToInt32(ddlCompanyDepartment.Text),
                CompanyPersonID = Convert.ToInt32(TxtCompanyEmpID.Text),
                NameofCompany = txtCompany.Text,
                CEmployeeName = txtCompanyEmployeeName.Text,
                Location = txtCompanyLocation.Text
            });
            if (result == true)
            {
                Response.Write("<script type=\"text/javascript\">alert('Updated Successfully');</script>");
                //Response.Write("Update SuccessfUlly");
            }
            else
            {
                Response.Write("<script type=\"text/javascript\">alert('Updated Un Successfully');</script>");
                //Response.Write("Update UN SuccessfUl");
            }
        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            bool result = dal.Delete(new SUIDSystem.Model.CompanyPerson
            {
                DepartmentID = Convert.ToInt32(ddlCompanyDepartment.Text),
                CompanyPersonID = Convert.ToInt32(TxtCompanyEmpID.Text),
                NameofCompany = txtCompany.Text,
                CEmployeeName = txtCompanyEmployeeName.Text,
                Location = txtCompanyLocation.Text
            });
            if (result == true)
            {
                Response.Write("<script type=\"text/javascript\">alert('Deleted Successfully');</script>");
                //Response.Write("Deleted SuccessfUlly");
            }
            else
            {
                Response.Write("<script type=\"text/javascript\">alert('Deleted Un Successfully');</script>");
                //Response.Write("Deleted UN SuccessfUl");
            }
        }
    }
}