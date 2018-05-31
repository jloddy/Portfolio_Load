

/*---------------------------------------------------------------------

	AUTHOR: JUSTIN HUBBARD - EMERGENT BUSINESS GROUP
	
	PURPOSE: IMPORT CLIENT FILES (CSV DELIMITED)
	
	STEPS:

		1) ASSIGNS LIBRARIES AND LOCATIONS
		2) SCANS LIBRARIES FOR ALL FILE TYPES TO IDENTIFY FILES THAT NEED TO BE IMPORTED
		3) LOOPS THROUGH FILES THAT NEED TO BE IMPORTED
		4) COMBINES CLIENT FILES AND OUTPUTS TO OUTPUT LIBRARY (THIS FILE CAN THEN BE LOADED INTO BEAM WHILE PROCESS CONTINUES ONTO DATA SERVICES STEPS)

-----------------------------------------------------------------------*/
OPTIONS MPRINT MLOGIC SYMBOLGEN VALIDVARNAME=ANY;

FILENAME GEO_IN PIPE 'DIR "C:\Users\john.lodmell\OneDrive - emergentbusinessgroup.com\New Business\New_Load_Process_Test\STANDARDIZED CLIENT FILES\*.CSV" /B ';

*Justin's Address;
/*FILENAME GEO_IN PIPE 'DIR "E:\SHARED\CADA\SAS SOURCE CODE\DEVELOPMENT\JHUBBARD\EBG\1_PORTFOLIO_FILE_STANDARDIZATION\PRODUCTION ENVIRONMENT TEST\STANDARDIZED CLIENT FILES\*.CSV" /B ';*/

%LET FILE_LOC_IN = "&MASTER_DIR.\STANDARDIZED CLIENT FILES";

%LET DATE=%SYSFUNC(INTNX(DAY,%SYSFUNC(TODAY()),0,END),DATE7.);
%PUT &DATE;

DATA DIRLIST_GEO_IN;
       INFILE GEO_IN LRECL=200 TRUNCOVER;
       INPUT FILE_NAME $150.;
	   LENGTH = LENGTH(FILE_NAME);
	   FILE_NAME_FULL = &FILE_LOC_IN.||"\"||FILE_NAME;
	   EXTENSION = SCAN(TRANWRD(COMPRESS(FILE_NAME_FULL),'.',' '),2);
	   CLIENT_NAME = UPCASE(SCAN(TRANWRD(FILE_NAME,'_',' '),1));
RUN;

PROC SQL;
	SELECT COUNT(FILE_NAME) INTO: COUNT_BEAM_IN
	FROM DIRLIST_GEO_IN
;
QUIT;

PROC SORT DATA=DIRLIST_GEO_IN NODUPKEY;
BY CLIENT_NAME FILE_NAME_FULL;
RUN;

DATA COUNT_FILES_IN;
	SET DIRLIST_GEO_IN;
	BY CLIENT_NAME FILE_NAME_FULL;
	RETAIN COUNT 0;
	IF FIRST.CLIENT_NAME THEN COUNT = 0;
	COUNT+1;
	TOTAL_COUNTER = COUNT;
/*	LAST_CLIENT_DATA = LAST.CLIENT_NAME;*/
RUN;

%MACRO CHECK_FIRST_FILE_IN(FILE=,TOTAL_COUNTER=,FILE_NAME=,EXTENSION=);

	%IF &TOTAL_COUNTER.= 1  %THEN 
		%DO;
			
			%PUT &FILE;
			%PUT &EXTENSION;

			DATA _NULL_;
				CALL SYMPUTX("FILE_USE","&FILE",'G');
				CALL SYMPUTX("TOTAL_COUNTER_USE",&TOTAL_COUNTER.,'G');
			RUN;

		/*CLIENT FILES*/
			%INCLUDE "&WHEREPRGMSAT.\IMPORT CLIENT FILES.SAS";
				%CLIENT_IMPORT

		%END;

	%ELSE %IF &TOTAL_COUNTER. ^= 1 %THEN 
		%DO;

			%PUT &FILE;
			%PUT &EXTENSION;

			DATA _NULL_;
				CALL SYMPUTX("FILE_USE","&FILE",'G');
				CALL SYMPUTX("TOTAL_COUNTER_USE",&TOTAL_COUNTER.,'G');
			RUN;

		/*CLIENT FILES*/
			%INCLUDE "&WHEREPRGMSAT.\IMPORT CLIENT FILES.SAS";
				%CLIENT_IMPORT

			PROC APPEND BASE=ACOUNT_EXTRACT DATA=CLIENT_ACCOUNT_EXTRACT_&TOTAL_COUNTER. FORCE;
			RUN;

		%END;
%MEND;

PROC SQL;
	DROP TABLE ACOUNT_EXTRACT;
QUIT;


DATA _NULL_;
	SET COUNT_FILES_IN;
	CALL EXECUTE('%NRSTR(%CHECK_FIRST_FILE_IN(FILE='||FILE_NAME_FULL||',TOTAL_COUNTER='||PUT(COUNT,8.)||',FILE_NAME='||FILE_NAME||',EXTENSION='||EXTENSION||'))');

RUN;