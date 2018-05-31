/*------------------------------------------------------------------------------

	AUTHOR: JUSTIN HUBBARD, EMERGENT BUSINESS GROUP

	PURPOSE: AUTOMATION OF EBG CLIENT/BEAM PORTFOLIO IMPORT AND DATA SERVICES ECOSYSTEM

	STEPS: BROKEN INTO 3 PARTS

		PART1 - IMPORT/FORMAT/DRIVE DATA SERVICES

			1) MAKE ANY NEEDED DIRECTORIES FOR THE DAY. THIS DIRECTORIES WILL STORE THE DATA GOING IN AND OUT OF THE PORTFOLIO AUTOMATION SYSTEM
			2) "IMPORT CLIENT DRIVER.SAS": 
					* THIS DRIVER CALLS "IMPORT CLIENT FILES.SAS" FILE WHICH IS THE TEMPLATE THAT WILL BE USED TO IMPORT CLIENT RAW DATA.
					* THE TEMPLATE SHOULD LOOK VERY FAMILAR TO BEAM. ATTACHED IN GITHUB IS AN EXCEL TEMPLATE THAT SHOWS THE TYPES FOR EACH COLUMN.
					* BEST WAY TO USE THE TEMPLATE IS TO OPEN THE CLIENT PORTFOLIO (RAW DATA) AND THE TEMPLATE SIDE BY SIDE IN EXCEL AND COPY AND PASTE THE
					  DATA INTO THE TEMPLATE FOR EACH COLUMN THAT YOU WANT TO LOAD/APPLIES FOR THE PORTFOLIO. THIS SEEMS LIKE THE BEST STRATEGY. DO NOT DELETE COLUMNS FROM THE TEMPLATE
					  AND PLEASE KEEP THE ORDER CONSISTENT. 
					* EVERYTHING IS IMPORTED AS CHARACTER TO LOWER THE RISK OF POSSIBLE DATA ERRORS. DATE FIELDS ARE IMPORTED AS CHARACTER ALSO, IF POSSIBLE, FORMAT THE
					  DATE FIELD AS MM/DD/YYYY. IF THIS IS FORMATTED WRONG THE PROCESS WON'T ERROR BUT WILL CAUSE DATA TO NOT BE CONSISTENT  THROUGHOUT
			3) "FORMAT IMPORT.SAS":
					* THIS STEP FORMATS THE PREVIOUS CLIENT DRIVER STEP. THINGS I FORMAT CONSIST OF REMOVING EXTRA CHARACTERS IN SSN, DATE FIELDS, AND PHONE NUMBERS ETC
			4) "EXPORT TO BEAM.SAS":
					* THIS STEP MAKES A EXPORT FILE THAT WILL BE USED TO IMPORT INTO BEAM. THIS STEP PRODUCES THE FILE IN A DIRECTORY MADE IN STEP 1
			5) "DATA SERVICES TREE.SAS":
					* THIS PROGRAM IS A DRIVER THAT CALLS THE DATA SERVICES PROGRAMS:
							*"LN_SCRA_INPUT.SAS" 		- CREATES LN_SCRA_INPUT DATA SERVICES INPUT
							*"LNPER_INPUT.SAS"   		- CREATES LNPER_INPUT DATA SERVICES INPUT
							*"LNPMTSCORE.SAS"    		- CREATES LNPER_INPUT DATA SERVICES INPUT
							*"LN_WATERFALL_INPUT.SAS" - CREATES LN_WATERFALL_INPUT DATA SERVICES INPUT
							*"TLO_WATERFALL_INPUT.SAS" - CREATES TLO_WATERFALL_INPUT DATA SERVICES INPUT
							*"SEND_OUT DATA SERVICE INPUTS.SAS" - SENDS OUT THE PREVIOUS DATA SERVICES THROUGH SFTP CONNECTION (USING WINSCP - CAN ADAPT THIS
									TO WHATEVER PROGRAM / CODE YOU ARE PREVIOUS USING
			
		PART2 - IMPORT DATA SERVICES/CREATE EXCEPTION FILES/SEARCH FOR BEAM ACCOUNTID

			1) "LOOP LOOKING FOR DATA SERVICE OUTPUT.SAS" - THIS DRIVERS'S LOGIC IS BUILT AROUND LOOPING UNTIL THE USER HAS SUPPLIED THE DATA SERVICE OUTPUT
				IN THE DATA SERVICES OUTPUT DIRECTORY. IN THE FUTURE......(I HOPE TO AUTOMATE THIS, DIDNT KNOW CODE OFF TOP OF MY HEAD TO PULL DOWN)
					THIS DRIVER CALLS THE FOLLOWING PROGRAMS (THEY ALL JUST IMPORT DATA SERVICES OUTPUT):
						*"IMPORT DATA SERVICES OUTPUTS.SAS"
						*"IMPORT TLO_WATERFALL_INPUT.SAS"
						*"IMPORT LN_LNWATERFALL_INPUT.SAS"
						*"IMPORT LNPMTSCORE_INPUT.SAS"
						*"IMPORT MILITARY_INPUT.SAS"			- FROM THE DOD (COLUMN SEPARATED FILE)

						NOTE: I'M IMPORTING THESE FILES ALSO AS CHARACTER TO LOWER THE RISK OF POSSIBLE DATA IMPORT ERRORS.

			2) "CREATE EXCEPTION FILES.SAS" - THIS PROGRAM FILTERS THROUGH THE DATA SERVICES OUTPUT CREATED IN PART 2: STEP 1 AND SEARCHES FOR
							- BANKRUPTCY
							- DECEASED
							- LITIGIOUS
							- MILITARY
					
						IF THE PROGRAM FINDS ANY RECORDS THAT APPLY TO THESE CATEGORIES THE PROGRAM WILL FIND THE APPROPRIATE COLUMNS AND CREATE A TEMPLATE
						FILE FOR EACH CATEGORIES EXCEPTIONS

			3) "OUTPUT EXCEPTION FILES.SAS"	- OUTPUTS RECORDS THAT APPLY TO THE EXCEPTION DATASETS CREATED IN PART 2: STEP 2
	
		PART3 - CREATE CUSTOM TEMPLATE/PHONE AND ADDRESS SCRUB FILES/ALREADY LOADED PHONE #'S 
			
			1) "CREATE CUSTOM PROPERTY INPUT.SAS" - CREATES THE CUSTOM PROPERTY INPUT FILE USING ACCOUNTID FROM BEAM AND SCORE FROM DATA SERVICES OUTPUT

			2) "RETURN MAIL DATABASE FILE.SAS" - CREATES RETURN MAIL TEMPLATE FILE USING ACCOUNTID FROM BEAM
		
			3) "PHONE NUMBER SCRUB FILE - LN AND TLO.SAS" - CREATES PHONE NUMBER SCRUB FILES FOR TLO AND LN		

--------------------------------------------------------------------------------*/

