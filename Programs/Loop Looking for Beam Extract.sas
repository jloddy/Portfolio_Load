/*---------------------------------------------------------------------

	AUTHOR: JUSTIN HUBBARD - EMERGENT BUSINESS GROUP
	
	PURPOSE: IMPORT BEAM FILES (CSV PLEASE)
	
	STEPS:

		1) ASSIGNS LIBRARIES AND LOCATIONS
		2) SCANS LIBRARIES FOR ALL FILE TYPES TO IDENTIFY FILES THAT NEED TO BE IMPORTED
		3) LOOPS THROUGH FILES THAT NEED TO BE IMPORTED
		4) COMBINES BEAM FILES AND OUTPUTS TO OUTPUT LIBRARY

----------------------------------------------------------------------- */
OPTIONS MPRINT MLOGIC SYMBOLGEN VALIDVARNAME=ANY;

FILENAME GEO_IN PIPE 'DIR "C:\Users\john.lodmell\OneDrive - emergentbusinessgroup.com\New Business\New_Load_Process_Test\IMPORT FROM BEAM\*.CSV" /B ';

*Justin's Directory;
/*FILENAME GEO_IN PIPE 'DIR "E:\SHARED\CADA\SAS SOURCE CODE\DEVELOPMENT\JHUBBARD\EBG\1_PORTFOLIO_FILE_STANDARDIZATION\PRODUCTION ENVIRONMENT TEST\IMPORT FROM BEAM\*.CSV" /B ';*/

%LET FILE_LOC_IN = "&MASTER_DIR.\IMPORT FROM BEAM";

%LET DATE=%SYSFUNC(INTNX(DAY,%SYSFUNC(TODAY()),0,END),DATE7.);
%PUT &DATE;

/*EMAIL WHEN FINISHED*/
OPTIONS EMAILSYS=SMTP EMAILHOST=MAIL.EBG.NET EMAILPORT=25;
FILENAME MYMAIL EMAIL; 
DATA _NULL_;
   FILE MYMAIL
		TO=('JLODMELL@EBG.NET')
	    FROM='WAITING_FOR_BEAM_EXTRACT@COMPLETE.COM'
        SUBJECT="WAITING FOR BEAM EXTRACT - &DATE";
RUN;


%MACRO FIND_DATASERVICE_DATA();

	%DO %UNTIL (%EVAL(&COUNT_BEAM_IN >= 1));

		DATA DIRLIST_GEO_IN;
		       INFILE GEO_IN LRECL=200 TRUNCOVER;
		       INPUT FILE_NAME $150.;
			   LENGTH = LENGTH(FILE_NAME);
			   FILE_NAME_FULL = &FILE_LOC_IN.||"\"||FILE_NAME;
			   EXTENSION = SCAN(TRANWRD(COMPRESS(FILE_NAME_FULL),'.',' '),2);
		RUN;

		PROC SQL NOPRINT;
			SELECT COUNT(FILE_NAME) INTO: COUNT_BEAM_IN
			FROM DIRLIST_GEO_IN
		;
		QUIT;

		PROC SORT DATA=DIRLIST_GEO_IN NODUPKEY;
		BY FILE_NAME_FULL ;
		RUN;

		DATA COUNT_FILES_IN;
			SET DIRLIST_GEO_IN;
			BY FILE_NAME_FULL;
			RETAIN COUNT 0;
			COUNT+1;
			TOTAL_COUNTER = COUNT;
			TYPE = UPCASE(COMPRESS(SCAN(TRANWRD(FILE_NAME,'_',' '),1)));
		RUN;

		%IF %EVAL(&COUNT_BEAM_IN < 1) %THEN 
			%DO;
				/*SLEEPS FOR 60 SECONDS UNTIL IT FINDS THE FILE, IT WILL LOOP FOREVER UNTIL THE 1 FILES ARE THERE*/
				DATA SLEEP;
					SLEEPTIME = SLEEP(60,1);
					CALL SLEEP(SLEEPTIME,1);
				RUN;

			%END;
	
	%END;

%MEND;

%FIND_DATASERVICE_DATA();


%MACRO CHECK_FIRST_FILE_IN(FILE=,TOTAL_COUNTER=,FILE_NAME=,EXTENSION=);

	%IF &TOTAL_COUNTER.= 1  %THEN 
		%DO;

			/*FILENAME IN_F "&FILE";*/
			
			%PUT &FILE;
			%PUT &EXTENSION;

			DATA _NULL_;
				CALL SYMPUTX("FILE_USE","&FILE",'G');
				CALL SYMPUTX("TOTAL_COUNTER_USE",&TOTAL_COUNTER.,'G');
			RUN;
			
			/*IMPORT PIPE DELIMITED FILE	*/
			%INCLUDE "&WHEREPRGMSAT.\BEAM FILE IMPORT.SAS";
				%BEAM_IMPORT
			/*BEAM_ACOUNT_EXTRACT IS CREATED*/

		%END;

	%ELSE %IF &TOTAL_COUNTER. ^= 1 %THEN 
		%DO;

			%PUT &FILE;
			%PUT &EXTENSION;

			DATA _NULL_;
				CALL SYMPUTX("FILE_USE","&FILE",'G');
				CALL SYMPUTX("TOTAL_COUNTER_USE",&TOTAL_COUNTER.,'G');
			RUN;	

			/*IMPORT PIPE DELIMITED FILE	*/
			%INCLUDE "&WHEREPRGMSAT.\BEAM FILE IMPORT.SAS";
				%BEAM_IMPORT
			/*BEAM_ACOUNT_EXTRACT_&TOTAL_COUNTER. IS CREATED*/


			PROC APPEND BASE=BEAM_ACCT_EXTRACT DATA=BEAM_ACOUNT_EXTRACT_&TOTAL_COUNTER. FORCE;
			RUN;

		%END;
