using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SUIDSystem.Model;

namespace SUIDSystem.DAL
{
    public class ExamConrtolerOperations
    {
        SUIDSystemDataContext dc = new SUIDSystemDataContext();
        public bool Insert(ExamController examobj)
        {
            dc.ExamControllers.Add(examobj);
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
        public bool Upate(ExamController ExamObj)
        {
            ExamController oldExamController = dc.ExamControllers.Where(e => e.ExamControllerID == ExamObj.ExamControllerID).First();
            if (oldExamController == null)
            {
                throw new Exception("Record Not Found");
            }
            oldExamController.DepartmentID = ExamObj.DepartmentID;
            oldExamController.ExamControllerID = ExamObj.ExamControllerID;
            oldExamController.ExamControllerName = ExamObj.ExamControllerName;
            oldExamController.NameoftheBordorUniversity = ExamObj.NameoftheBordorUniversity;
            oldExamController.Location = ExamObj.Location;
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
        public bool UpDate(ExamController ExamObj)
        {
            ExamController oldExamController = dc.ExamControllers.Where(e => e.ExamControllerID == ExamObj.ExamControllerID).First();
            if (oldExamController == null)
            {
                throw new Exception("Record Not Found");
            }
            oldExamController.DepartmentID = ExamObj.DepartmentID;
            oldExamController.ExamControllerID = ExamObj.ExamControllerID;
            oldExamController.ExamControllerName = ExamObj.ExamControllerName;
            oldExamController.NameoftheBordorUniversity = ExamObj.NameoftheBordorUniversity;
            oldExamController.Location = ExamObj.Location;
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
        public bool Delete(ExamController ExamObj)
        {
            ExamController oldExamController = dc.ExamControllers.Where(e => e.ExamControllerID == ExamObj.ExamControllerID).First();
            if (oldExamController == null)
            {
                throw new Exception("Record Not Found");
            }
            dc.ExamControllers.Remove(oldExamController);
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
        public List<ExamController> fetchexam(int examid)
        {
            var query = from exam in dc.ExamControllers
                        where exam.ExamControllerID == examid
                        select exam;
            return query.ToList();
        }
    }
}
