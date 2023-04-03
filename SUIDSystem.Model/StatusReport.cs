using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace SUIDSystem.Model
{
    public class StatusReport
    {
        public int StatusReportID { get; set; }
        [MaxLength(200)]
        public string RemarksonStatus { get; set; }
        [MaxLength(10)]
        public string Status { get; set; }
        public string UplodedData { get; set; }
        public int StudentID { get; set; }
        public int SUIDStaffID { get; set; }
        public virtual SUIDStaff SUIDStaff { get; set; }
        public virtual Student Student { get; set; }
    }
}
