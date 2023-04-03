using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SUIDSystem.Model;
using SUIDSystem.DAL;

namespace SUIDSystem.UI.SUIDStaff
{
    public partial class StatusGeneration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SUIDSystem.DAL.StatusReportGenerater dal = new StatusReportGenerater();
        protected void InsertStatus_Click(object sender, EventArgs e)
        {
            bool result = dal.insert(new SUIDSystem.Model.StatusReport
            {
                SUIDStaffID=Convert.ToInt32(txtStaffID.Text),
                StudentID=Convert.ToInt32(txtstudentID.Text),
                Status=txtStatus.Text,RemarksonStatus=txtRemarks.Text,
                UplodedData=txtFiles.Text
            });
            if (result == true)
            {
                Response.Write("Inserted Successfully");
            }
            else
            {
                Response.Write("Inserted UN Successful");
            }

        }

        protected void GoToGenerater_Click(object sender, EventArgs e)
        {
            Response.Redirect("NumberandEmail.aspx");
        }
    }
}