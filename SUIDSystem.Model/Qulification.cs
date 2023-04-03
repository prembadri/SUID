using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace SUIDSystem.Model
{
    public class Qulification
    {
        public int QulificationID { get; set; }
        [MaxLength(50)]
        public string QualificationName { get; set; }
    }
}
