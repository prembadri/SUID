namespace SUIDSystem.DAL.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class SUIDSP : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Admins",
                c => new
                    {
                        AdminID = c.Int(nullable: false, identity: true),
                        AdminName = c.String(maxLength: 50),
                        DepartmentID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.AdminID)
                .ForeignKey("dbo.Departments", t => t.DepartmentID, cascadeDelete: true)
                .Index(t => t.DepartmentID);
            
            CreateTable(
                "dbo.Departments",
                c => new
                    {
                        DepartmentID = c.Int(nullable: false, identity: true),
                        DepartmentName = c.String(maxLength: 30),
                    })
                .PrimaryKey(t => t.DepartmentID);
            
            CreateTable(
                "dbo.CompanyPersons",
                c => new
                    {
                        CompanyPersonID = c.Int(nullable: false, identity: true),
                        NameofCompany = c.String(maxLength: 50),
                        CEmployeeName = c.String(maxLength: 50),
                        Location = c.String(maxLength: 50),
                        DepartmentID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.CompanyPersonID)
                .ForeignKey("dbo.Departments", t => t.DepartmentID, cascadeDelete: true)
                .Index(t => t.DepartmentID);
            
            CreateTable(
                "dbo.CompanyVerifications",
                c => new
                    {
                        CompanyVerificationID = c.Int(nullable: false, identity: true),
                        StudentID = c.String(),
                        SUIDNo = c.Int(nullable: false),
                        Student_StudentID = c.Int(),
                    })
                .PrimaryKey(t => t.CompanyVerificationID)
                .ForeignKey("dbo.Students", t => t.Student_StudentID)
                .Index(t => t.Student_StudentID);
            
            CreateTable(
                "dbo.Students",
                c => new
                    {
                        StudentID = c.Int(nullable: false, identity: true),
                        EnrolementDateTime = c.DateTime(nullable: false),
                        StudentName = c.String(maxLength: 50),
                        FatherName = c.String(maxLength: 50),
                        MotherName = c.String(maxLength: 50),
                        Gender = c.String(maxLength: 2),
                        DateofBirth = c.DateTime(nullable: false),
                        Age = c.Int(nullable: false),
                        CurrentAddress = c.String(maxLength: 150),
                        City = c.String(maxLength: 30),
                        State = c.String(maxLength: 30),
                        Country = c.String(maxLength: 30),
                        Email = c.String(maxLength: 100),
                        Pincode = c.String(),
                        ContactNumber = c.String(),
                        PANNumber = c.String(),
                        Passport = c.String(),
                        Drivinglicence = c.String(),
                        Photo = c.String(),
                    })
                .PrimaryKey(t => t.StudentID);
            
            CreateTable(
                "dbo.EDCertificates",
                c => new
                    {
                        EDCertificateID = c.Int(nullable: false, identity: true),
                        BordorUniversityName = c.String(maxLength: 50),
                        RollNumber = c.String(),
                        StudentName = c.String(maxLength: 30),
                        TotalMarks = c.Int(nullable: false),
                        Grade = c.String(maxLength: 2),
                        ScanedCertificate = c.String(),
                        QualificationID = c.Int(nullable: false),
                        Qulification_QulificationID = c.Int(),
                    })
                .PrimaryKey(t => t.EDCertificateID)
                .ForeignKey("dbo.Qulifications", t => t.Qulification_QulificationID)
                .Index(t => t.Qulification_QulificationID);
            
            CreateTable(
                "dbo.Qulifications",
                c => new
                    {
                        QulificationID = c.Int(nullable: false, identity: true),
                        QualificationName = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.QulificationID);
            
            CreateTable(
                "dbo.ExamControllers",
                c => new
                    {
                        ExamControllerID = c.Int(nullable: false, identity: true),
                        NameoftheBordorUniversity = c.String(maxLength: 50),
                        ExamControllerName = c.String(maxLength: 50),
                        Location = c.String(maxLength: 50),
                        DepartmentID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.ExamControllerID)
                .ForeignKey("dbo.Departments", t => t.DepartmentID, cascadeDelete: true)
                .Index(t => t.DepartmentID);
            
            CreateTable(
                "dbo.ExamControllerVerifcations",
                c => new
                    {
                        ExamControllerVerifcationID = c.Int(nullable: false, identity: true),
                        SUIDNo = c.String(),
                        StudentID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.ExamControllerVerifcationID)
                .ForeignKey("dbo.Students", t => t.StudentID, cascadeDelete: true)
                .Index(t => t.StudentID);
            
            CreateTable(
                "dbo.Logins",
                c => new
                    {
                        LoginID = c.Int(nullable: false, identity: true),
                        Password = c.String(maxLength: 25),
                    })
                .PrimaryKey(t => t.LoginID);
            
            CreateTable(
                "dbo.StatusReports",
                c => new
                    {
                        StatusReportID = c.Int(nullable: false, identity: true),
                        RemarksonStatus = c.String(maxLength: 200),
                        Status = c.String(maxLength: 10),
                        UplodedData = c.String(),
                        StudentID = c.Int(nullable: false),
                        SUIDStaffID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.StatusReportID)
                .ForeignKey("dbo.Students", t => t.StudentID, cascadeDelete: true)
                .ForeignKey("dbo.SUIDStaffs", t => t.SUIDStaffID, cascadeDelete: true)
                .Index(t => t.StudentID)
                .Index(t => t.SUIDStaffID);
            
            CreateTable(
                "dbo.SUIDStaffs",
                c => new
                    {
                        SUIDStaffID = c.Int(nullable: false, identity: true),
                        StaffName = c.String(maxLength: 50),
                        Location = c.String(maxLength: 50),
                        DepartmentID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.SUIDStaffID)
                .ForeignKey("dbo.Departments", t => t.DepartmentID, cascadeDelete: true)
                .Index(t => t.DepartmentID);
            
            CreateTable(
                "dbo.StudentCertificates",
                c => new
                    {
                        StudentCertificateID = c.Int(nullable: false, identity: true),
                        BordorUniversityName = c.String(maxLength: 50),
                        RollNumber = c.String(),
                        StudentName = c.String(maxLength: 30),
                        TotalMarks = c.Int(nullable: false),
                        Grade = c.String(maxLength: 2),
                        ScanedCertificate = c.String(),
                        StudentID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.StudentCertificateID)
                .ForeignKey("dbo.Students", t => t.StudentID, cascadeDelete: true)
                .Index(t => t.StudentID);
            
            CreateTable(
                "dbo.SUIDNumbers",
                c => new
                    {
                        SUIDNumberID = c.Int(nullable: false, identity: true),
                        SUIDNo = c.String(),
                        StudentID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.SUIDNumberID)
                .ForeignKey("dbo.Students", t => t.StudentID, cascadeDelete: true)
                .Index(t => t.StudentID);
            
            CreateStoredProcedure(
                "dbo.Admin_Insert",
                p => new
                    {
                        AdminName = p.String(maxLength: 50),
                        DepartmentID = p.Int(),
                    },
                body:
                    @"INSERT [dbo].[Admins]([AdminName], [DepartmentID])
                      VALUES (@AdminName, @DepartmentID)
                      
                      DECLARE @AdminID int
                      SELECT @AdminID = [AdminID]
                      FROM [dbo].[Admins]
                      WHERE @@ROWCOUNT > 0 AND [AdminID] = scope_identity()
                      
                      SELECT t0.[AdminID]
                      FROM [dbo].[Admins] AS t0
                      WHERE @@ROWCOUNT > 0 AND t0.[AdminID] = @AdminID"
            );
            
            CreateStoredProcedure(
                "dbo.Admin_Update",
                p => new
                    {
                        AdminID = p.Int(),
                        AdminName = p.String(maxLength: 50),
                        DepartmentID = p.Int(),
                    },
                body:
                    @"UPDATE [dbo].[Admins]
                      SET [AdminName] = @AdminName, [DepartmentID] = @DepartmentID
                      WHERE ([AdminID] = @AdminID)"
            );
            
            CreateStoredProcedure(
                "dbo.Admin_Delete",
                p => new
                    {
                        AdminID = p.Int(),
                    },
                body:
                    @"DELETE [dbo].[Admins]
                      WHERE ([AdminID] = @AdminID)"
            );
            
            CreateStoredProcedure(
                "dbo.Department_Insert",
                p => new
                    {
                        DepartmentName = p.String(maxLength: 30),
                    },
                body:
                    @"INSERT [dbo].[Departments]([DepartmentName])
                      VALUES (@DepartmentName)
                      
                      DECLARE @DepartmentID int
                      SELECT @DepartmentID = [DepartmentID]
                      FROM [dbo].[Departments]
                      WHERE @@ROWCOUNT > 0 AND [DepartmentID] = scope_identity()
                      
                      SELECT t0.[DepartmentID]
                      FROM [dbo].[Departments] AS t0
                      WHERE @@ROWCOUNT > 0 AND t0.[DepartmentID] = @DepartmentID"
            );
            
            CreateStoredProcedure(
                "dbo.Department_Update",
                p => new
                    {
                        DepartmentID = p.Int(),
                        DepartmentName = p.String(maxLength: 30),
                    },
                body:
                    @"UPDATE [dbo].[Departments]
                      SET [DepartmentName] = @DepartmentName
                      WHERE ([DepartmentID] = @DepartmentID)"
            );
            
            CreateStoredProcedure(
                "dbo.Department_Delete",
                p => new
                    {
                        DepartmentID = p.Int(),
                    },
                body:
                    @"DELETE [dbo].[Departments]
                      WHERE ([DepartmentID] = @DepartmentID)"
            );
            
            CreateStoredProcedure(
                "dbo.CompanyPerson_Insert",
                p => new
                    {
                        NameofCompany = p.String(maxLength: 50),
                        CEmployeeName = p.String(maxLength: 50),
                        Location = p.String(maxLength: 50),
                        DepartmentID = p.Int(),
                    },
                body:
                    @"INSERT [dbo].[CompanyPersons]([NameofCompany], [CEmployeeName], [Location], [DepartmentID])
                      VALUES (@NameofCompany, @CEmployeeName, @Location, @DepartmentID)
                      
                      DECLARE @CompanyPersonID int
                      SELECT @CompanyPersonID = [CompanyPersonID]
                      FROM [dbo].[CompanyPersons]
                      WHERE @@ROWCOUNT > 0 AND [CompanyPersonID] = scope_identity()
                      
                      SELECT t0.[CompanyPersonID]
                      FROM [dbo].[CompanyPersons] AS t0
                      WHERE @@ROWCOUNT > 0 AND t0.[CompanyPersonID] = @CompanyPersonID"
            );
            
            CreateStoredProcedure(
                "dbo.CompanyPerson_Update",
                p => new
                    {
                        CompanyPersonID = p.Int(),
                        NameofCompany = p.String(maxLength: 50),
                        CEmployeeName = p.String(maxLength: 50),
                        Location = p.String(maxLength: 50),
                        DepartmentID = p.Int(),
                    },
                body:
                    @"UPDATE [dbo].[CompanyPersons]
                      SET [NameofCompany] = @NameofCompany, [CEmployeeName] = @CEmployeeName, [Location] = @Location, [DepartmentID] = @DepartmentID
                      WHERE ([CompanyPersonID] = @CompanyPersonID)"
            );
            
            CreateStoredProcedure(
                "dbo.CompanyPerson_Delete",
                p => new
                    {
                        CompanyPersonID = p.Int(),
                    },
                body:
                    @"DELETE [dbo].[CompanyPersons]
                      WHERE ([CompanyPersonID] = @CompanyPersonID)"
            );
            
            CreateStoredProcedure(
                "dbo.CompanyVerification_Insert",
                p => new
                    {
                        StudentID = p.String(),
                        SUIDNo = p.Int(),
                        Student_StudentID = p.Int(),
                    },
                body:
                    @"INSERT [dbo].[CompanyVerifications]([StudentID], [SUIDNo], [Student_StudentID])
                      VALUES (@StudentID, @SUIDNo, @Student_StudentID)
                      
                      DECLARE @CompanyVerificationID int
                      SELECT @CompanyVerificationID = [CompanyVerificationID]
                      FROM [dbo].[CompanyVerifications]
                      WHERE @@ROWCOUNT > 0 AND [CompanyVerificationID] = scope_identity()
                      
                      SELECT t0.[CompanyVerificationID]
                      FROM [dbo].[CompanyVerifications] AS t0
                      WHERE @@ROWCOUNT > 0 AND t0.[CompanyVerificationID] = @CompanyVerificationID"
            );
            
            CreateStoredProcedure(
                "dbo.CompanyVerification_Update",
                p => new
                    {
                        CompanyVerificationID = p.Int(),
                        StudentID = p.String(),
                        SUIDNo = p.Int(),
                        Student_StudentID = p.Int(),
                    },
                body:
                    @"UPDATE [dbo].[CompanyVerifications]
                      SET [StudentID] = @StudentID, [SUIDNo] = @SUIDNo, [Student_StudentID] = @Student_StudentID
                      WHERE ([CompanyVerificationID] = @CompanyVerificationID)"
            );
            
            CreateStoredProcedure(
                "dbo.CompanyVerification_Delete",
                p => new
                    {
                        CompanyVerificationID = p.Int(),
                        Student_StudentID = p.Int(),
                    },
                body:
                    @"DELETE [dbo].[CompanyVerifications]
                      WHERE (([CompanyVerificationID] = @CompanyVerificationID) AND (([Student_StudentID] = @Student_StudentID) OR ([Student_StudentID] IS NULL AND @Student_StudentID IS NULL)))"
            );
            
            CreateStoredProcedure(
                "dbo.Student_Insert",
                p => new
                    {
                        EnrolementDateTime = p.DateTime(),
                        StudentName = p.String(maxLength: 50),
                        FatherName = p.String(maxLength: 50),
                        MotherName = p.String(maxLength: 50),
                        Gender = p.String(maxLength: 2),
                        DateofBirth = p.DateTime(),
                        Age = p.Int(),
                        CurrentAddress = p.String(maxLength: 150),
                        City = p.String(maxLength: 30),
                        State = p.String(maxLength: 30),
                        Country = p.String(maxLength: 30),
                        Email = p.String(maxLength: 100),
                        Pincode = p.String(),
                        ContactNumber = p.String(),
                        PANNumber = p.String(),
                        Passport = p.String(),
                        Drivinglicence = p.String(),
                        Photo = p.String(),
                    },
                body:
                    @"INSERT [dbo].[Students]([EnrolementDateTime], [StudentName], [FatherName], [MotherName], [Gender], [DateofBirth], [Age], [CurrentAddress], [City], [State], [Country], [Email], [Pincode], [ContactNumber], [PANNumber], [Passport], [Drivinglicence], [Photo])
                      VALUES (@EnrolementDateTime, @StudentName, @FatherName, @MotherName, @Gender, @DateofBirth, @Age, @CurrentAddress, @City, @State, @Country, @Email, @Pincode, @ContactNumber, @PANNumber, @Passport, @Drivinglicence, @Photo)
                      
                      DECLARE @StudentID int
                      SELECT @StudentID = [StudentID]
                      FROM [dbo].[Students]
                      WHERE @@ROWCOUNT > 0 AND [StudentID] = scope_identity()
                      
                      SELECT t0.[StudentID]
                      FROM [dbo].[Students] AS t0
                      WHERE @@ROWCOUNT > 0 AND t0.[StudentID] = @StudentID"
            );
            
            CreateStoredProcedure(
                "dbo.Student_Update",
                p => new
                    {
                        StudentID = p.Int(),
                        EnrolementDateTime = p.DateTime(),
                        StudentName = p.String(maxLength: 50),
                        FatherName = p.String(maxLength: 50),
                        MotherName = p.String(maxLength: 50),
                        Gender = p.String(maxLength: 2),
                        DateofBirth = p.DateTime(),
                        Age = p.Int(),
                        CurrentAddress = p.String(maxLength: 150),
                        City = p.String(maxLength: 30),
                        State = p.String(maxLength: 30),
                        Country = p.String(maxLength: 30),
                        Email = p.String(maxLength: 100),
                        Pincode = p.String(),
                        ContactNumber = p.String(),
                        PANNumber = p.String(),
                        Passport = p.String(),
                        Drivinglicence = p.String(),
                        Photo = p.String(),
                    },
                body:
                    @"UPDATE [dbo].[Students]
                      SET [EnrolementDateTime] = @EnrolementDateTime, [StudentName] = @StudentName, [FatherName] = @FatherName, [MotherName] = @MotherName, [Gender] = @Gender, [DateofBirth] = @DateofBirth, [Age] = @Age, [CurrentAddress] = @CurrentAddress, [City] = @City, [State] = @State, [Country] = @Country, [Email] = @Email, [Pincode] = @Pincode, [ContactNumber] = @ContactNumber, [PANNumber] = @PANNumber, [Passport] = @Passport, [Drivinglicence] = @Drivinglicence, [Photo] = @Photo
                      WHERE ([StudentID] = @StudentID)"
            );
            
            CreateStoredProcedure(
                "dbo.Student_Delete",
                p => new
                    {
                        StudentID = p.Int(),
                    },
                body:
                    @"DELETE [dbo].[Students]
                      WHERE ([StudentID] = @StudentID)"
            );
            
            CreateStoredProcedure(
                "dbo.EDCertificate_Insert",
                p => new
                    {
                        BordorUniversityName = p.String(maxLength: 50),
                        RollNumber = p.String(),
                        StudentName = p.String(maxLength: 30),
                        TotalMarks = p.Int(),
                        Grade = p.String(maxLength: 2),
                        ScanedCertificate = p.String(),
                        QualificationID = p.Int(),
                        Qulification_QulificationID = p.Int(),
                    },
                body:
                    @"INSERT [dbo].[EDCertificates]([BordorUniversityName], [RollNumber], [StudentName], [TotalMarks], [Grade], [ScanedCertificate], [QualificationID], [Qulification_QulificationID])
                      VALUES (@BordorUniversityName, @RollNumber, @StudentName, @TotalMarks, @Grade, @ScanedCertificate, @QualificationID, @Qulification_QulificationID)
                      
                      DECLARE @EDCertificateID int
                      SELECT @EDCertificateID = [EDCertificateID]
                      FROM [dbo].[EDCertificates]
                      WHERE @@ROWCOUNT > 0 AND [EDCertificateID] = scope_identity()
                      
                      SELECT t0.[EDCertificateID]
                      FROM [dbo].[EDCertificates] AS t0
                      WHERE @@ROWCOUNT > 0 AND t0.[EDCertificateID] = @EDCertificateID"
            );
            
            CreateStoredProcedure(
                "dbo.EDCertificate_Update",
                p => new
                    {
                        EDCertificateID = p.Int(),
                        BordorUniversityName = p.String(maxLength: 50),
                        RollNumber = p.String(),
                        StudentName = p.String(maxLength: 30),
                        TotalMarks = p.Int(),
                        Grade = p.String(maxLength: 2),
                        ScanedCertificate = p.String(),
                        QualificationID = p.Int(),
                        Qulification_QulificationID = p.Int(),
                    },
                body:
                    @"UPDATE [dbo].[EDCertificates]
                      SET [BordorUniversityName] = @BordorUniversityName, [RollNumber] = @RollNumber, [StudentName] = @StudentName, [TotalMarks] = @TotalMarks, [Grade] = @Grade, [ScanedCertificate] = @ScanedCertificate, [QualificationID] = @QualificationID, [Qulification_QulificationID] = @Qulification_QulificationID
                      WHERE ([EDCertificateID] = @EDCertificateID)"
            );
            
            CreateStoredProcedure(
                "dbo.EDCertificate_Delete",
                p => new
                    {
                        EDCertificateID = p.Int(),
                        Qulification_QulificationID = p.Int(),
                    },
                body:
                    @"DELETE [dbo].[EDCertificates]
                      WHERE (([EDCertificateID] = @EDCertificateID) AND (([Qulification_QulificationID] = @Qulification_QulificationID) OR ([Qulification_QulificationID] IS NULL AND @Qulification_QulificationID IS NULL)))"
            );
            
            CreateStoredProcedure(
                "dbo.Qulification_Insert",
                p => new
                    {
                        QualificationName = p.String(maxLength: 50),
                    },
                body:
                    @"INSERT [dbo].[Qulifications]([QualificationName])
                      VALUES (@QualificationName)
                      
                      DECLARE @QulificationID int
                      SELECT @QulificationID = [QulificationID]
                      FROM [dbo].[Qulifications]
                      WHERE @@ROWCOUNT > 0 AND [QulificationID] = scope_identity()
                      
                      SELECT t0.[QulificationID]
                      FROM [dbo].[Qulifications] AS t0
                      WHERE @@ROWCOUNT > 0 AND t0.[QulificationID] = @QulificationID"
            );
            
            CreateStoredProcedure(
                "dbo.Qulification_Update",
                p => new
                    {
                        QulificationID = p.Int(),
                        QualificationName = p.String(maxLength: 50),
                    },
                body:
                    @"UPDATE [dbo].[Qulifications]
                      SET [QualificationName] = @QualificationName
                      WHERE ([QulificationID] = @QulificationID)"
            );
            
            CreateStoredProcedure(
                "dbo.Qulification_Delete",
                p => new
                    {
                        QulificationID = p.Int(),
                    },
                body:
                    @"DELETE [dbo].[Qulifications]
                      WHERE ([QulificationID] = @QulificationID)"
            );
            
            CreateStoredProcedure(
                "dbo.ExamController_Insert",
                p => new
                    {
                        NameoftheBordorUniversity = p.String(maxLength: 50),
                        ExamControllerName = p.String(maxLength: 50),
                        Location = p.String(maxLength: 50),
                        DepartmentID = p.Int(),
                    },
                body:
                    @"INSERT [dbo].[ExamControllers]([NameoftheBordorUniversity], [ExamControllerName], [Location], [DepartmentID])
                      VALUES (@NameoftheBordorUniversity, @ExamControllerName, @Location, @DepartmentID)
                      
                      DECLARE @ExamControllerID int
                      SELECT @ExamControllerID = [ExamControllerID]
                      FROM [dbo].[ExamControllers]
                      WHERE @@ROWCOUNT > 0 AND [ExamControllerID] = scope_identity()
                      
                      SELECT t0.[ExamControllerID]
                      FROM [dbo].[ExamControllers] AS t0
                      WHERE @@ROWCOUNT > 0 AND t0.[ExamControllerID] = @ExamControllerID"
            );
            
            CreateStoredProcedure(
                "dbo.ExamController_Update",
                p => new
                    {
                        ExamControllerID = p.Int(),
                        NameoftheBordorUniversity = p.String(maxLength: 50),
                        ExamControllerName = p.String(maxLength: 50),
                        Location = p.String(maxLength: 50),
                        DepartmentID = p.Int(),
                    },
                body:
                    @"UPDATE [dbo].[ExamControllers]
                      SET [NameoftheBordorUniversity] = @NameoftheBordorUniversity, [ExamControllerName] = @ExamControllerName, [Location] = @Location, [DepartmentID] = @DepartmentID
                      WHERE ([ExamControllerID] = @ExamControllerID)"
            );
            
            CreateStoredProcedure(
                "dbo.ExamController_Delete",
                p => new
                    {
                        ExamControllerID = p.Int(),
                    },
                body:
                    @"DELETE [dbo].[ExamControllers]
                      WHERE ([ExamControllerID] = @ExamControllerID)"
            );
            
            CreateStoredProcedure(
                "dbo.ExamControllerVerifcation_Insert",
                p => new
                    {
                        SUIDNo = p.String(),
                        StudentID = p.Int(),
                    },
                body:
                    @"INSERT [dbo].[ExamControllerVerifcations]([SUIDNo], [StudentID])
                      VALUES (@SUIDNo, @StudentID)
                      
                      DECLARE @ExamControllerVerifcationID int
                      SELECT @ExamControllerVerifcationID = [ExamControllerVerifcationID]
                      FROM [dbo].[ExamControllerVerifcations]
                      WHERE @@ROWCOUNT > 0 AND [ExamControllerVerifcationID] = scope_identity()
                      
                      SELECT t0.[ExamControllerVerifcationID]
                      FROM [dbo].[ExamControllerVerifcations] AS t0
                      WHERE @@ROWCOUNT > 0 AND t0.[ExamControllerVerifcationID] = @ExamControllerVerifcationID"
            );
            
            CreateStoredProcedure(
                "dbo.ExamControllerVerifcation_Update",
                p => new
                    {
                        ExamControllerVerifcationID = p.Int(),
                        SUIDNo = p.String(),
                        StudentID = p.Int(),
                    },
                body:
                    @"UPDATE [dbo].[ExamControllerVerifcations]
                      SET [SUIDNo] = @SUIDNo, [StudentID] = @StudentID
                      WHERE ([ExamControllerVerifcationID] = @ExamControllerVerifcationID)"
            );
            
            CreateStoredProcedure(
                "dbo.ExamControllerVerifcation_Delete",
                p => new
                    {
                        ExamControllerVerifcationID = p.Int(),
                    },
                body:
                    @"DELETE [dbo].[ExamControllerVerifcations]
                      WHERE ([ExamControllerVerifcationID] = @ExamControllerVerifcationID)"
            );
            
            CreateStoredProcedure(
                "dbo.Login_Insert",
                p => new
                    {
                        Password = p.String(maxLength: 25),
                    },
                body:
                    @"INSERT [dbo].[Logins]([Password])
                      VALUES (@Password)
                      
                      DECLARE @LoginID int
                      SELECT @LoginID = [LoginID]
                      FROM [dbo].[Logins]
                      WHERE @@ROWCOUNT > 0 AND [LoginID] = scope_identity()
                      
                      SELECT t0.[LoginID]
                      FROM [dbo].[Logins] AS t0
                      WHERE @@ROWCOUNT > 0 AND t0.[LoginID] = @LoginID"
            );
            
            CreateStoredProcedure(
                "dbo.Login_Update",
                p => new
                    {
                        LoginID = p.Int(),
                        Password = p.String(maxLength: 25),
                    },
                body:
                    @"UPDATE [dbo].[Logins]
                      SET [Password] = @Password
                      WHERE ([LoginID] = @LoginID)"
            );
            
            CreateStoredProcedure(
                "dbo.Login_Delete",
                p => new
                    {
                        LoginID = p.Int(),
                    },
                body:
                    @"DELETE [dbo].[Logins]
                      WHERE ([LoginID] = @LoginID)"
            );
            
            CreateStoredProcedure(
                "dbo.StatusReport_Insert",
                p => new
                    {
                        RemarksonStatus = p.String(maxLength: 200),
                        Status = p.String(maxLength: 10),
                        UplodedData = p.String(),
                        StudentID = p.Int(),
                        SUIDStaffID = p.Int(),
                    },
                body:
                    @"INSERT [dbo].[StatusReports]([RemarksonStatus], [Status], [UplodedData], [StudentID], [SUIDStaffID])
                      VALUES (@RemarksonStatus, @Status, @UplodedData, @StudentID, @SUIDStaffID)
                      
                      DECLARE @StatusReportID int
                      SELECT @StatusReportID = [StatusReportID]
                      FROM [dbo].[StatusReports]
                      WHERE @@ROWCOUNT > 0 AND [StatusReportID] = scope_identity()
                      
                      SELECT t0.[StatusReportID]
                      FROM [dbo].[StatusReports] AS t0
                      WHERE @@ROWCOUNT > 0 AND t0.[StatusReportID] = @StatusReportID"
            );
            
            CreateStoredProcedure(
                "dbo.StatusReport_Update",
                p => new
                    {
                        StatusReportID = p.Int(),
                        RemarksonStatus = p.String(maxLength: 200),
                        Status = p.String(maxLength: 10),
                        UplodedData = p.String(),
                        StudentID = p.Int(),
                        SUIDStaffID = p.Int(),
                    },
                body:
                    @"UPDATE [dbo].[StatusReports]
                      SET [RemarksonStatus] = @RemarksonStatus, [Status] = @Status, [UplodedData] = @UplodedData, [StudentID] = @StudentID, [SUIDStaffID] = @SUIDStaffID
                      WHERE ([StatusReportID] = @StatusReportID)"
            );
            
            CreateStoredProcedure(
                "dbo.StatusReport_Delete",
                p => new
                    {
                        StatusReportID = p.Int(),
                    },
                body:
                    @"DELETE [dbo].[StatusReports]
                      WHERE ([StatusReportID] = @StatusReportID)"
            );
            
            CreateStoredProcedure(
                "dbo.SUIDStaff_Insert",
                p => new
                    {
                        StaffName = p.String(maxLength: 50),
                        Location = p.String(maxLength: 50),
                        DepartmentID = p.Int(),
                    },
                body:
                    @"INSERT [dbo].[SUIDStaffs]([StaffName], [Location], [DepartmentID])
                      VALUES (@StaffName, @Location, @DepartmentID)
                      
                      DECLARE @SUIDStaffID int
                      SELECT @SUIDStaffID = [SUIDStaffID]
                      FROM [dbo].[SUIDStaffs]
                      WHERE @@ROWCOUNT > 0 AND [SUIDStaffID] = scope_identity()
                      
                      SELECT t0.[SUIDStaffID]
                      FROM [dbo].[SUIDStaffs] AS t0
                      WHERE @@ROWCOUNT > 0 AND t0.[SUIDStaffID] = @SUIDStaffID"
            );
            
            CreateStoredProcedure(
                "dbo.SUIDStaff_Update",
                p => new
                    {
                        SUIDStaffID = p.Int(),
                        StaffName = p.String(maxLength: 50),
                        Location = p.String(maxLength: 50),
                        DepartmentID = p.Int(),
                    },
                body:
                    @"UPDATE [dbo].[SUIDStaffs]
                      SET [StaffName] = @StaffName, [Location] = @Location, [DepartmentID] = @DepartmentID
                      WHERE ([SUIDStaffID] = @SUIDStaffID)"
            );
            
            CreateStoredProcedure(
                "dbo.SUIDStaff_Delete",
                p => new
                    {
                        SUIDStaffID = p.Int(),
                    },
                body:
                    @"DELETE [dbo].[SUIDStaffs]
                      WHERE ([SUIDStaffID] = @SUIDStaffID)"
            );
            
            CreateStoredProcedure(
                "dbo.StudentCertificate_Insert",
                p => new
                    {
                        BordorUniversityName = p.String(maxLength: 50),
                        RollNumber = p.String(),
                        StudentName = p.String(maxLength: 30),
                        TotalMarks = p.Int(),
                        Grade = p.String(maxLength: 2),
                        ScanedCertificate = p.String(),
                        StudentID = p.Int(),
                    },
                body:
                    @"INSERT [dbo].[StudentCertificates]([BordorUniversityName], [RollNumber], [StudentName], [TotalMarks], [Grade], [ScanedCertificate], [StudentID])
                      VALUES (@BordorUniversityName, @RollNumber, @StudentName, @TotalMarks, @Grade, @ScanedCertificate, @StudentID)
                      
                      DECLARE @StudentCertificateID int
                      SELECT @StudentCertificateID = [StudentCertificateID]
                      FROM [dbo].[StudentCertificates]
                      WHERE @@ROWCOUNT > 0 AND [StudentCertificateID] = scope_identity()
                      
                      SELECT t0.[StudentCertificateID]
                      FROM [dbo].[StudentCertificates] AS t0
                      WHERE @@ROWCOUNT > 0 AND t0.[StudentCertificateID] = @StudentCertificateID"
            );
            
            CreateStoredProcedure(
                "dbo.StudentCertificate_Update",
                p => new
                    {
                        StudentCertificateID = p.Int(),
                        BordorUniversityName = p.String(maxLength: 50),
                        RollNumber = p.String(),
                        StudentName = p.String(maxLength: 30),
                        TotalMarks = p.Int(),
                        Grade = p.String(maxLength: 2),
                        ScanedCertificate = p.String(),
                        StudentID = p.Int(),
                    },
                body:
                    @"UPDATE [dbo].[StudentCertificates]
                      SET [BordorUniversityName] = @BordorUniversityName, [RollNumber] = @RollNumber, [StudentName] = @StudentName, [TotalMarks] = @TotalMarks, [Grade] = @Grade, [ScanedCertificate] = @ScanedCertificate, [StudentID] = @StudentID
                      WHERE ([StudentCertificateID] = @StudentCertificateID)"
            );
            
            CreateStoredProcedure(
                "dbo.StudentCertificate_Delete",
                p => new
                    {
                        StudentCertificateID = p.Int(),
                    },
                body:
                    @"DELETE [dbo].[StudentCertificates]
                      WHERE ([StudentCertificateID] = @StudentCertificateID)"
            );
            
            CreateStoredProcedure(
                "dbo.SUIDNumber_Insert",
                p => new
                    {
                        SUIDNo = p.String(),
                        StudentID = p.Int(),
                    },
                body:
                    @"INSERT [dbo].[SUIDNumbers]([SUIDNo], [StudentID])
                      VALUES (@SUIDNo, @StudentID)
                      
                      DECLARE @SUIDNumberID int
                      SELECT @SUIDNumberID = [SUIDNumberID]
                      FROM [dbo].[SUIDNumbers]
                      WHERE @@ROWCOUNT > 0 AND [SUIDNumberID] = scope_identity()
                      
                      SELECT t0.[SUIDNumberID]
                      FROM [dbo].[SUIDNumbers] AS t0
                      WHERE @@ROWCOUNT > 0 AND t0.[SUIDNumberID] = @SUIDNumberID"
            );
            
            CreateStoredProcedure(
                "dbo.SUIDNumber_Update",
                p => new
                    {
                        SUIDNumberID = p.Int(),
                        SUIDNo = p.String(),
                        StudentID = p.Int(),
                    },
                body:
                    @"UPDATE [dbo].[SUIDNumbers]
                      SET [SUIDNo] = @SUIDNo, [StudentID] = @StudentID
                      WHERE ([SUIDNumberID] = @SUIDNumberID)"
            );
            
            CreateStoredProcedure(
                "dbo.SUIDNumber_Delete",
                p => new
                    {
                        SUIDNumberID = p.Int(),
                    },
                body:
                    @"DELETE [dbo].[SUIDNumbers]
                      WHERE ([SUIDNumberID] = @SUIDNumberID)"
            );
            
        }
        
        public override void Down()
        {
            DropStoredProcedure("dbo.SUIDNumber_Delete");
            DropStoredProcedure("dbo.SUIDNumber_Update");
            DropStoredProcedure("dbo.SUIDNumber_Insert");
            DropStoredProcedure("dbo.StudentCertificate_Delete");
            DropStoredProcedure("dbo.StudentCertificate_Update");
            DropStoredProcedure("dbo.StudentCertificate_Insert");
            DropStoredProcedure("dbo.SUIDStaff_Delete");
            DropStoredProcedure("dbo.SUIDStaff_Update");
            DropStoredProcedure("dbo.SUIDStaff_Insert");
            DropStoredProcedure("dbo.StatusReport_Delete");
            DropStoredProcedure("dbo.StatusReport_Update");
            DropStoredProcedure("dbo.StatusReport_Insert");
            DropStoredProcedure("dbo.Login_Delete");
            DropStoredProcedure("dbo.Login_Update");
            DropStoredProcedure("dbo.Login_Insert");
            DropStoredProcedure("dbo.ExamControllerVerifcation_Delete");
            DropStoredProcedure("dbo.ExamControllerVerifcation_Update");
            DropStoredProcedure("dbo.ExamControllerVerifcation_Insert");
            DropStoredProcedure("dbo.ExamController_Delete");
            DropStoredProcedure("dbo.ExamController_Update");
            DropStoredProcedure("dbo.ExamController_Insert");
            DropStoredProcedure("dbo.Qulification_Delete");
            DropStoredProcedure("dbo.Qulification_Update");
            DropStoredProcedure("dbo.Qulification_Insert");
            DropStoredProcedure("dbo.EDCertificate_Delete");
            DropStoredProcedure("dbo.EDCertificate_Update");
            DropStoredProcedure("dbo.EDCertificate_Insert");
            DropStoredProcedure("dbo.Student_Delete");
            DropStoredProcedure("dbo.Student_Update");
            DropStoredProcedure("dbo.Student_Insert");
            DropStoredProcedure("dbo.CompanyVerification_Delete");
            DropStoredProcedure("dbo.CompanyVerification_Update");
            DropStoredProcedure("dbo.CompanyVerification_Insert");
            DropStoredProcedure("dbo.CompanyPerson_Delete");
            DropStoredProcedure("dbo.CompanyPerson_Update");
            DropStoredProcedure("dbo.CompanyPerson_Insert");
            DropStoredProcedure("dbo.Department_Delete");
            DropStoredProcedure("dbo.Department_Update");
            DropStoredProcedure("dbo.Department_Insert");
            DropStoredProcedure("dbo.Admin_Delete");
            DropStoredProcedure("dbo.Admin_Update");
            DropStoredProcedure("dbo.Admin_Insert");
            DropForeignKey("dbo.SUIDNumbers", "StudentID", "dbo.Students");
            DropForeignKey("dbo.StudentCertificates", "StudentID", "dbo.Students");
            DropForeignKey("dbo.StatusReports", "SUIDStaffID", "dbo.SUIDStaffs");
            DropForeignKey("dbo.SUIDStaffs", "DepartmentID", "dbo.Departments");
            DropForeignKey("dbo.StatusReports", "StudentID", "dbo.Students");
            DropForeignKey("dbo.ExamControllerVerifcations", "StudentID", "dbo.Students");
            DropForeignKey("dbo.ExamControllers", "DepartmentID", "dbo.Departments");
            DropForeignKey("dbo.EDCertificates", "Qulification_QulificationID", "dbo.Qulifications");
            DropForeignKey("dbo.CompanyVerifications", "Student_StudentID", "dbo.Students");
            DropForeignKey("dbo.CompanyPersons", "DepartmentID", "dbo.Departments");
            DropForeignKey("dbo.Admins", "DepartmentID", "dbo.Departments");
            DropIndex("dbo.SUIDNumbers", new[] { "StudentID" });
            DropIndex("dbo.StudentCertificates", new[] { "StudentID" });
            DropIndex("dbo.SUIDStaffs", new[] { "DepartmentID" });
            DropIndex("dbo.StatusReports", new[] { "SUIDStaffID" });
            DropIndex("dbo.StatusReports", new[] { "StudentID" });
            DropIndex("dbo.ExamControllerVerifcations", new[] { "StudentID" });
            DropIndex("dbo.ExamControllers", new[] { "DepartmentID" });
            DropIndex("dbo.EDCertificates", new[] { "Qulification_QulificationID" });
            DropIndex("dbo.CompanyVerifications", new[] { "Student_StudentID" });
            DropIndex("dbo.CompanyPersons", new[] { "DepartmentID" });
            DropIndex("dbo.Admins", new[] { "DepartmentID" });
            DropTable("dbo.SUIDNumbers");
            DropTable("dbo.StudentCertificates");
            DropTable("dbo.SUIDStaffs");
            DropTable("dbo.StatusReports");
            DropTable("dbo.Logins");
            DropTable("dbo.ExamControllerVerifcations");
            DropTable("dbo.ExamControllers");
            DropTable("dbo.Qulifications");
            DropTable("dbo.EDCertificates");
            DropTable("dbo.Students");
            DropTable("dbo.CompanyVerifications");
            DropTable("dbo.CompanyPersons");
            DropTable("dbo.Departments");
            DropTable("dbo.Admins");
        }
    }
}
