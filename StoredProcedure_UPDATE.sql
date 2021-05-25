create procedure [dbo].[spUpdateEmployeeSalary]
@id int,
@month varchar(20),
@salary int,
@EmpId int
as
BEGIN
--below line will cause transaction uncommitable if constraint violation occur
set XACT_ABORT on;
begin try
begin TRANSACTION;
update SALARY
set EMPSAL=@salary
where SALARYId=@id and SAL_MONTH=@month and EmpId=@EmpId;
select e.EmpId,e.ENAME,e.JOB,s.EMPSAL,s.SAL_MONTH,s.SALARYId
from Employee e inner join SALARY s
ON e.EmpId=s.EmpId where s.SALARYId=@id;
COMMIT TRANSACTION;
END TRY
BEGIN CATCH
select ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage;
IF(XACT_STATE())=-1
BEGIN
  PRINT N'The transaction is in an uncommitable state.'+'Rolling back transaction.'
  ROLLBACK TRANSACTION;
  END;

  IF(XACT_STATE())=1
  BEGIN
    PRINT 
	    N'The transaction is committable. '+'Committing transaction.'
       COMMIT TRANSACTION;
	END;
	END CATCH
END
GO