OPTIONS SYMBOLGEN MPRINT MLOGIC;

%GLOBAL DIRECTORIES;
%GLOBAL DATE;

%LET DATE=%SYSFUNC(INTNX(DAY,%SYSFUNC(TODAY()),0,END),DATE7.);
%PUT &DATE;

%PUT &SYSUSERID;

/*%LET WHEREPRGMSAT = E:\SHARED\CADA\SAS SOURCE CODE\DEVELOPMENT\JHUBBARD\EBG\1_PORTFOLIO_FILE_STANDARDIZATION\PROGRAMS\PROGRAMS;*/

%LET TYPE = CLIENT;


/*RUN MASTER PATH FILE 1ST AFTER YOU HAVE SPECIFIED THE CORRECT PATHS INSIDE THE FILE*/
%INCLUDE "&WHEREPRGMSAT.\MASTER PATH FILE.SAS";



%MACRO FILE_STANDARDIZATION_DECISION(TYPE=);

		/*	MAKE DIRECTORIES*/
			%INCLUDE "&WHEREPRGMSAT.\MAKE DIRECTORIES.SAS";

		/*KICK OFF PROCESS TO IMPORT CLIENT FILES*/
			%IF &TYPE = CLIENT %THEN
				%DO;
				/*PART1*/
					%INCLUDE "&WHEREPRGMSAT.\IMPORT CLIENT FILES DRIVER.SAS";
					%INCLUDE "&WHEREPRGMSAT.\IMPORT CLIENT OTHER DATA DRIVER.SAS";
					%INCLUDE "&WHEREPRGMSAT.\FORMAT IMPORT.SAS";
					%INCLUDE "&WHEREPRGMSAT.\DATA SERVICES TREE.SAS";
				/*PART2*/
					%INCLUDE "&WHEREPRGMSAT.\LOOP LOOKING FOR DATA SERVICE OUTPUT.SAS";
					%INCLUDE "&WHEREPRGMSAT.\LOOP LOOKING FOR BEAM IMPORT.SAS";
					%INCLUDE "&WHEREPRGMSAT.\CREATE EXCEPTION FILES.SAS";
					%INCLUDE "&WHEREPRGMSAT.\OUTPUT EXCEPTION FILES.SAS";
				/*PART3*/
					%INCLUDE "&WHEREPRGMSAT.\CREATE CUSTOM PROPERTY INPUT.SAS";
					%INCLUDE "&WHEREPRGMSAT.\RETURN MAIL DATABASE FILE.SAS";
					%INCLUDE "&WHEREPRGMSAT.\PHONE NUMBER SCRUB FILE - LN AND TLO.SAS";
				%END;

%MEND;

%FILE_STANDARDIZATION_DECISION(TYPE=&TYPE)




 






