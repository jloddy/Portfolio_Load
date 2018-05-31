/*---------------------------------------------------------------

	AUTHOR: JUSTIN HUBBARD

	GOAL: LOOP THROUGH DIRECTORY WHERE DATA SERVICE OUTPUTS WILL BE PLACE UNTIL
		  OUTPUTS ARE PRESENT.

-----------------------------------------------------------------*/

OPTIONS MPRINT MLOGIC SYMBOLGEN VALIDVARNAME=ANY;

FILENAME GEO_IN PIPE 'DIR "C:\Users\john.lodmell\OneDrive - emergentbusinessgroup.com\New Business\New_Load_Process_Test\DATA SERVICES OUTPUTS\*.*" /B ';

*Justin's Address;
/*FILENAME GEO_IN PIPE 'DIR "E:\SHARED\CADA\SAS SOURCE CODE\DEVELOPMENT\JHUBBARD\EBG\1_PORTFOLIO_FILE_STANDARDIZATION\PRODUCTION ENVIRONMENT TEST\DATA SERVICES OUTPUTS\*.*" /B ';*/
<<<<<<< HEAD

=======
>>>>>>> master

%LET FILE_LOC_IN = "&MASTER_DIR.\DATA SERVICES OUTPUTS";

%LET DATE=%SYSFUNC(INTNX(DAY,%SYSFUNC(TODAY()),0,END),DATE7.);
%PUT &DATE;

%MACRO FIND_DATASERVICE_DATA();

	%DO %UNTIL (%EVAL(&COUNT_DS_IN >= 4));

		DATA DIRLIST_GEO_IN;
		       INFILE GEO_IN LRECL=200 TRUNCOVER;
		       INPUT FILE_NAME $150.;
			   LENGTH = LENGTH(FILE_NAME);
			   FILE_NAME_FULL = &FILE_LOC_IN.||"\"||FILE_NAME;
			   EXTENSION = SCAN(TRANWRD(COMPRESS(FILE_NAME_FULL),'.',' '),2);
		RUN;

		PROC SQL NOPRINT;
			SELECT COUNT(FILE_NAME) INTO: COUNT_DS_IN
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
			IF EXTENSION = '' THEN TYPE = 'MILITARY';
		RUN;

		%IF %EVAL(&COUNT_DS_IN < 4) %THEN 
			%DO;
				/*SLEEPS FOR 60 SECONDS UNTIL IT FINDS THE FILE, IT WILL LOOP FOREVER UNTIL THE 4 FILES ARE THERE*/
				DATA SLEEP;
					SLEEPTIME = SLEEP(60,1);
					CALL SLEEP(SLEEPTIME,1);
				RUN;

			%END;
	
	%END;

%MEND;

%FIND_DATASERVICE_DATA()



%MACRO CHECK_FIRST_FILE_IN(FILE=,TOTAL_COUNTER=,FILE_NAME=,EXTENSION=,TYPE=);

	%IF &TOTAL_COUNTER.= 1  %THEN 
		%DO;
			
			%PUT &FILE;
			%PUT &EXTENSION;
			%PUT &TYPE;

			DATA _NULL_;
				CALL SYMPUTX("FILE_USE","&FILE",'G');
				CALL SYMPUTX("TOTAL_COUNTER_USE",&TOTAL_COUNTER.,'G');
				CALL SYMPUTX("TYPE_USE","&TYPE",'G');
			RUN;
			

			/*IMPORT CSV FILE*/
			%INCLUDE "&WHEREPRGMSAT.\IMPORT DATA SERVICES OUTPUTS.SAS";
				%IMPORT_DATA_SERVICES_OUTPUT
			/*DATA SERVICES OUTPUTS CREATED*/

		%END;

	%ELSE %IF &TOTAL_COUNTER. ^= 1 %THEN 
		%DO;

			%PUT &FILE;
			%PUT &EXTENSION;
			%PUT &TYPE;

			DATA _NULL_;
				CALL SYMPUTX("FILE_USE","&FILE",'G');
				CALL SYMPUTX("TOTAL_COUNTER_USE",&TOTAL_COUNTER.,'G');
				CALL SYMPUTX("TYPE_USE","&TYPE",'G');
			RUN;	

			/*IMPORT CSV FILE*/
			%INCLUDE "&WHEREPRGMSAT.\IMPORT DATA SERVICES OUTPUTS.SAS";
				%IMPORT_DATA_SERVICES_OUTPUT
			/*DATA SERVICES OUTPUTS CREATED*/

		%END;
%MEND;

DATA _NULL_;
	SET COUNT_FILES_IN;
	CALL EXECUTE('%NRSTR(%CHECK_FIRST_FILE_IN(FILE='||FILE_NAME_FULL||',TOTAL_COUNTER='||PUT(COUNT,8.)||',FILE_NAME='||FILE_NAME||',EXTENSION='||EXTENSION||',TYPE='||TYPE||'))');
RUN;
	


