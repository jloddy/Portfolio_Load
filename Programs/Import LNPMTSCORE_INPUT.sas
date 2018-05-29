%MACRO IMPORT_LNPMTSCORE();

		DATA LNPMTSCORE_INPUT_EBG;
		    LENGTH
		        CUSTOMER_ACCOUNT $ 50
		        FIRST_NAME       $ 50
		        MIDDLE_NAME      $ 50
		        LAST_NAME        $ 50
		        SUFFIX           $ 50
		        SSN              $ 50
		        ADDRESS_1        $ 50
		        ADDRESS_2        $ 50
		        CITY             $ 50
		        STATE            $ 50
		        ZIP              $ 50
		        PAYMENTSCORE     $ 50
		        REASONCODE1      $ 50
		        REASONCODE2      $ 50
		        REASONCODE3      $ 50
		        REASONCODE4      $ 50
		        REASONCODE5      $ 50 ;
		    LABEL
		        CUSTOMER_ACCOUNT = "CUSTOMER ACCOUNT"
		        FIRST_NAME       = "FIRST NAME"
		        MIDDLE_NAME      = "MIDDLE NAME"
		        LAST_NAME        = "LAST NAME" ;
		    FORMAT
		        CUSTOMER_ACCOUNT $CHAR50.
		        FIRST_NAME       $CHAR50.
		        MIDDLE_NAME      $CHAR50.
		        LAST_NAME        $CHAR50.
		        SUFFIX           $CHAR50.
		        SSN              $CHAR50.
		        ADDRESS_1        $CHAR50.
		        ADDRESS_2        $CHAR50.
		        CITY             $CHAR50.
		        STATE            $CHAR50.
		        ZIP              $CHAR50.
		        PAYMENTSCORE     $CHAR50.
		        REASONCODE1      $CHAR50.
		        REASONCODE2      $CHAR50.
		        REASONCODE3      $CHAR50.
		        REASONCODE4      $CHAR50.
		        REASONCODE5      $CHAR50. ;
		    INFORMAT
		        CUSTOMER_ACCOUNT $CHAR50.
		        FIRST_NAME       $CHAR50.
		        MIDDLE_NAME      $CHAR50.
		        LAST_NAME        $CHAR50.
		        SUFFIX           $CHAR50.
		        SSN              $CHAR50.
		        ADDRESS_1        $CHAR50.
		        ADDRESS_2        $CHAR50.
		        CITY             $CHAR50.
		        STATE            $CHAR50.
		        ZIP              $CHAR50.
		        PAYMENTSCORE     $CHAR50.
		        REASONCODE1      $CHAR50.
		        REASONCODE2      $CHAR50.
		        REASONCODE3      $CHAR50.
		        REASONCODE4      $CHAR50.
		        REASONCODE5      $CHAR50. ;
/*		INFILE "E:\SHARED\CADA\SAS SOURCE CODE\DEVELOPMENT\JHUBBARD\EBG\1_PORTFOLIO_FILE_STANDARDIZATION\PRODUCTION ENVIRONMENT TEST\DATA SERVICES OUTPUTS\LNPMTSCORE_INPUT_EBG_20180404_1_APPEND.CSV"*/
		  INFILE "&FILE_USE"
			DLM=','
		    MISSOVER
		    DSD
			FIRSTOBS=2;
		    INPUT
		        CUSTOMER_ACCOUNT : $CHAR50.
		        FIRST_NAME       : $CHAR50.
		        MIDDLE_NAME      : $CHAR50.
		        LAST_NAME        : $CHAR50.
		        SUFFIX           : $CHAR50.
		        SSN              : $CHAR50.
		        ADDRESS_1        : $CHAR50.
		        ADDRESS_2        : $CHAR50.
		        CITY             : $CHAR50.
		        STATE            : $CHAR50.
		        ZIP              : $CHAR50.
		        PAYMENTSCORE     : $CHAR50.
		        REASONCODE1      : $CHAR50.
		        REASONCODE2      : $CHAR50.
		        REASONCODE3      : $CHAR50.
		        REASONCODE4      : $CHAR50.
		        REASONCODE5      : $CHAR50. ;
		RUN;

%MEND;