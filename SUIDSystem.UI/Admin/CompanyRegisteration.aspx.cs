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
    public partial class CompanyRegisteration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        CompanyPersonsOperations compandal = new CompanyPersonsOperations();

        protected void btnCompanyregister_Click(object sender, EventArgs e)
        {
            bool result = compandal.Insert(new SUIDSystem.Model.CompanyPerson
            {


                CEmployeeName = txtCompanyEmployeeName.Text,
                Location = txtCompanyLocation.Text,
                NameofCompany = txtCompany.Text,
                DepartmentID = Convert.ToInt32(ddlCompanyDepartment.Text)
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

        protected void BtnUpadate_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateDeleteCompanyPerson.aspx");
        }
    }
}