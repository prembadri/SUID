using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SUIDSystem.UI.SUIDStaff
{
    public partial class UpdateStatusReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SUIDSystem.DAL.StatusReportGenerater dal = new DAL.StatusReportGenerater();
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            bool result = dal.update(new SUIDSystem.Model.StatusReport
            {
                SUIDStaffID = Convert.ToInt32(txtStaffID.Text),
                StudentID = Convert.ToInt32(txtstudentID.Text),
                Status = txtStatus.Text,
                RemarksonStatus = txtRemarks.Text,
                UplodedData = txtFiles.Text
            });
            if (result == true)
            {
                Response.Write("Updated Successfully");
            }
            else
            {
                Response.Write("Updated UN Successful");
            }
        }
    }
}