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
    public partial class Department : System.Web.UI.Page
    {
        DepartmentOperations deptdal = new DepartmentOperations();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndeptAdding_Click(object sender, EventArgs e)
        {
            bool result = deptdal.Insert(new SUIDSystem.Model.Department
            {
                DepartmentName = txtDeptName.Text
            });
            if (result == true)
            {
               // Response.Write("Insertion Successfully");
                //MessageBox.Show("Insertion Successfully");
                Response.Write("<script type=\"text/javascript\">alert('Insertion Successfully');</script>");
            }
            else
            {
                Response.Write("<script type=\"text/javascript\">alert('Insertion Un Successfully');</script>");
                //Response.Write("Insertion UNSuccessfull");
                //MessageBox.Show("Insurtion UNSuccessfull");
            }
        }
    }
}