%MEND;

PROC SQL;
	DROP TABLE BEAM_ACCT_EXTRACT;
QUIT;


DATA _NULL_;
	SET COUNT_FILES_IN;
	CALL EXECUTE('%NRSTR(%CHECK_FIRST_FILE_IN(FILE='||FILE_NAME_FULL||',TOTAL_COUNTER='||PUT(COUNT,8.)||',FILE_NAME='||FILE_NAME||',EXTENSION='||EXTENSION||'))');
RUN;


DATA BEAM_ACCT_EXTRACT_1;
	SET BEAM_ACCT_EXTRACT;
/*CHARACTER VARIABLES UPCASE / CHANGE MISSING VALUES TO '' */
	ARRAY VARS(*) _CHARACTER_;
		DO I=1 TO DIM(VARS);
			VARS(I) = UPCASE(VARS(I));
			IF VARS(I) = 'NA' 
			OR VARS(I) = '.' 
			OR VARS(I) = 'N/A'
			OR VARS(I) = 'N\A' THEN VARS(I) = '';
		END;
		DROP I;
RUN;


DATA BEAM_ACCT_EXTRACT_FORMAT;
	SET BEAM_ACCT_EXTRACT_1;
/*	DATES*/
	CODATE = COMPRESS(TRANWRD(CODATE,'-','/'));
	ISSUERLPDATE = COMPRESS(TRANWRD(ISSUERLPDATE,'-','/'));
	ACCOUNTOPENDATE = COMPRESS(TRANWRD(ACCOUNTOPENDATE,'-','/'));
	DELINQUENCYDATE = COMPRESS(TRANWRD(DELINQUENCYDATE,'-','/'));
	SCHEDULEDREPORTDATE = COMPRESS(TRANWRD(SCHEDULEDREPORTDATE,'-','/'));
	DELETIONDATE = COMPRESS(TRANWRD(DELETIONDATE,'-','/'));
	LASTPAYDATE = COMPRESS(TRANWRD(LASTPAYDATE,'-','/'));
	PBIRTHDATE = COMPRESS(TRANWRD(PBIRTHDATE,'-','/'));
	SBIRTHDATE = COMPRESS(TRANWRD(SBIRTHDATE,'-','/'));
	EMPLOYMENT_START_DATE = COMPRESS(TRANWRD(EMPLOYMENT_START_DATE,'-','/'));
	EMPLOYMENT_END_DATE = COMPRESS(TRANWRD(EMPLOYMENT_END_DATE,'-','/'));
	ACCOUNTRECEIVEDATE = COMPRESS(TRANWRD(ACCOUNTRECEIVEDATE,'-','/'));
	ORIG_ACCOUNT_OPEN_DATE = COMPRESS(TRANWRD(ORIG_ACCOUNT_OPEN_DATE,'-','/'));
/*	SSN*/
	PSSN_SIN = COMPRESS(COMPRESS(PSSN_SIN,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	SSSN_SIN = COMPRESS(COMPRESS(SSSN_SIN,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
/*PHONENBRS*/
	ORIGPHONE = COMPRESS(COMPRESS(ORIGPHONE,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	_1STPHONE = COMPRESS(COMPRESS(_1STPHONE,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	_2NDPHONE = COMPRESS(COMPRESS(_2NDPHONE,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	_3RDPHONE = COMPRESS(COMPRESS(_3RDPHONE,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	_4THPHONE = COMPRESS(COMPRESS(_4THPHONE,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	_5THPHONE = COMPRESS(COMPRESS(_5THPHONE,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	_6THPHONE = COMPRESS(COMPRESS(_6THPHONE,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	_7THPHONE = COMPRESS(COMPRESS(_7THPHONE,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	_8THPHONE = COMPRESS(COMPRESS(_8THPHONE,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	_9THPHONE = COMPRESS(COMPRESS(_9THPHONE,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	_10THPHONE = COMPRESS(COMPRESS(_10THPHONE,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	EMPLOYER_PHONE = COMPRESS(COMPRESS(EMPLOYER_PHONE,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	WHERE ISSUERACCOUNTNUMBER IS NOT MISSING;
/*MIGHT NEED TO ADD MORE TO THIS*/
RUN;


