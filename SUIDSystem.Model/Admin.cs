using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
namespace SUIDSystem.Model
{
    public class Admin
    {
        public int AdminID { get; set; }
        [MaxLength(50)]
        public string AdminName { get; set; }
        public int DepartmentID { get; set; }
        public virtual Department Department { get; set; }
    }
}
