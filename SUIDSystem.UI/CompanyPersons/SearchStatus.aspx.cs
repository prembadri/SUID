using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SUIDSystem.Model;
using SUIDSystem.DAL;

namespace SUIDSystem.UI.CompanyPersons
{
    public partial class SearchStatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SUIDSystem.DAL.StatusReportGenerater dal = new StatusReportGenerater();
        protected void btnstatus_Click(object sender, EventArgs e)
        {
            dvstatus.DataSource = dal.fetchStatusReport(txtStatus.Text);
            dvstatus.DataBind();

        }
    }
}