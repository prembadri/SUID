using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace SUIDSystem.Model
{
    public class Department
    {
        [Key]
        public int DepartmentID { get; set; }
        [MaxLength(30)]
        public string DepartmentName { get; set; }
    }
}
