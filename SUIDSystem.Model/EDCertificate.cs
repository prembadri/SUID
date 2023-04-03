using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace SUIDSystem.Model
{
    public class EDCertificate
    {
        public int EDCertificateID { get; set; }
        [MaxLength(50)]
        public string BordorUniversityName { get; set; }
        public string RollNumber { get; set; }
        [MaxLength(30)]
        public string StudentName { get; set; }
        public int TotalMarks { get; set; }
        [MaxLength(2)]
        public string Grade { get; set; }
        public string ScanedCertificate { get; set; }
        public int QualificationID { get; set; }
        public virtual Qulification Qulification { get; set; }
    }
}
