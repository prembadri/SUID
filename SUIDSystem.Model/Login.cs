using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace SUIDSystem.Model
{
    public class Login
    {
        public int LoginID { get; set; }
        [MaxLength(25)]
        public string Password { get; set; }
    }
}
