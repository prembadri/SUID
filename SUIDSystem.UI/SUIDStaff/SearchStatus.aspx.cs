using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SUIDSystem.UI.SUIDStaff
{
    public partial class SearchStatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SUIDSystem.DAL.StatusReportGenerater dal = new DAL.StatusReportGenerater();
        protected void btnsearch_Click(object sender, EventArgs e)
        {
            dvStatus.DataSource = dal.fetchStatusReport(txtSUIDNO.Text);
            dvStatus.DataBind();
        }
    }
}