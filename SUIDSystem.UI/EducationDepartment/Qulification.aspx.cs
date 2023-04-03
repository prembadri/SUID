using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SUIDSystem.UI.EducationDepartment
{
    public partial class Qulification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SUIDSystem.DAL.QulificationOperations dal = new DAL.QulificationOperations();
        protected void btnQualificationAdding_Click(object sender, EventArgs e)
        {
            bool result = dal.Insert(new SUIDSystem.Model.Qulification
            {
                QualificationName = txtQualificationName.Text

            });
            if (result == true)
            {
                Response.Write("Insertion Successfully");
            }
            else
            {
                Response.Write("Insertion UnSuccessFul");
            }
        }
    }
}