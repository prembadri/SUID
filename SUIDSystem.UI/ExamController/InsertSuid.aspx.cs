using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SUIDSystem.UI.ExamController
{
    public partial class InsertSuid : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SUIDSystem.DAL.ExamVerificationOperations dal = new DAL.ExamVerificationOperations();
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            SUIDSystem.Model.ExamControllerVerifcation examcont = new Model.ExamControllerVerifcation()
            {
                SUIDNo=txtsuid.Text,
                StudentID=Convert.ToInt32(txtSID.Text)
            };
            SUIDSystem.DAL.ExamVerificationOperations dal = new DAL.ExamVerificationOperations();
            SUIDSystem.Model.ExamControllerVerifcation ecv = dal.Insert(examcont);

        }
    }
}