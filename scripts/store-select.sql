USE STUDENT_DB;

CREATE TABLE STUDENTS_STATE
LOCATION '/user/cloudera/hive-share/tables/'
AS SELECT COUNT(*) AS N_STUDENTS, STATE FROM STUDENT
GROUP BY STATE;