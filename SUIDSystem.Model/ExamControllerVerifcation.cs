using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace SUIDSystem.Model
{
    public class ExamControllerVerifcation
    {
        public int ExamControllerVerifcationID { get; set; }
        public string SUIDNo { get; set; }
        public int StudentID { get; set; }
        public virtual Student Student { get; set; }
    }
}
