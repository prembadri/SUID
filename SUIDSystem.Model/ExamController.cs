using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace SUIDSystem.Model
{
    public class ExamController
    {
        public int ExamControllerID { get; set; }
        [MaxLength(50)]
        public string NameoftheBordorUniversity { get; set; }
        [MaxLength(50)]
        public string ExamControllerName { get; set; }
        [MaxLength(50)]
        public string Location { get; set; }
        public int DepartmentID { get; set; }
        public virtual Department Department { get; set; }
    }
}
