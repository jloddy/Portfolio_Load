/*UPLOAD DATA SERVICE INPUTS*/

/*MASTER PATH*/
%LET PATH = E:\SHARED\CADA\SAS SOURCE CODE\DEVELOPMENT\JHUBBARD\EBG\1_PORTFOLIO_FILE_STANDARDIZATION\PRODUCTION ENVIRONMENT TEST\DATA SERVICES INPUTS\&DATE.\;


/*MACROS FOR PATHS*/
%LET LN_SCRA_INPUT = LN_SCRA_INPUT;
%LET LNPER_INPUT = LNPER_INPUT;
%LET LNPMTSCORE_INPUT = LNPMTSCORE_INPUT;
%LET LN_WATERFALL_INPUT = LN_WATERFALL_INPUT;
%LET TLO_WATERFALL_INPUT = TLO_WATERFALL_INPUT;


/*GET FULLPATH MACROS*/
%LET FULLPATH_LN_SCRA_INPUT = &PATH.&LN_SCRA_INPUT._&DATE..CSV;
%LET FULLPATH_LNPER_INPUT = &PATH.&LNPER_INPUT._&DATE..CSV;
%LET FULLPATH_LNPMTSCORE_INPUT = &PATH.&LNPMTSCORE_INPUT._&DATE..CSV;
%LET FULLPATH_LN_WATERFALL_INPUT = &PATH.&LN_WATERFALL_INPUT._&DATE..CSV;
%LET FULLPATH_TLO_WATERFALL_INPUT = &PATH.&TLO_WATERFALL_INPUT._&DATE..CSV;


/*EXPORT DATA DATASETS INTO CSV USING FULL PATH MACROS*/

/*LN_SCRA_INPUT*/
PROC EXPORT
	DATA=LN_SCRA_INPUT
	FILE="&FULLPATH_LN_SCRA_INPUT"
	DBMS=CSV
	REPLACE;
RUN;
/*LNPER_INPUT*/
PROC EXPORT
	DATA=LNPER_INPUT
	FILE="&FULLPATH_LNPER_INPUT"
	DBMS=CSV
	REPLACE;
RUN;
/*LNPMTSCORE_INPUT*/
PROC EXPORT
	DATA=LNPMTSCORE_INPUT
	FILE="&FULLPATH_LNPMTSCORE_INPUT"
	DBMS=CSV
	REPLACE;
RUN;
/*LN_WATERFALL_INPUT*/
PROC EXPORT
	DATA=LN_WATERFALL_INPUT
	FILE="&FULLPATH_LN_WATERFALL_INPUT"
	DBMS=CSV
	REPLACE;
RUN;
/*TLO_WATERFALL_INPUT*/
PROC EXPORT
	DATA=TLO_WATERFALL_INPUT
	FILE="&FULLPATH_TLO_WATERFALL_INPUT"
	DBMS=CSV
	REPLACE;
RUN;


/*UPLOAD FILES TO SFTP SITE (WILL NEED EBG CREDENTIALS AND SFTP INFORMATION TO REPLACE SILVERPOP'S FORMAT)*/


/*LN_SCRA_INPUT*/
options noxwait xsync;
data _null_;
	uploadfile = '"c:\program files (x86)\winscp\winscp.exe" /console /command' ||
					' "option batch abort" ' || ' "open sftptransfer@advanceamerica.net:M@rket1ng123!@transfer3.silverpop.com" ' ||
					' "cd upload" ' || """put """"&FULLPATH_LN_SCRA_INPUT""""""" || ' "exit"';
call system(uploadfile);
run;

/*LNPER_INPUT*/
options noxwait xsync;
data _null_;
	uploadfile = '"c:\program files (x86)\winscp\winscp.exe" /console /command' ||
					' "option batch abort" ' || ' "open HOST@advanceamerica.net:PASSWORDHERE@transfer3.silverpop.com" ' ||
					' "cd upload" ' || """put """"&FULLPATH_LNPER_INPUT""""""" || ' "exit"';
call system(uploadfile);
run;

/*LNPMTSCORE_INPUT*/
options noxwait xsync;
data _null_;
	uploadfile = '"c:\program files (x86)\winscp\winscp.exe" /console /command' ||
					' "option batch abort" ' || ' "open HOST@advanceamerica.net:PASSWORDHERE@transfer3.silverpop.com" ' ||
					' "cd upload" ' || """put """"&FULLPATH_LNPMTSCORE_INPUT""""""" || ' "exit"';
call system(uploadfile);
run;

/*LN_WATERFALL_INPUT*/
options noxwait xsync;
data _null_;
	uploadfile = '"c:\program files (x86)\winscp\winscp.exe" /console /command' ||
					' "option batch abort" ' || ' "open HOST@advanceamerica.net:PASSWORDHERE@transfer3.silverpop.com" ' ||
					' "cd upload" ' || """put """"&FULLPATH_LN_WATERFALL_INPUT""""""" || ' "exit"';
call system(uploadfile);
run;

/*TLO_WATERFALL_INPUT*/
options noxwait xsync;
data _null_;
	uploadfile = '"c:\program files (x86)\winscp\winscp.exe" /console /command' ||
					' "option batch abort" ' || ' "open HOST@advanceamerica.net:PASSWORDHERE@transfer3.silverpop.com" ' ||
					' "cd upload" ' || """put """"&FULLPATH_TLO_WATERFALL_INPUT""""""" || ' "exit"';
call system(uploadfile);
run;

/*END OF SUBMISSIONS - SEND EMAIL TO JOHN*/


/*EMAIL WHEN FINISHED*/
OPTIONS EMAILSYS=SMTP EMAILHOST=MAIL.EBG.NET EMAILPORT=25;
FILENAME MYMAIL EMAIL; 
DATA _NULL_;
   FILE MYMAIL
		TO=('JLODMELL@EBG.NET')
	    FROM='PORTFOLIO_UPLOAD@COMPLETE.COM'
        SUBJECT="PORTFOLIO DATA SERVICES UPLOAD IS COMPLETE - &DATE";
RUN;
