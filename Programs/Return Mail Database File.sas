/*CREATE RETURN MAIL DATABASE FILE*/

/*GET TLO COLUMNS*/

PROC SQL;
   CREATE TABLE TLO_WATERFALL_RETURN_MAIL_PRE AS 
   SELECT T1.CUSTOMER_ACCOUNT, 
          T1.FIRST_NAME, 
          T1.MIDDLE_NAME, 
          T1.LAST_NAME, 
          T1.SSN, 
		  'TLO ADDRESS 1'					AS TLO_LABEL_1,
          T1.TLOADDRESS1LINE1, 
          T1.TLOADDRESS1LINE2, 
          T1.TLOADDRESS1LINE3, 
          T1.TLOADDRESS1CITY, 
          T1.TLOADDRESS1STATE, 
          T1.TLOADDRESS1ZIP, 
          T1.TLOADDRESS1DATEFIRSTSEEN, 
          T1.TLOADDRESS1DATELASTSEEN,
		  'TLO ADDRESS 2'					AS TLO_LABEL_2, 
          T1.TLOADDRESS2LINE1, 
          T1.TLOADDRESS2LINE2, 
          T1.TLOADDRESS2LINE3, 
          T1.TLOADDRESS2CITY, 
          T1.TLOADDRESS2STATE, 
          T1.TLOADDRESS2ZIP, 
          T1.TLOADDRESS2DATEFIRSTSEEN, 
          T1.TLOADDRESS2DATELASTSEEN
      FROM TLO_WATERFALL_INPUT_EBG T1;
QUIT;

/*GET LN COLUMNS NOW*/

PROC SQL;
   CREATE TABLE LNWATERFALL_RETURN_MAIL_PRE AS 
   SELECT 'LN BEST ADDRESS'				AS LN_LABEL,		
		  T1.ACCOUNT_NUMBER, 
          T1.NAME_FIRST_1, 
          T1.NAME_LAST_1, 
          T1.ADDRESS_1, 
          T1.P_CITY_NAME_1, 
          T1.ST_1, 
          T1.ZIP_1, 
          T1.ADDR_DT_FIRST_SEEN_1, 
          T1.ADDR_DT_LAST_SEEN_1
      FROM LN_OUTPUT_LNWATERFALL_INPUT_EBG T1;
QUIT;


/*COMBINE WITH BEAM*/

PROC SQL;
	CREATE TABLE RETURN_MAIL_FILE AS
	SELECT A.ACCOUNTID
		  ,A.ISSUERACCOUNTNUMBER
		  ,A.SELLERACCOUNTNUMBER
		  ,A.CLIENTACCOUNTID
		  ,A.ISSUERNAME
		  ,A.INBEAMNAME
		  ,A.ORIG_ORIGINALCREDITORADDRESS 	AS CLIENT_ADDRESS_LABEL
		  ,A.PFNAME
		  ,A.PLNAME
		  ,A._1STADDRESS1
		  ,A._1STADDRESS2
		  ,A._1STCITY
		  ,A._1STSTATE
		  ,A._1STZIPPOSTAL
		  ,T1.LN_LABEL
          ,T1.NAME_FIRST_1
          ,T1.NAME_LAST_1 
          ,T1.ADDRESS_1
          ,T1.P_CITY_NAME_1 
          ,T1.ST_1 
          ,T1.ZIP_1 
          ,T1.ADDR_DT_FIRST_SEEN_1 
          ,T1.ADDR_DT_LAST_SEEN_1
		  ,T2.TLO_LABEL_1
          ,T2.TLOADDRESS1LINE1 
          ,T2.TLOADDRESS1LINE2 
          ,T2.TLOADDRESS1LINE3 
          ,T2.TLOADDRESS1CITY 
          ,T2.TLOADDRESS1STATE 
          ,T2.TLOADDRESS1ZIP
          ,T2.TLOADDRESS1DATEFIRSTSEEN 
          ,T2.TLOADDRESS1DATELASTSEEN
		  ,T2.TLO_LABEL_2 
          ,T2.TLOADDRESS2LINE1
          ,T2.TLOADDRESS2LINE2
          ,T2.TLOADDRESS2LINE3 
          ,T2.TLOADDRESS2CITY 
          ,T2.TLOADDRESS2STATE 
          ,T2.TLOADDRESS2ZIP 
          ,T2.TLOADDRESS2DATEFIRSTSEEN 
          ,T2.TLOADDRESS2DATELASTSEEN
	FROM BEAM_ACCT_EXTRACT_FORMAT A
	LEFT JOIN LNWATERFALL_RETURN_MAIL_PRE T1
		ON (COMPRESS(A.ISSUERACCOUNTNUMBER) = COMPRESS(T1.ACCOUNT_NUMBER))
	LEFT JOIN TLO_WATERFALL_RETURN_MAIL_PRE T2
		ON (COMPRESS(A.ISSUERACCOUNTNUMBER) = COMPRESS(T2.CUSTOMER_ACCOUNT))
	WHERE ISSUERACCOUNTNUMBER IS NOT NULL
;
QUIT;

/*%LET RETURN_MAIL_PATH = &MASTER_DIR.\RETURN MAIL\&DATE.;*/

PROC EXPORT DATA=RETURN_MAIL_FILE
	OUTFILE="&RETURN_MAIL_PATH.\RETURN_MAIL.XLSX"
	REPLACE
	DBMS=XLSX;
RUN;
