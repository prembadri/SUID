using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace SUIDSystem.Model
{
    public class CompanyVerification
    {

        public int CompanyVerificationID { get; set; }
        public string StudentID { get; set; }
        public int SUIDNo { get; set; }
        public virtual Student Student { get; set; }
    }
}
