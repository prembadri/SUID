using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace SUIDSystem.Model
{
    public class Student
    {
        public int StudentID { get; set; }
        public DateTime EnrolementDateTime { get; set; }
        [MaxLength(50)]
        public string StudentName { get; set; }
        [MaxLength(50)]
        public string FatherName { get; set; }
        [MaxLength(50)]
        public string MotherName { get; set; }
        [MaxLength(2)]
        public string Gender { get; set; }
        public DateTime DateofBirth { get; set; }
        public int Age { get; set; }
        [MaxLength(150)]
        public string CurrentAddress { get; set; }
        [MaxLength(30)]
        public string City { get; set; }
        [MaxLength(30)]
        public string State { get; set; }
        [MaxLength(30)]
        public string Country { get; set; }
        [MaxLength(100)]
        public string Email { get; set; }
        public string Pincode { get; set; }
        public string ContactNumber { get; set; }
        public string PANNumber { get; set; }
        public string Passport { get; set; }
        public string Drivinglicence { get; set; }
        public string Photo { get; set; }
    }
}
