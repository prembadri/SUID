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
    public partial class MemerSearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SUIDStaffOperatios staffdal = new SUIDStaffOperatios();
        ExamConrtolerOperations examdal = new ExamConrtolerOperations();
        CompanyPersonsOperations compdal = new CompanyPersonsOperations();
        protected void btnstaffSearch_Click(object sender, EventArgs e)
        {
            DetailsView1.DataSource = staffdal.fetchStaff(Convert.ToInt32(StaffID.Text));
            DetailsView1.DataBind();
        }

        protected void btnExamControllerSearch_Click(object sender, EventArgs e)
        {
            DetailsView2.DataSource = examdal.fetchexam(Convert.ToInt32(txtExamControllerID.Text));
            DetailsView2.DataBind();
        }

        protected void btnCompanySearch_Click(object sender, EventArgs e)
        {
            DetailsView3.DataSource = compdal.fetchCompany(Convert.ToInt32(txtCompanyEmployeeID.Text));
            DetailsView3.DataBind();
        }
    }
}