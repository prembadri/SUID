using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace SUIDSystem.Model
{
    public class CompanyPerson
    {
        public int CompanyPersonID { get; set; }
        [MaxLength(50)]
        public string NameofCompany { get; set; }
        [MaxLength(50)]
        public string CEmployeeName { get; set; }
        [MaxLength(50)]
        public string Location { get; set; }

        public int DepartmentID { get; set; }
        public virtual Department Department { get; set; }
    }
}
