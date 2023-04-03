using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SUIDSystem.Model;

namespace SUIDSystem.DAL
{
    public class StudentOperations
    {
        SUIDSystemDataContext dc = new SUIDSystemDataContext();
        public Student insert(Student stuobj)
        {
            dc.Students.Add(stuobj);
            int result = dc.SaveChanges();
            if (result > 0)
            {
                var query = (from stud in dc.Students
                             orderby stud.StudentID descending
                             select stud).Take(1).SingleOrDefault();
                return query;
            }
            else
            {
                throw new Exception("Insert Failed");
            }
        }
        public bool Update(Student StudObj)
        {
            Student oldstudent = dc.Students.Where(s => s.StudentID == StudObj.StudentID).First();
            if (oldstudent == null)
            {
                throw new Exception("Record Not Found");
            }
            oldstudent.StudentID = StudObj.StudentID;

            oldstudent.StudentName = StudObj.StudentName;
            oldstudent.FatherName = StudObj.FatherName;
            oldstudent.MotherName = StudObj.MotherName;
            oldstudent.Gender = StudObj.Gender;
            oldstudent.DateofBirth = StudObj.DateofBirth;
            oldstudent.Age = StudObj.Age;
            oldstudent.CurrentAddress = StudObj.CurrentAddress;
            oldstudent.City = StudObj.City;
            oldstudent.State = StudObj.State;
            oldstudent.Country = StudObj.Country;
            oldstudent.Pincode = StudObj.Pincode;
            oldstudent.ContactNumber = StudObj.ContactNumber;
            oldstudent.PANNumber = StudObj.PANNumber;
            oldstudent.Passport = StudObj.Passport; ;
            oldstudent.Drivinglicence = StudObj.Drivinglicence;
            oldstudent.Photo = StudObj.Photo;
            oldstudent.Email = StudObj.Email;
            int result = dc.SaveChanges();
            if (result > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public bool Delete(Student Studobj)
        {
            Student oldstudent = dc.Students.Where(s => s.StudentID == Studobj.StudentID).First();
            if (oldstudent == null)
            {
                throw new Exception("Record Not Found");
            }
            dc.Students.Remove(oldstudent);
            int result = dc.SaveChanges();
            if (result > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public List<Student> FetchStudent(int StudentID)
        {
            var query = from stud in dc.Students
                        where stud.StudentID == StudentID
                        select stud;
            return query.ToList();
        }

        public List<Student> FetchStudentDownload(int StudentID,string SName,string Sfather)
        {
            var query = from stud in dc.Students
                        where stud.StudentID == StudentID && stud.StudentName==SName && stud.FatherName==Sfather
                        select stud;
            return query.ToList();
        }
       
    }
}
