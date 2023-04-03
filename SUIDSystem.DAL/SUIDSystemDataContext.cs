using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using System.Configuration;
using SUIDSystem.Model;

namespace SUIDSystem.DAL
{
    public class SUIDSystemDataContext:DbContext
    {
        public SUIDSystemDataContext(): base(ConfigurationManager.ConnectionStrings["SUIDSystemIndiaConnectionString"].ConnectionString)
        {

        }
        public DbSet<Department>Departments { get; set; }
        public DbSet<Admin>Admins { get; set; }
        public DbSet<SUIDStaff>SUIDStaffS{ get; set; }
        public DbSet<ExamController>ExamControllers { get; set; }
        public DbSet<CompanyPerson>CompanyPersons { get; set; }
        public DbSet<Login>Logins { get; set; }
        public DbSet<Student>Students{ get; set; }
        public DbSet<StudentCertificate> StudentCertificates{ get; set; }
        public DbSet<Qulification>Qulifications { get; set; }
        public DbSet<EDCertificate> EDCertificates{ get; set; }
        public DbSet<SUIDNumber>SUIDNumbers { get; set; }
        public DbSet<ExamControllerVerifcation>ExamControllerVerifcations { get; set; }
        public DbSet<CompanyVerification>CompanyVerifications{ get; set; }
        public DbSet<StatusReport> StatusReports{ get; set; }


        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            //modelBuilder.Entity<SUIDDomineEntities.Models.Department>().MapToStoredProcedures();
            modelBuilder.Entity<Department>().MapToStoredProcedures();
            modelBuilder.Entity<Admin>().MapToStoredProcedures();
            modelBuilder.Entity<SUIDStaff>().MapToStoredProcedures();
            modelBuilder.Entity<ExamController>().MapToStoredProcedures();
            modelBuilder.Entity<CompanyPerson>().MapToStoredProcedures();
            modelBuilder.Entity<SUIDNumber>().MapToStoredProcedures();
            modelBuilder.Entity<ExamControllerVerifcation>().MapToStoredProcedures();
            modelBuilder.Entity<CompanyVerification>().MapToStoredProcedures();
            modelBuilder.Entity<Login>().MapToStoredProcedures();
            modelBuilder.Entity<StatusReport>().MapToStoredProcedures();
            modelBuilder.Entity<Student>().MapToStoredProcedures();
            modelBuilder.Entity<StudentCertificate>().MapToStoredProcedures();
            modelBuilder.Entity<Qulification>().MapToStoredProcedures();
            modelBuilder.Entity<EDCertificate>().MapToStoredProcedures();
            
        }
    }
}
