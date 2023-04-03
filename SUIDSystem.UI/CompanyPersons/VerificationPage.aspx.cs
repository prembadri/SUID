using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SUIDSystem.UI.CompanyPersons
{
    public partial class VerificationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SUIDSystem.DAL.CompanyVerificationOperations dal = new DAL.CompanyVerificationOperations();

        protected void btnProfile_Click(object sender, EventArgs e)
        {
            //GridView1.DataSource = dal.fetchcertficates(txtverificatin.Text);
            //GridView1.DataBind();
        }

    }
}