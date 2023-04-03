using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SUIDSystem.UI.ExamController
{
    public partial class SearchStatus : System.Web.UI.Page
    {
        SUIDSystem.DAL.StatusReportGenerater dal = new DAL.StatusReportGenerater();
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btnstatus_Click(object sender, EventArgs e)
        {
            dvstatus.DataSource = dal.fetchStatusReport(txtStatus.Text);
            dvstatus.DataBind();
        }
    }
}