/*AT THIS POINT WE SHOULD HAVE 4 FILES

	1) BANKRUPTCY FILE
	2) LITIGIOUS FILE
	3) DECEASED
	4) MILITARY FILE					*/


/*NEED TO ROLLUP THESE FILES AND OUTPUT THEM*/

/*I MADE THIS DIRECTORY AT BEGINNING OF PROGRAM*/

/*%LET EXCEPTION_PATH = &MASTER_DIR.\EXCEPTION FILES\&DATE.;*/
/*%PUT &EXCEPTION_PATH;*/

/*BANKRUPTCY FILE*/
PROC EXPORT DATA=BANKRUPTCY_FINAL
	OUTFILE="&EXCEPTION_PATH.\BANKRUPTCY_FINAL_EXCEPTIONS.XLSX"
	DBMS=XLSX
	REPLACE
	LABEL;
RUN;

/*GET DECEASED FILE*/
PROC EXPORT DATA=DECEASED_FINAL
	OUTFILE="&EXCEPTION_PATH.\DECEASED_FINAL_EXCEPTIONS.XLSX"
	DBMS=XLSX
	REPLACE
	LABEL;
RUN;

/*GET LITIGIOUS FILE*/
PROC EXPORT DATA=LITIGIOUS_FINAL
	OUTFILE="&EXCEPTION_PATH.\LITIGIOUS_FINAL_EXCEPTIONS.XLSX"
	DBMS=XLSX
	REPLACE
	LABEL;
RUN;

/*GET MILITARY FILE*/
PROC EXPORT DATA=MILITARY_FINAL_EXCEPTIONS
	OUTFILE="&EXCEPTION_PATH.\MILITARY_FINAL_EXCEPTIONS.XLSX"
	DBMS=XLSX
	REPLACE
	LABEL;
RUN;