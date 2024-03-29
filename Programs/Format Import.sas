/*--------------------FORMAT CLIENT_ACCOUNT_EXTRACT---------------

	1) STANDARDIZING SSN (TAKING OUT '-' ETC)
	2) STANDARDIZING DATES (REPLACING '-' WITH '/' ETC)

----------------------------------------------------------------*/

DATA FORMAT_ACOUNT_EXTRACT_1;
	SET ACOUNT_EXTRACT;
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


DATA FORMAT_ACOUNT_EXTRACT_2;
	SET FORMAT_ACOUNT_EXTRACT_1;
/*	DATES*/
	CHARGE_OFF_DATE = COMPRESS(TRANWRD(CHARGE_OFF_DATE,'-','/'));
	LAST_PAY_DATE = COMPRESS(TRANWRD(LAST_PAY_DATE,'-','/'));
	ACCOUNT_OPEN_DATE = COMPRESS(TRANWRD(ACCOUNT_OPEN_DATE,'-','/'));
	OCCURRENCE_DATE = COMPRESS(TRANWRD(OCCURRENCE_DATE,'-','/'));
	S_BIRTHDATE = COMPRESS(TRANWRD(S_BIRTHDATE,'-','/'));
	BIRTHDATE = COMPRESS(TRANWRD(BIRTHDATE,'-','/'));
	ALTERNATIVE_DATE_OF_DELINQUENCY = COMPRESS(TRANWRD(ALTERNATIVE_DATE_OF_DELINQUENCY,'-','/'));
/*	SSN*/
	SSN_SIN = COMPRESS(SSN_SIN,"1234567890","kis");
	S_SSN_SIN = COMPRESS(S_SSN_SIN,"1234567890","kis");
/*PHONENBRS*/
	MAIN_PHONE_NUMBER = COMPRESS(COMPRESS(MAIN_PHONE_NUMBER,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	PHONE2 = COMPRESS(COMPRESS(PHONE2,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	PHONE3 = COMPRESS(COMPRESS(PHONE3,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	PHONE4 = COMPRESS(COMPRESS(PHONE4,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	PHONE5 = COMPRESS(COMPRESS(PHONE5,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	PHONE6 = COMPRESS(COMPRESS(PHONE6,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	PHONE7 = COMPRESS(COMPRESS(PHONE7,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	PHONE8 = COMPRESS(COMPRESS(PHONE8,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	PHONE9 = COMPRESS(COMPRESS(PHONE9,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	PHONE10 = COMPRESS(COMPRESS(PHONE10,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	S_MAIN_PHONE_NUMBER = COMPRESS(COMPRESS(S_MAIN_PHONE_NUMBER,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	S_PHONE2 = COMPRESS(COMPRESS(S_PHONE2,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	S_PHONE3 = COMPRESS(COMPRESS(S_PHONE3,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	S_PHONE4 = COMPRESS(COMPRESS(S_PHONE4,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	S_PHONE5 = COMPRESS(COMPRESS(S_PHONE5,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	S_PHONE6 = COMPRESS(COMPRESS(S_PHONE6,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	S_PHONE7 = COMPRESS(COMPRESS(S_PHONE7,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	S_PHONE8 = COMPRESS(COMPRESS(S_PHONE8,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	S_PHONE9 = COMPRESS(COMPRESS(S_PHONE9,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));
	S_PHONE10 = COMPRESS(COMPRESS(S_PHONE10,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890","kis"));

/*MIGHT NEED TO ADD MORE TO THIS*/
RUN;


%MACRO ADD_OTHERDATA();
		
	%IF %EVAL(&COUNT_OTHER_IN. >= 1) %THEN 
		%DO;
			PROC SQL;
				CREATE TABLE FORMAT_ACOUNT_EXTRACT_3 AS
				SELECT A.*
					  ,B.*
				FROM FORMAT_ACOUNT_EXTRACT_2 A
				LEFT JOIN OTHER_DATA_IMPORT_REAL B
					ON (COMPRESS(A.ISSUER_ACCOUNT_NUMBER) = COMPRESS(B.ISSUER_ACCOUNT_NUMBER))
			;
			QUIT;

			%LET EXPORT_TO_BEAM = EXPORT_TO_BEAM;

			/*GET FULLPATH MACROS*/
			%LET FULLPATH_EXPORT_TO_BEAM = &BEAM_EXPORT_PATH.&EXPORT_TO_BEAM._&DATE..CSV;


			/*MAKE DATASET AVAILABLE FOR BEAM*/
			PROC EXPORT
				DATA=FORMAT_ACOUNT_EXTRACT_3
				FILE="&FULLPATH_EXPORT_TO_BEAM"
				DBMS=XLSX
				REPLACE;
			RUN;
		%END;
	%ELSE %IF %EVAL(&COUNT_OTHER_IN. < 1) %THEN
		%DO;
			%LET EXPORT_TO_BEAM = EXPORT_TO_BEAM;

			/*GET FULLPATH MACROS*/
			%LET FULLPATH_EXPORT_TO_BEAM = &BEAM_EXPORT_PATH.&EXPORT_TO_BEAM._&DATE..CSV;

			/*MAKE DATASET AVAILABLE FOR BEAM*/
			PROC EXPORT
				DATA=FORMAT_ACOUNT_EXTRACT_2
				FILE="&FULLPATH_EXPORT_TO_BEAM"
				DBMS=XLSX
				REPLACE;
			RUN;
		%END;
%MEND;

%ADD_OTHERDATA

/*EMAIL WHEN FINISHED*/
OPTIONS EMAILSYS=SMTP EMAILHOST=MAIL.EBG.NET EMAILPORT=25;
FILENAME MYMAIL EMAIL; 
DATA _NULL_;
   FILE MYMAIL
		TO=('JLODMELL@EBG.NET')
	    FROM='PORTFOLIO_DATA@COMPLETE.COM'
        SUBJECT="PORTFOLIO DATA IS READY FOR BEAM - &DATE";
RUN;


