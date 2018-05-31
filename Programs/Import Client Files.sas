%MACRO CLIENT_IMPORT();

		%IF &TOTAL_COUNTER_USE.= 1   %THEN 
			%DO;

				DATA ACOUNT_EXTRACT;
			    LENGTH
			        ISSUER_ACCOUNT_NUMBER $ 80
			        FLEX_TAG         $ 80
			        ISSUER_NAME      $ 80
			        OPEN_AMOUNT      $ 80
			        CLIENT_ACCOUNT_ID $ 80
			        ACQUISITION_BALANCE $ 80
			        PRINCIPAL        $ 80
			        INTEREST         $ 80
			        MISC_FEES        $ 80
			        OTHER_CHARGES    $ 80
			        TOTAL_DUE        $ 80
			        CHARGE_OFF_DATE  $ 80
			        CHARGE_OFF_AMOUNT $ 80
			        LAST_PAY_DATE    $ 80
			        LAST_PAY_AMOUNT  $ 80
			        ACCOUNT_OPEN_DATE $ 80
			        OCCURRENCE_DATE  $ 80
			        CONTRACT_INTEREST_RATE $ 80
			        INTEREST_FROM_C_O $ 80
			        ORIGINAL_PHONE   $ 80
			        ORIGINAL_ADDRESSL $ 80
			        ORIGINAL_ADDRESS2 $ 80
			        ORIGINAL_CITY    $ 80
			        ORIGINAL_STATE   $ 80
			        ORIGINAL_ZIP_POSTAL_CODE $ 80
			        ORIGINAL_PRODUCT $ 80
			        SSN_SIN          $ 80
			        BIRTHDATE        $ 80
			        FIRST_NAME       $ 80
			        MIDDLE_NAME      $ 80
			        LAST_NAME        $ 80
			        ALIAS            $ 80
			        SUFFIX           $ 80
			        GENDER           $ 80
			        ADDRESS_1        $ 80
			        ADDRESS_2        $ 80
			        CITY             $ 80
			        STATE_PROVINCE   $ 80
			        ZIP_POSTAL_CODE  $ 80
			        MAIN_PHONE_NUMBER $ 80
			        LINETYPE         $ 80
			        PHONE2           $ 80
			        PHONE2_LINETYPE  $ 80
			        PHONE2_NOTES     $ 80
			        PHONE2_SOURCE    $ 80
			        PHONE3           $ 80
			        PHONE3_LINETYPE  $ 80
			        PHONE3_NOTES     $ 80
			        PHONE3_SOURCE    $ 80
			        PHONE4           $ 80
			        PHONE4_LINETYPE  $ 80
			        PHONE4_NOTES     $ 80
			        PHONE4_SOURCE    $ 80
			        PHONE5           $ 80
			        PHONE5_LINETYPE  $ 80
			        PHONE5_NOTES     $ 80
			        PHONE5_SOURCE    $ 80
			        PHONE6           $ 80
			        PHONE6_LINETYPE  $ 80
			        PHONE6_NOTES     $ 80
			        PHONE6_SOURCE    $ 80
			        PHONE7           $ 80
			        PHONE7_LINETYPE  $ 80
			        PHONE7_NOTES     $ 80
			        PHONE7_SOURCE    $ 80
			        PHONE8           $ 80
			        PHONE8_LINETYPE  $ 80
			        PHONE8_NOTES     $ 80
			        PHONE8_SOURCE    $ 80
			        PHONE9           $ 80
			        PHONE9_LINETYPE  $ 80
			        PHONE9_NOTES     $ 80
			        PHONE9_SOURCE    $ 80
			        PHONE10          $ 80
			        PHONE10_LINETYPE $ 80
			        PHONE10_NOTES    $ 80
			        PHONE10_SOURCE   $ 80
			        EMAIL            $ 80
			        IS_HOMEOWNER     $ 80
			        CLIENT_DEBTOR_ID $ 80
			        S_SSN_SIN        $ 80
			        S_BIRTHDATE      $ 80
			        S_FIRST_NAME     $ 80
			        S_MIDDLE_NAME    $ 80
			        S_LAST_NAME      $ 80
			        S_ALIAS          $ 80
			        S_SUFFIX         $ 80
			        S_GENDER         $ 80
			        S_ADDRESS_1      $ 80
			        S_ADDRESS_2      $ 80
			        S_CITY           $ 80
			        S_STATE_PROVINCE $ 80
			        S_ZIP_POSTAL_CODE $ 80
			        S_MAIN_PHONE_NUMBER $ 80
			        S_LINETYPE       $ 80
			        S_PHONE2         $ 80
			        S_PHONE2_LINETYPE $ 80
			        S_PHONE2_NOTES   $ 80
			        S_PHONE2_SOURCE  $ 80
			        S_PHONE3         $ 80
			        S_PHONE3_LINETYPE $ 80
			        S_PHONE3_NOTES   $ 80
			        S_PHONE3_SOURCE  $ 80
			        S_PHONE4         $ 80
			        S_PHONE4_LINETYPE $ 80
			        S_PHONE4_NOTES   $ 80
			        S_PHONE4_SOURCE  $ 80
			        S_PHONE5         $ 80
			        S_PHONE5_LINETYPE $ 80
			        S_PHONE5_NOTES   $ 80
			        S_PHONE5_SOURCE  $ 80
			        S_PHONE6         $ 80
			        S_PHONE6_LINETYPE $ 80
			        S_PHONE6_NOTES   $ 80
			        S_PHONE6_SOURCE  $ 80
			        S_PHONE7         $ 80
			        S_PHONE7_LINETYPE $ 80
			        S_PHONE7_NOTES   $ 80
			        S_PHONE7_SOURCE  $ 80
			        S_PHONE8         $ 80
			        S_PHONE8_LINETYPE $ 80
			        S_PHONE8_NOTES   $ 80
			        S_PHONE8_SOURCE  $ 80
			        S_PHONE9         $ 80
			        S_PHONE9_LINETYPE $ 80
			        S_PHONE9_NOTES   $ 80
			        S_PHONE9_SOURCE  $ 80
			        S_PHONE10        $ 80
			        S_PHONE10_LINETYPE $ 80
			        S_PHONE10_NOTES  $ 80
			        S_PHONE10_SOURCE $ 80
			        S_EMAIL          $ 80
			        S_CLIENT_DEBTOR_ID $ 80
			        SELLER_S_ACCOUNT_NUMBER $ 80
			        LOT              $ 80
			        ALTERNATIVE_DATE_OF_DELINQUENCY $ 80
			        PORTFOLIO_OWNER  $ 80
			        PORTFOLIO_OWNER_ADDRESS $ 80
			        OTHER_DATA       $ 80
			        LAST_PAID_DATE   $ 80
			        LAST_PAID_AMT    $ 80
			        TOTAL_AMOUNT_OF_DEBT_DUE_AS_OF_C $ 80
			        TOTAL_AMOUNT_OF_INTEREST_ACCRUED $ 80
			        TOTAL_AMOUNT_OF_NON_INTEREST_CHA $ 80
			        TOTAL_AMOUNT_OF_PAYMENTS_MADE_ON $ 80
			        CURRENT_BALANCE  $ 80;
/*			        EMPLOYER         $ 80*/
/*			        OCCUPATION       $ 80*/
/*			        EMPLOYER_ADDRESS_1 $ 80*/
/*			        EMPLOYER_ADDRESS_2 $ 80*/
/*			        EMPLOYER_CITY    $ 80*/
/*			        EMPLOYER_STATE   $ 80*/
/*			        EMPLOYER_ZIP     $ 80*/
/*			        EMPLOYER_PHONE   $ 80*/
/*			        SALARY           $ 80*/
/*			        PAY_BASIS        $ 80*/
/*			        EMPLOYMENT_START_DATE $ 80*/
/*			        EMPLOYMENT_END_DATE $ 80 ;*/
			    LABEL
			        ISSUER_ACCOUNT_NUMBER = "ISSUER ACCOUNT NUMBER"
			        FLEX_TAG         = "FLEX TAG"
			        ISSUER_NAME      = "ISSUER NAME"
			        OPEN_AMOUNT      = "OPEN AMOUNT"
			        CLIENT_ACCOUNT_ID = "CLIENT ACCOUNT ID"
			        ACQUISITION_BALANCE = "ACQUISITION BALANCE"
			        CHARGE_OFF_DATE  = "CHARGE-OFF DATE"
			        CHARGE_OFF_AMOUNT = "CHARGE-OFF AMOUNT"
			        LAST_PAY_DATE    = "LAST PAY DATE"
			        LAST_PAY_AMOUNT  = "LAST PAY AMOUNT"
			        ACCOUNT_OPEN_DATE = "ACCOUNT OPEN DATE"
			        OCCURRENCE_DATE  = "OCCURRENCE DATE"
			        CONTRACT_INTEREST_RATE = "CONTRACT INTEREST RATE"
			        INTEREST_FROM_C_O = "INTEREST FROM C/O"
			        ORIGINAL_PHONE   = "ORIGINAL PHONE"
			        ORIGINAL_ADDRESSL = "ORIGINAL ADDRESSL"
			        ORIGINAL_ADDRESS2 = "ORIGINAL ADDRESS2"
			        ORIGINAL_CITY    = "ORIGINAL CITY"
			        ORIGINAL_STATE   = "ORIGINAL STATE"
			        ORIGINAL_ZIP_POSTAL_CODE = "ORIGINAL ZIP/POSTAL CODE"
			        ORIGINAL_PRODUCT = "ORIGINAL PRODUCT"
			        SSN_SIN          = "SSN/SIN"
			        FIRST_NAME       = "FIRST NAME"
			        MIDDLE_NAME      = "MIDDLE NAME"
			        LAST_NAME        = "LAST NAME"
			        ADDRESS_1        = "ADDRESS 1"
			        ADDRESS_2        = "ADDRESS 2"
			        STATE_PROVINCE   = "STATE/PROVINCE"
			        ZIP_POSTAL_CODE  = "ZIP/POSTAL CODE"
			        MAIN_PHONE_NUMBER = "MAIN PHONE NUMBER"
			        IS_HOMEOWNER     = "IS HOMEOWNER"
			        CLIENT_DEBTOR_ID = "CLIENT DEBTOR ID"
			        S_SSN_SIN        = "S_SSN/SIN"
			        S_FIRST_NAME     = "S_FIRST NAME"
			        S_MIDDLE_NAME    = "S_MIDDLE NAME"
			        S_LAST_NAME      = "S_LAST NAME"
			        S_ADDRESS_1      = "S_ADDRESS 1"
			        S_ADDRESS_2      = "S_ADDRESS 2"
			        S_STATE_PROVINCE = "S_STATE/PROVINCE"
			        S_ZIP_POSTAL_CODE = "S_ZIP/POSTAL CODE"
			        S_MAIN_PHONE_NUMBER = "S_MAIN PHONE NUMBER"
			        S_CLIENT_DEBTOR_ID = "S_CLIENT DEBTOR ID"
			        SELLER_S_ACCOUNT_NUMBER = "SELLER'S ACCOUNT NUMBER"
			        ALTERNATIVE_DATE_OF_DELINQUENCY = "ALTERNATIVE DATE OF DELINQUENCY"
			        PORTFOLIO_OWNER  = "PORTFOLIO OWNER"
			        PORTFOLIO_OWNER_ADDRESS = "PORTFOLIO OWNER ADDRESS"
			        OTHER_DATA       = "OTHER DATA"
			        LAST_PAID_DATE   = "LAST PAID DATE"
			        LAST_PAID_AMT    = "LAST PAID AMT"
			        TOTAL_AMOUNT_OF_DEBT_DUE_AS_OF_C = "TOTAL AMOUNT OF DEBT DUE AS OF CHARGE-OFF"
			        TOTAL_AMOUNT_OF_INTEREST_ACCRUED = "TOTAL AMOUNT OF INTEREST ACCRUED SINCE CHARGE-OFF"
			        TOTAL_AMOUNT_OF_NON_INTEREST_CHA = "TOTAL AMOUNT OF NON-INTEREST CHARGES OR FEES ACCRUED SINCE CHARGE-OFF"
			        TOTAL_AMOUNT_OF_PAYMENTS_MADE_ON = "TOTAL AMOUNT OF PAYMENTS MADE ON THE DEBT SINCE THE CHARGE-OFF"
			        CURRENT_BALANCE  = "CURRENT BALANCE" ;
			    FORMAT
			        ISSUER_ACCOUNT_NUMBER $CHAR80.
			        FLEX_TAG         $CHAR80.
			        ISSUER_NAME      $CHAR80.
			        OPEN_AMOUNT      $CHAR80.
			        CLIENT_ACCOUNT_ID $CHAR80.
			        ACQUISITION_BALANCE $CHAR80.
			        PRINCIPAL        $CHAR80.
			        INTEREST         $CHAR80.
			        MISC_FEES        $CHAR80.
			        OTHER_CHARGES    $CHAR80.
			        TOTAL_DUE        $CHAR80.
			        CHARGE_OFF_DATE  $CHAR80.
			        CHARGE_OFF_AMOUNT $CHAR80.
			        LAST_PAY_DATE    $CHAR80.
			        LAST_PAY_AMOUNT  $CHAR80.
			        ACCOUNT_OPEN_DATE $CHAR80.
			        OCCURRENCE_DATE  $CHAR80.
			        CONTRACT_INTEREST_RATE $CHAR80.
			        INTEREST_FROM_C_O $CHAR80.
			        ORIGINAL_PHONE   $CHAR80.
			        ORIGINAL_ADDRESSL $CHAR80.
			        ORIGINAL_ADDRESS2 $CHAR80.
			        ORIGINAL_CITY    $CHAR80.
			        ORIGINAL_STATE   $CHAR80.
			        ORIGINAL_ZIP_POSTAL_CODE $CHAR80.
			        ORIGINAL_PRODUCT $CHAR80.
			        SSN_SIN          $CHAR80.
			        BIRTHDATE        $CHAR80.
			        FIRST_NAME       $CHAR80.
			        MIDDLE_NAME      $CHAR80.
			        LAST_NAME        $CHAR80.
			        ALIAS            $CHAR80.
			        SUFFIX           $CHAR80.
			        GENDER           $CHAR80.
			        ADDRESS_1        $CHAR80.
			        ADDRESS_2        $CHAR80.
			        CITY             $CHAR80.
			        STATE_PROVINCE   $CHAR80.
			        ZIP_POSTAL_CODE  $CHAR80.
			        MAIN_PHONE_NUMBER $CHAR80.
			        LINETYPE         $CHAR80.
			        PHONE2           $CHAR80.
			        PHONE2_LINETYPE  $CHAR80.
			        PHONE2_NOTES     $CHAR80.
			        PHONE2_SOURCE    $CHAR80.
			        PHONE3           $CHAR80.
			        PHONE3_LINETYPE  $CHAR80.
			        PHONE3_NOTES     $CHAR80.
			        PHONE3_SOURCE    $CHAR80.
			        PHONE4           $CHAR80.
			        PHONE4_LINETYPE  $CHAR80.
			        PHONE4_NOTES     $CHAR80.
			        PHONE4_SOURCE    $CHAR80.
			        PHONE5           $CHAR80.
			        PHONE5_LINETYPE  $CHAR80.
			        PHONE5_NOTES     $CHAR80.
			        PHONE5_SOURCE    $CHAR80.
			        PHONE6           $CHAR80.
			        PHONE6_LINETYPE  $CHAR80.
			        PHONE6_NOTES     $CHAR80.
			        PHONE6_SOURCE    $CHAR80.
			        PHONE7           $CHAR80.
			        PHONE7_LINETYPE  $CHAR80.
			        PHONE7_NOTES     $CHAR80.
			        PHONE7_SOURCE    $CHAR80.
			        PHONE8           $CHAR80.
			        PHONE8_LINETYPE  $CHAR80.
			        PHONE8_NOTES     $CHAR80.
			        PHONE8_SOURCE    $CHAR80.
			        PHONE9           $CHAR80.
			        PHONE9_LINETYPE  $CHAR80.
			        PHONE9_NOTES     $CHAR80.
			        PHONE9_SOURCE    $CHAR80.
			        PHONE10          $CHAR80.
			        PHONE10_LINETYPE $CHAR80.
			        PHONE10_NOTES    $CHAR80.
			        PHONE10_SOURCE   $CHAR80.
			        EMAIL            $CHAR80.
			        IS_HOMEOWNER     $CHAR80.
			        CLIENT_DEBTOR_ID $CHAR80.
			        S_SSN_SIN        $CHAR80.
			        S_BIRTHDATE      $CHAR80.
			        S_FIRST_NAME     $CHAR80.
			        S_MIDDLE_NAME    $CHAR80.
			        S_LAST_NAME      $CHAR80.
			        S_ALIAS          $CHAR80.
			        S_SUFFIX         $CHAR80.
			        S_GENDER         $CHAR80.
			        S_ADDRESS_1      $CHAR80.
			        S_ADDRESS_2      $CHAR80.
			        S_CITY           $CHAR80.
			        S_STATE_PROVINCE $CHAR80.
			        S_ZIP_POSTAL_CODE $CHAR80.
			        S_MAIN_PHONE_NUMBER $CHAR80.
			        S_LINETYPE       $CHAR80.
			        S_PHONE2         $CHAR80.
			        S_PHONE2_LINETYPE $CHAR80.
			        S_PHONE2_NOTES   $CHAR80.
			        S_PHONE2_SOURCE  $CHAR80.
			        S_PHONE3         $CHAR80.
			        S_PHONE3_LINETYPE $CHAR80.
			        S_PHONE3_NOTES   $CHAR80.
			        S_PHONE3_SOURCE  $CHAR80.
			        S_PHONE4         $CHAR80.
			        S_PHONE4_LINETYPE $CHAR80.
			        S_PHONE4_NOTES   $CHAR80.
			        S_PHONE4_SOURCE  $CHAR80.
			        S_PHONE5         $CHAR80.
			        S_PHONE5_LINETYPE $CHAR80.
			        S_PHONE5_NOTES   $CHAR80.
			        S_PHONE5_SOURCE  $CHAR80.
			        S_PHONE6         $CHAR80.
			        S_PHONE6_LINETYPE $CHAR80.
			        S_PHONE6_NOTES   $CHAR80.
			        S_PHONE6_SOURCE  $CHAR80.
			        S_PHONE7         $CHAR80.
			        S_PHONE7_LINETYPE $CHAR80.
			        S_PHONE7_NOTES   $CHAR80.
			        S_PHONE7_SOURCE  $CHAR80.
			        S_PHONE8         $CHAR80.
			        S_PHONE8_LINETYPE $CHAR80.
			        S_PHONE8_NOTES   $CHAR80.
			        S_PHONE8_SOURCE  $CHAR80.
			        S_PHONE9         $CHAR80.
			        S_PHONE9_LINETYPE $CHAR80.
			        S_PHONE9_NOTES   $CHAR80.
			        S_PHONE9_SOURCE  $CHAR80.
			        S_PHONE10        $CHAR80.
			        S_PHONE10_LINETYPE $CHAR80.
			        S_PHONE10_NOTES  $CHAR80.
			        S_PHONE10_SOURCE $CHAR80.
			        S_EMAIL          $CHAR80.
			        S_CLIENT_DEBTOR_ID $CHAR80.
			        SELLER_S_ACCOUNT_NUMBER $CHAR80.
			        LOT              $CHAR80.
			        ALTERNATIVE_DATE_OF_DELINQUENCY $CHAR80.
			        PORTFOLIO_OWNER  $CHAR80.
			        PORTFOLIO_OWNER_ADDRESS $CHAR80.
			        OTHER_DATA       $CHAR80.
			        LAST_PAID_DATE   $CHAR80.
			        LAST_PAID_AMT    $CHAR80.
			        TOTAL_AMOUNT_OF_DEBT_DUE_AS_OF_C $CHAR80.
			        TOTAL_AMOUNT_OF_INTEREST_ACCRUED $CHAR80.
			        TOTAL_AMOUNT_OF_NON_INTEREST_CHA $CHAR80.
			        TOTAL_AMOUNT_OF_PAYMENTS_MADE_ON $CHAR80.
			        CURRENT_BALANCE  $CHAR80.;
/*			        EMPLOYER         $CHAR80.*/
/*			        OCCUPATION       $CHAR80.*/
/*			        EMPLOYER_ADDRESS_1 $CHAR80.*/
/*			        EMPLOYER_ADDRESS_2 $CHAR80.*/
/*			        EMPLOYER_CITY    $CHAR80.*/
/*			        EMPLOYER_STATE   $CHAR80.*/
/*			        EMPLOYER_ZIP     $CHAR80.*/
/*			        EMPLOYER_PHONE   $CHAR80.*/
/*			        SALARY           $CHAR80.*/
/*			        PAY_BASIS        $CHAR80.*/
/*			        EMPLOYMENT_START_DATE $CHAR80.*/
/*			        EMPLOYMENT_END_DATE $CHAR80. ;*/
			    INFORMAT
			        ISSUER_ACCOUNT_NUMBER $CHAR80.
			        FLEX_TAG         $CHAR80.
			        ISSUER_NAME      $CHAR80.
			        OPEN_AMOUNT      $CHAR80.
			        CLIENT_ACCOUNT_ID $CHAR80.
			        ACQUISITION_BALANCE $CHAR80.
			        PRINCIPAL        $CHAR80.
			        INTEREST         $CHAR80.
			        MISC_FEES        $CHAR80.
			        OTHER_CHARGES    $CHAR80.
			        TOTAL_DUE        $CHAR80.
			        CHARGE_OFF_DATE  $CHAR80.
			        CHARGE_OFF_AMOUNT $CHAR80.
			        LAST_PAY_DATE    $CHAR80.
			        LAST_PAY_AMOUNT  $CHAR80.
			        ACCOUNT_OPEN_DATE $CHAR80.
			        OCCURRENCE_DATE  $CHAR80.
			        CONTRACT_INTEREST_RATE $CHAR80.
			        INTEREST_FROM_C_O $CHAR80.
			        ORIGINAL_PHONE   $CHAR80.
			        ORIGINAL_ADDRESSL $CHAR80.
			        ORIGINAL_ADDRESS2 $CHAR80.
			        ORIGINAL_CITY    $CHAR80.
			        ORIGINAL_STATE   $CHAR80.
			        ORIGINAL_ZIP_POSTAL_CODE $CHAR80.
			        ORIGINAL_PRODUCT $CHAR80.
			        SSN_SIN          $CHAR80.
			        BIRTHDATE        $CHAR80.
			        FIRST_NAME       $CHAR80.
			        MIDDLE_NAME      $CHAR80.
			        LAST_NAME        $CHAR80.
			        ALIAS            $CHAR80.
			        SUFFIX           $CHAR80.
			        GENDER           $CHAR80.
			        ADDRESS_1        $CHAR80.
			        ADDRESS_2        $CHAR80.
			        CITY             $CHAR80.
			        STATE_PROVINCE   $CHAR80.
			        ZIP_POSTAL_CODE  $CHAR80.
			        MAIN_PHONE_NUMBER $CHAR80.
			        LINETYPE         $CHAR80.
			        PHONE2           $CHAR80.
			        PHONE2_LINETYPE  $CHAR80.
			        PHONE2_NOTES     $CHAR80.
			        PHONE2_SOURCE    $CHAR80.
			        PHONE3           $CHAR80.
			        PHONE3_LINETYPE  $CHAR80.
			        PHONE3_NOTES     $CHAR80.
			        PHONE3_SOURCE    $CHAR80.
			        PHONE4           $CHAR80.
			        PHONE4_LINETYPE  $CHAR80.
			        PHONE4_NOTES     $CHAR80.
			        PHONE4_SOURCE    $CHAR80.
			        PHONE5           $CHAR80.
			        PHONE5_LINETYPE  $CHAR80.
			        PHONE5_NOTES     $CHAR80.
			        PHONE5_SOURCE    $CHAR80.
			        PHONE6           $CHAR80.
			        PHONE6_LINETYPE  $CHAR80.
			        PHONE6_NOTES     $CHAR80.
			        PHONE6_SOURCE    $CHAR80.
			        PHONE7           $CHAR80.
			        PHONE7_LINETYPE  $CHAR80.
			        PHONE7_NOTES     $CHAR80.
			        PHONE7_SOURCE    $CHAR80.
			        PHONE8           $CHAR80.
			        PHONE8_LINETYPE  $CHAR80.
			        PHONE8_NOTES     $CHAR80.
			        PHONE8_SOURCE    $CHAR80.
			        PHONE9           $CHAR80.
			        PHONE9_LINETYPE  $CHAR80.
			        PHONE9_NOTES     $CHAR80.
			        PHONE9_SOURCE    $CHAR80.
			        PHONE10          $CHAR80.
			        PHONE10_LINETYPE $CHAR80.
			        PHONE10_NOTES    $CHAR80.
			        PHONE10_SOURCE   $CHAR80.
			        EMAIL            $CHAR80.
			        IS_HOMEOWNER     $CHAR80.
			        CLIENT_DEBTOR_ID $CHAR80.
			        S_SSN_SIN        $CHAR80.
			        S_BIRTHDATE      $CHAR80.
			        S_FIRST_NAME     $CHAR80.
			        S_MIDDLE_NAME    $CHAR80.
			        S_LAST_NAME      $CHAR80.
			        S_ALIAS          $CHAR80.
			        S_SUFFIX         $CHAR80.
			        S_GENDER         $CHAR80.
			        S_ADDRESS_1      $CHAR80.
			        S_ADDRESS_2      $CHAR80.
			        S_CITY           $CHAR80.
			        S_STATE_PROVINCE $CHAR80.
			        S_ZIP_POSTAL_CODE $CHAR80.
			        S_MAIN_PHONE_NUMBER $CHAR80.
			        S_LINETYPE       $CHAR80.
			        S_PHONE2         $CHAR80.
			        S_PHONE2_LINETYPE $CHAR80.
			        S_PHONE2_NOTES   $CHAR80.
			        S_PHONE2_SOURCE  $CHAR80.
			        S_PHONE3         $CHAR80.
			        S_PHONE3_LINETYPE $CHAR80.
			        S_PHONE3_NOTES   $CHAR80.
			        S_PHONE3_SOURCE  $CHAR80.
			        S_PHONE4         $CHAR80.
			        S_PHONE4_LINETYPE $CHAR80.
			        S_PHONE4_NOTES   $CHAR80.
			        S_PHONE4_SOURCE  $CHAR80.
			        S_PHONE5         $CHAR80.
			        S_PHONE5_LINETYPE $CHAR80.
			        S_PHONE5_NOTES   $CHAR80.
			        S_PHONE5_SOURCE  $CHAR80.
			        S_PHONE6         $CHAR80.
			        S_PHONE6_LINETYPE $CHAR80.
			        S_PHONE6_NOTES   $CHAR80.
			        S_PHONE6_SOURCE  $CHAR80.
			        S_PHONE7         $CHAR80.
			        S_PHONE7_LINETYPE $CHAR80.
			        S_PHONE7_NOTES   $CHAR80.
			        S_PHONE7_SOURCE  $CHAR80.
			        S_PHONE8         $CHAR80.
			        S_PHONE8_LINETYPE $CHAR80.
			        S_PHONE8_NOTES   $CHAR80.
			        S_PHONE8_SOURCE  $CHAR80.
			        S_PHONE9         $CHAR80.
			        S_PHONE9_LINETYPE $CHAR80.
			        S_PHONE9_NOTES   $CHAR80.
			        S_PHONE9_SOURCE  $CHAR80.
			        S_PHONE10        $CHAR80.
			        S_PHONE10_LINETYPE $CHAR80.
			        S_PHONE10_NOTES  $CHAR80.
			        S_PHONE10_SOURCE $CHAR80.
			        S_EMAIL          $CHAR80.
			        S_CLIENT_DEBTOR_ID $CHAR80.
			        SELLER_S_ACCOUNT_NUMBER $CHAR80.
			        LOT              $CHAR80.
			        ALTERNATIVE_DATE_OF_DELINQUENCY $CHAR80.
			        PORTFOLIO_OWNER  $CHAR80.
			        PORTFOLIO_OWNER_ADDRESS $CHAR80.
			        OTHER_DATA       $CHAR80.
			        LAST_PAID_DATE   $CHAR80.
			        LAST_PAID_AMT    $CHAR80.
			        TOTAL_AMOUNT_OF_DEBT_DUE_AS_OF_C $CHAR80.
			        TOTAL_AMOUNT_OF_INTEREST_ACCRUED $CHAR80.
			        TOTAL_AMOUNT_OF_NON_INTEREST_CHA $CHAR80.
			        TOTAL_AMOUNT_OF_PAYMENTS_MADE_ON $CHAR80.
			        CURRENT_BALANCE  $CHAR80.;
/*			        EMPLOYER         $CHAR80.*/
/*			        OCCUPATION       $CHAR80.*/
/*			        EMPLOYER_ADDRESS_1 $CHAR80.*/
/*			        EMPLOYER_ADDRESS_2 $CHAR80.*/
/*			        EMPLOYER_CITY    $CHAR80.*/
/*			        EMPLOYER_STATE   $CHAR80.*/
/*			        EMPLOYER_ZIP     $CHAR80.*/
/*			        EMPLOYER_PHONE   $CHAR80.*/
/*			        SALARY           $CHAR80.*/
/*			        PAY_BASIS        $CHAR80.*/
/*			        EMPLOYMENT_START_DATE $CHAR80.*/
/*			        EMPLOYMENT_END_DATE $CHAR80. ;*/
/*			    INFILE "E:\SHARED\CADA\SAS SOURCE CODE\DEVELOPMENT\JHUBBARD\EBG\1_PORTFOLIO_FILE_STANDARDIZATION\ENVIRONMENT\BEAM\IMPORTS\PIPPED_BEAM.TXT"*/
					  INFILE "&FILE_USE"
						DLM=','
				        MISSOVER
				        DSD
						FIRSTOBS=2;
			    INPUT
			        ISSUER_ACCOUNT_NUMBER : $CHAR80.
			        FLEX_TAG         : $CHAR80.
			        ISSUER_NAME      : $CHAR80.
			        OPEN_AMOUNT      : $CHAR80.
			        CLIENT_ACCOUNT_ID : $CHAR80.
			        ACQUISITION_BALANCE : $CHAR80.
			        PRINCIPAL        : $CHAR80.
			        INTEREST         : $CHAR80.
			        MISC_FEES        : $CHAR80.
			        OTHER_CHARGES    : $CHAR80.
			        TOTAL_DUE        : $CHAR80.
			        CHARGE_OFF_DATE  : $CHAR80.
			        CHARGE_OFF_AMOUNT : $CHAR80.
			        LAST_PAY_DATE    : $CHAR80.
			        LAST_PAY_AMOUNT  : $CHAR80.
			        ACCOUNT_OPEN_DATE : $CHAR80.
			        OCCURRENCE_DATE  : $CHAR80.
			        CONTRACT_INTEREST_RATE : $CHAR80.
			        INTEREST_FROM_C_O : $CHAR80.
			        ORIGINAL_PHONE   : $CHAR80.
			        ORIGINAL_ADDRESSL : $CHAR80.
			        ORIGINAL_ADDRESS2 : $CHAR80.
			        ORIGINAL_CITY    : $CHAR80.
			        ORIGINAL_STATE   : $CHAR80.
			        ORIGINAL_ZIP_POSTAL_CODE : $CHAR80.
			        ORIGINAL_PRODUCT : $CHAR80.
			        SSN_SIN          : $CHAR80.
			        BIRTHDATE        : $CHAR80.
			        FIRST_NAME       : $CHAR80.
			        MIDDLE_NAME      : $CHAR80.
			        LAST_NAME        : $CHAR80.
			        ALIAS            : $CHAR80.
			        SUFFIX           : $CHAR80.
			        GENDER           : $CHAR80.
			        ADDRESS_1        : $CHAR80.
			        ADDRESS_2        : $CHAR80.
			        CITY             : $CHAR80.
			        STATE_PROVINCE   : $CHAR80.
			        ZIP_POSTAL_CODE  : $CHAR80.
			        MAIN_PHONE_NUMBER : $CHAR80.
			        LINETYPE         : $CHAR80.
			        PHONE2           : $CHAR80.
			        PHONE2_LINETYPE  : $CHAR80.
			        PHONE2_NOTES     : $CHAR80.
			        PHONE2_SOURCE    : $CHAR80.
			        PHONE3           : $CHAR80.
			        PHONE3_LINETYPE  : $CHAR80.
			        PHONE3_NOTES     : $CHAR80.
			        PHONE3_SOURCE    : $CHAR80.
			        PHONE4           : $CHAR80.
			        PHONE4_LINETYPE  : $CHAR80.
			        PHONE4_NOTES     : $CHAR80.
			        PHONE4_SOURCE    : $CHAR80.
			        PHONE5           : $CHAR80.
			        PHONE5_LINETYPE  : $CHAR80.
			        PHONE5_NOTES     : $CHAR80.
			        PHONE5_SOURCE    : $CHAR80.
			        PHONE6           : $CHAR80.
			        PHONE6_LINETYPE  : $CHAR80.
			        PHONE6_NOTES     : $CHAR80.
			        PHONE6_SOURCE    : $CHAR80.
			        PHONE7           : $CHAR80.
			        PHONE7_LINETYPE  : $CHAR80.
			        PHONE7_NOTES     : $CHAR80.
			        PHONE7_SOURCE    : $CHAR80.
			        PHONE8           : $CHAR80.
			        PHONE8_LINETYPE  : $CHAR80.
			        PHONE8_NOTES     : $CHAR80.
			        PHONE8_SOURCE    : $CHAR80.
			        PHONE9           : $CHAR80.
			        PHONE9_LINETYPE  : $CHAR80.
			        PHONE9_NOTES     : $CHAR80.
			        PHONE9_SOURCE    : $CHAR80.
			        PHONE10          : $CHAR80.
			        PHONE10_LINETYPE : $CHAR80.
			        PHONE10_NOTES    : $CHAR80.
			        PHONE10_SOURCE   : $CHAR80.
			        EMAIL            : $CHAR80.
			        IS_HOMEOWNER     : $CHAR80.
			        CLIENT_DEBTOR_ID : $CHAR80.
			        S_SSN_SIN        : $CHAR80.
			        S_BIRTHDATE      : $CHAR80.
			        S_FIRST_NAME     : $CHAR80.
			        S_MIDDLE_NAME    : $CHAR80.
			        S_LAST_NAME      : $CHAR80.
			        S_ALIAS          : $CHAR80.
			        S_SUFFIX         : $CHAR80.
			        S_GENDER         : $CHAR80.
			        S_ADDRESS_1      : $CHAR80.
			        S_ADDRESS_2      : $CHAR80.
			        S_CITY           : $CHAR80.
			        S_STATE_PROVINCE : $CHAR80.
			        S_ZIP_POSTAL_CODE : $CHAR80.
			        S_MAIN_PHONE_NUMBER : $CHAR80.
			        S_LINETYPE       : $CHAR80.
			        S_PHONE2         : $CHAR80.
			        S_PHONE2_LINETYPE : $CHAR80.
			        S_PHONE2_NOTES   : $CHAR80.
			        S_PHONE2_SOURCE  : $CHAR80.
			        S_PHONE3         : $CHAR80.
			        S_PHONE3_LINETYPE : $CHAR80.
			        S_PHONE3_NOTES   : $CHAR80.
			        S_PHONE3_SOURCE  : $CHAR80.
			        S_PHONE4         : $CHAR80.
			        S_PHONE4_LINETYPE : $CHAR80.
			        S_PHONE4_NOTES   : $CHAR80.
			        S_PHONE4_SOURCE  : $CHAR80.
			        S_PHONE5         : $CHAR80.
			        S_PHONE5_LINETYPE : $CHAR80.
			        S_PHONE5_NOTES   : $CHAR80.
			        S_PHONE5_SOURCE  : $CHAR80.
			        S_PHONE6         : $CHAR80.
			        S_PHONE6_LINETYPE : $CHAR80.
			        S_PHONE6_NOTES   : $CHAR80.
			        S_PHONE6_SOURCE  : $CHAR80.
			        S_PHONE7         : $CHAR80.
			        S_PHONE7_LINETYPE : $CHAR80.
			        S_PHONE7_NOTES   : $CHAR80.
			        S_PHONE7_SOURCE  : $CHAR80.
			        S_PHONE8         : $CHAR80.
			        S_PHONE8_LINETYPE : $CHAR80.
			        S_PHONE8_NOTES   : $CHAR80.
			        S_PHONE8_SOURCE  : $CHAR80.
			        S_PHONE9         : $CHAR80.
			        S_PHONE9_LINETYPE : $CHAR80.
			        S_PHONE9_NOTES   : $CHAR80.
			        S_PHONE9_SOURCE  : $CHAR80.
			        S_PHONE10        : $CHAR80.
			        S_PHONE10_LINETYPE : $CHAR80.
			        S_PHONE10_NOTES  : $CHAR80.
			        S_PHONE10_SOURCE : $CHAR80.
			        S_EMAIL          : $CHAR80.
			        S_CLIENT_DEBTOR_ID : $CHAR80.
			        SELLER_S_ACCOUNT_NUMBER : $CHAR80.
			        LOT              : $CHAR80.
			        ALTERNATIVE_DATE_OF_DELINQUENCY : $CHAR80.
			        PORTFOLIO_OWNER  : $CHAR80.
			        PORTFOLIO_OWNER_ADDRESS : $CHAR80.
			        OTHER_DATA       : $CHAR80.
			        LAST_PAID_DATE   : $CHAR80.
			        LAST_PAID_AMT    : $CHAR80.
			        TOTAL_AMOUNT_OF_DEBT_DUE_AS_OF_C : $CHAR80.
			        TOTAL_AMOUNT_OF_INTEREST_ACCRUED : $CHAR80.
			        TOTAL_AMOUNT_OF_NON_INTEREST_CHA : $CHAR80.
			        TOTAL_AMOUNT_OF_PAYMENTS_MADE_ON : $CHAR80.
			        CURRENT_BALANCE  : $CHAR80.;
/*			        EMPLOYER         : $CHAR80.*/
/*			        OCCUPATION       : $CHAR80.*/
/*			        EMPLOYER_ADDRESS_1 : $CHAR80.*/
/*			        EMPLOYER_ADDRESS_2 : $CHAR80.*/
/*			        EMPLOYER_CITY    : $CHAR80.*/
/*			        EMPLOYER_STATE   : $CHAR80.*/
/*			        EMPLOYER_ZIP     : $CHAR80.*/
/*			        EMPLOYER_PHONE   : $CHAR80.*/
/*			        SALARY           : $CHAR80.*/
/*			        PAY_BASIS        : $CHAR80.*/
/*			        EMPLOYMENT_START_DATE : $CHAR80.*/
/*			        EMPLOYMENT_END_DATE : $CHAR80.;*/
			RUN;


			%END;

	%ELSE %IF &TOTAL_COUNTER_USE.= 1  %THEN 
		%DO;

				DATA CLIENT_ACCOUNT_EXTRACT_&TOTAL_COUNTER.;
			    LENGTH
			        ISSUER_ACCOUNT_NUMBER $ 80
			        FLEX_TAG         $ 80
			        ISSUER_NAME      $ 80
			        OPEN_AMOUNT      $ 80
			        CLIENT_ACCOUNT_ID $ 80
			        ACQUISITION_BALANCE $ 80
			        PRINCIPAL        $ 80
			        INTEREST         $ 80
			        MISC_FEES        $ 80
			        OTHER_CHARGES    $ 80
			        TOTAL_DUE        $ 80
			        CHARGE_OFF_DATE  $ 80
			        CHARGE_OFF_AMOUNT $ 80
			        LAST_PAY_DATE    $ 80
			        LAST_PAY_AMOUNT  $ 80
			        ACCOUNT_OPEN_DATE $ 80
			        OCCURRENCE_DATE  $ 80
			        CONTRACT_INTEREST_RATE $ 80
			        INTEREST_FROM_C_O $ 80
			        ORIGINAL_PHONE   $ 80
			        ORIGINAL_ADDRESSL $ 80
			        ORIGINAL_ADDRESS2 $ 80
			        ORIGINAL_CITY    $ 80
			        ORIGINAL_STATE   $ 80
			        ORIGINAL_ZIP_POSTAL_CODE $ 80
			        ORIGINAL_PRODUCT $ 80
			        SSN_SIN          $ 80
			        BIRTHDATE        $ 80
			        FIRST_NAME       $ 80
			        MIDDLE_NAME      $ 80
			        LAST_NAME        $ 80
			        ALIAS            $ 80
			        SUFFIX           $ 80
			        GENDER           $ 80
			        ADDRESS_1        $ 80
			        ADDRESS_2        $ 80
			        CITY             $ 80
			        STATE_PROVINCE   $ 80
			        ZIP_POSTAL_CODE  $ 80
			        MAIN_PHONE_NUMBER $ 80
			        LINETYPE         $ 80
			        PHONE2           $ 80
			        PHONE2_LINETYPE  $ 80
			        PHONE2_NOTES     $ 80
			        PHONE2_SOURCE    $ 80
			        PHONE3           $ 80
			        PHONE3_LINETYPE  $ 80
			        PHONE3_NOTES     $ 80
			        PHONE3_SOURCE    $ 80
			        PHONE4           $ 80
			        PHONE4_LINETYPE  $ 80
			        PHONE4_NOTES     $ 80
			        PHONE4_SOURCE    $ 80
			        PHONE5           $ 80
			        PHONE5_LINETYPE  $ 80
			        PHONE5_NOTES     $ 80
			        PHONE5_SOURCE    $ 80
			        PHONE6           $ 80
			        PHONE6_LINETYPE  $ 80
			        PHONE6_NOTES     $ 80
			        PHONE6_SOURCE    $ 80
			        PHONE7           $ 80
			        PHONE7_LINETYPE  $ 80
			        PHONE7_NOTES     $ 80
			        PHONE7_SOURCE    $ 80
			        PHONE8           $ 80
			        PHONE8_LINETYPE  $ 80
			        PHONE8_NOTES     $ 80
			        PHONE8_SOURCE    $ 80
			        PHONE9           $ 80
			        PHONE9_LINETYPE  $ 80
			        PHONE9_NOTES     $ 80
			        PHONE9_SOURCE    $ 80
			        PHONE10          $ 80
			        PHONE10_LINETYPE $ 80
			        PHONE10_NOTES    $ 80
			        PHONE10_SOURCE   $ 80
			        EMAIL            $ 80
			        IS_HOMEOWNER     $ 80
			        CLIENT_DEBTOR_ID $ 80
			        S_SSN_SIN        $ 80
			        S_BIRTHDATE      $ 80
			        S_FIRST_NAME     $ 80
			        S_MIDDLE_NAME    $ 80
			        S_LAST_NAME      $ 80
			        S_ALIAS          $ 80
			        S_SUFFIX         $ 80
			        S_GENDER         $ 80
			        S_ADDRESS_1      $ 80
			        S_ADDRESS_2      $ 80
			        S_CITY           $ 80
			        S_STATE_PROVINCE $ 80
			        S_ZIP_POSTAL_CODE $ 80
			        S_MAIN_PHONE_NUMBER $ 80
			        S_LINETYPE       $ 80
			        S_PHONE2         $ 80
			        S_PHONE2_LINETYPE $ 80
			        S_PHONE2_NOTES   $ 80
			        S_PHONE2_SOURCE  $ 80
			        S_PHONE3         $ 80
			        S_PHONE3_LINETYPE $ 80
			        S_PHONE3_NOTES   $ 80
			        S_PHONE3_SOURCE  $ 80
			        S_PHONE4         $ 80
			        S_PHONE4_LINETYPE $ 80
			        S_PHONE4_NOTES   $ 80
			        S_PHONE4_SOURCE  $ 80
			        S_PHONE5         $ 80
			        S_PHONE5_LINETYPE $ 80
			        S_PHONE5_NOTES   $ 80
			        S_PHONE5_SOURCE  $ 80
			        S_PHONE6         $ 80
			        S_PHONE6_LINETYPE $ 80
			        S_PHONE6_NOTES   $ 80
			        S_PHONE6_SOURCE  $ 80
			        S_PHONE7         $ 80
			        S_PHONE7_LINETYPE $ 80
			        S_PHONE7_NOTES   $ 80
			        S_PHONE7_SOURCE  $ 80
			        S_PHONE8         $ 80
			        S_PHONE8_LINETYPE $ 80
			        S_PHONE8_NOTES   $ 80
			        S_PHONE8_SOURCE  $ 80
			        S_PHONE9         $ 80
			        S_PHONE9_LINETYPE $ 80
			        S_PHONE9_NOTES   $ 80
			        S_PHONE9_SOURCE  $ 80
			        S_PHONE10        $ 80
			        S_PHONE10_LINETYPE $ 80
			        S_PHONE10_NOTES  $ 80
			        S_PHONE10_SOURCE $ 80
			        S_EMAIL          $ 80
			        S_CLIENT_DEBTOR_ID $ 80
			        SELLER_S_ACCOUNT_NUMBER $ 80
			        LOT              $ 80
			        ALTERNATIVE_DATE_OF_DELINQUENCY $ 80
			        PORTFOLIO_OWNER  $ 80
			        PORTFOLIO_OWNER_ADDRESS $ 80
			        OTHER_DATA       $ 80
			        LAST_PAID_DATE   $ 80
			        LAST_PAID_AMT    $ 80
			        TOTAL_AMOUNT_OF_DEBT_DUE_AS_OF_C $ 80
			        TOTAL_AMOUNT_OF_INTEREST_ACCRUED $ 80
			        TOTAL_AMOUNT_OF_NON_INTEREST_CHA $ 80
			        TOTAL_AMOUNT_OF_PAYMENTS_MADE_ON $ 80
			        CURRENT_BALANCE  $ 80;
/*			        EMPLOYER         $ 80*/
/*			        OCCUPATION       $ 80*/
/*			        EMPLOYER_ADDRESS_1 $ 80*/
/*			        EMPLOYER_ADDRESS_2 $ 80*/
/*			        EMPLOYER_CITY    $ 80*/
/*			        EMPLOYER_STATE   $ 80*/
/*			        EMPLOYER_ZIP     $ 80*/
/*			        EMPLOYER_PHONE   $ 80*/
/*			        SALARY           $ 80*/
/*			        PAY_BASIS        $ 80*/
/*			        EMPLOYMENT_START_DATE $ 80*/
/*			        EMPLOYMENT_END_DATE $ 80 ;*/
			    LABEL
			        ISSUER_ACCOUNT_NUMBER = "ISSUER ACCOUNT NUMBER"
			        FLEX_TAG         = "FLEX TAG"
			        ISSUER_NAME      = "ISSUER NAME"
			        OPEN_AMOUNT      = "OPEN AMOUNT"
			        CLIENT_ACCOUNT_ID = "CLIENT ACCOUNT ID"
			        ACQUISITION_BALANCE = "ACQUISITION BALANCE"
			        CHARGE_OFF_DATE  = "CHARGE-OFF DATE"
			        CHARGE_OFF_AMOUNT = "CHARGE-OFF AMOUNT"
			        LAST_PAY_DATE    = "LAST PAY DATE"
			        LAST_PAY_AMOUNT  = "LAST PAY AMOUNT"
			        ACCOUNT_OPEN_DATE = "ACCOUNT OPEN DATE"
			        OCCURRENCE_DATE  = "OCCURRENCE DATE"
			        CONTRACT_INTEREST_RATE = "CONTRACT INTEREST RATE"
			        INTEREST_FROM_C_O = "INTEREST FROM C/O"
			        ORIGINAL_PHONE   = "ORIGINAL PHONE"
			        ORIGINAL_ADDRESSL = "ORIGINAL ADDRESSL"
			        ORIGINAL_ADDRESS2 = "ORIGINAL ADDRESS2"
			        ORIGINAL_CITY    = "ORIGINAL CITY"
			        ORIGINAL_STATE   = "ORIGINAL STATE"
			        ORIGINAL_ZIP_POSTAL_CODE = "ORIGINAL ZIP/POSTAL CODE"
			        ORIGINAL_PRODUCT = "ORIGINAL PRODUCT"
			        SSN_SIN          = "SSN/SIN"
			        FIRST_NAME       = "FIRST NAME"
			        MIDDLE_NAME      = "MIDDLE NAME"
			        LAST_NAME        = "LAST NAME"
			        ADDRESS_1        = "ADDRESS 1"
			        ADDRESS_2        = "ADDRESS 2"
			        STATE_PROVINCE   = "STATE/PROVINCE"
			        ZIP_POSTAL_CODE  = "ZIP/POSTAL CODE"
			        MAIN_PHONE_NUMBER = "MAIN PHONE NUMBER"
			        IS_HOMEOWNER     = "IS HOMEOWNER"
			        CLIENT_DEBTOR_ID = "CLIENT DEBTOR ID"
			        S_SSN_SIN        = "S_SSN/SIN"
			        S_FIRST_NAME     = "S_FIRST NAME"
			        S_MIDDLE_NAME    = "S_MIDDLE NAME"
			        S_LAST_NAME      = "S_LAST NAME"
			        S_ADDRESS_1      = "S_ADDRESS 1"
			        S_ADDRESS_2      = "S_ADDRESS 2"
			        S_STATE_PROVINCE = "S_STATE/PROVINCE"
			        S_ZIP_POSTAL_CODE = "S_ZIP/POSTAL CODE"
			        S_MAIN_PHONE_NUMBER = "S_MAIN PHONE NUMBER"
			        S_CLIENT_DEBTOR_ID = "S_CLIENT DEBTOR ID"
			        SELLER_S_ACCOUNT_NUMBER = "SELLER'S ACCOUNT NUMBER"
			        ALTERNATIVE_DATE_OF_DELINQUENCY = "ALTERNATIVE DATE OF DELINQUENCY"
			        PORTFOLIO_OWNER  = "PORTFOLIO OWNER"
			        PORTFOLIO_OWNER_ADDRESS = "PORTFOLIO OWNER ADDRESS"
			        OTHER_DATA       = "OTHER DATA"
			        LAST_PAID_DATE   = "LAST PAID DATE"
			        LAST_PAID_AMT    = "LAST PAID AMT"
			        TOTAL_AMOUNT_OF_DEBT_DUE_AS_OF_C = "TOTAL AMOUNT OF DEBT DUE AS OF CHARGE-OFF"
			        TOTAL_AMOUNT_OF_INTEREST_ACCRUED = "TOTAL AMOUNT OF INTEREST ACCRUED SINCE CHARGE-OFF"
			        TOTAL_AMOUNT_OF_NON_INTEREST_CHA = "TOTAL AMOUNT OF NON-INTEREST CHARGES OR FEES ACCRUED SINCE CHARGE-OFF"
			        TOTAL_AMOUNT_OF_PAYMENTS_MADE_ON = "TOTAL AMOUNT OF PAYMENTS MADE ON THE DEBT SINCE THE CHARGE-OFF"
			        CURRENT_BALANCE  = "CURRENT BALANCE" ;
			    FORMAT
			        ISSUER_ACCOUNT_NUMBER $CHAR80.
			        FLEX_TAG         $CHAR80.
			        ISSUER_NAME      $CHAR80.
			        OPEN_AMOUNT      $CHAR80.
			        CLIENT_ACCOUNT_ID $CHAR80.
			        ACQUISITION_BALANCE $CHAR80.
			        PRINCIPAL        $CHAR80.
			        INTEREST         $CHAR80.
			        MISC_FEES        $CHAR80.
			        OTHER_CHARGES    $CHAR80.
			        TOTAL_DUE        $CHAR80.
			        CHARGE_OFF_DATE  $CHAR80.
			        CHARGE_OFF_AMOUNT $CHAR80.
			        LAST_PAY_DATE    $CHAR80.
			        LAST_PAY_AMOUNT  $CHAR80.
			        ACCOUNT_OPEN_DATE $CHAR80.
			        OCCURRENCE_DATE  $CHAR80.
			        CONTRACT_INTEREST_RATE $CHAR80.
			        INTEREST_FROM_C_O $CHAR80.
			        ORIGINAL_PHONE   $CHAR80.
			        ORIGINAL_ADDRESSL $CHAR80.
			        ORIGINAL_ADDRESS2 $CHAR80.
			        ORIGINAL_CITY    $CHAR80.
			        ORIGINAL_STATE   $CHAR80.
			        ORIGINAL_ZIP_POSTAL_CODE $CHAR80.
			        ORIGINAL_PRODUCT $CHAR80.
			        SSN_SIN          $CHAR80.
			        BIRTHDATE        $CHAR80.
			        FIRST_NAME       $CHAR80.
			        MIDDLE_NAME      $CHAR80.
			        LAST_NAME        $CHAR80.
			        ALIAS            $CHAR80.
			        SUFFIX           $CHAR80.
			        GENDER           $CHAR80.
			        ADDRESS_1        $CHAR80.
			        ADDRESS_2        $CHAR80.
			        CITY             $CHAR80.
			        STATE_PROVINCE   $CHAR80.
			        ZIP_POSTAL_CODE  $CHAR80.
			        MAIN_PHONE_NUMBER $CHAR80.
			        LINETYPE         $CHAR80.
			        PHONE2           $CHAR80.
			        PHONE2_LINETYPE  $CHAR80.
			        PHONE2_NOTES     $CHAR80.
			        PHONE2_SOURCE    $CHAR80.
			        PHONE3           $CHAR80.
			        PHONE3_LINETYPE  $CHAR80.
			        PHONE3_NOTES     $CHAR80.
			        PHONE3_SOURCE    $CHAR80.
			        PHONE4           $CHAR80.
			        PHONE4_LINETYPE  $CHAR80.
			        PHONE4_NOTES     $CHAR80.
			        PHONE4_SOURCE    $CHAR80.
			        PHONE5           $CHAR80.
			        PHONE5_LINETYPE  $CHAR80.
			        PHONE5_NOTES     $CHAR80.
			        PHONE5_SOURCE    $CHAR80.
			        PHONE6           $CHAR80.
			        PHONE6_LINETYPE  $CHAR80.
			        PHONE6_NOTES     $CHAR80.
			        PHONE6_SOURCE    $CHAR80.
			        PHONE7           $CHAR80.
			        PHONE7_LINETYPE  $CHAR80.
			        PHONE7_NOTES     $CHAR80.
			        PHONE7_SOURCE    $CHAR80.
			        PHONE8           $CHAR80.
			        PHONE8_LINETYPE  $CHAR80.
			        PHONE8_NOTES     $CHAR80.
			        PHONE8_SOURCE    $CHAR80.
			        PHONE9           $CHAR80.
			        PHONE9_LINETYPE  $CHAR80.
			        PHONE9_NOTES     $CHAR80.
			        PHONE9_SOURCE    $CHAR80.
			        PHONE10          $CHAR80.
			        PHONE10_LINETYPE $CHAR80.
			        PHONE10_NOTES    $CHAR80.
			        PHONE10_SOURCE   $CHAR80.
			        EMAIL            $CHAR80.
			        IS_HOMEOWNER     $CHAR80.
			        CLIENT_DEBTOR_ID $CHAR80.
			        S_SSN_SIN        $CHAR80.
			        S_BIRTHDATE      $CHAR80.
			        S_FIRST_NAME     $CHAR80.
			        S_MIDDLE_NAME    $CHAR80.
			        S_LAST_NAME      $CHAR80.
			        S_ALIAS          $CHAR80.
			        S_SUFFIX         $CHAR80.
			        S_GENDER         $CHAR80.
			        S_ADDRESS_1      $CHAR80.
			        S_ADDRESS_2      $CHAR80.
			        S_CITY           $CHAR80.
			        S_STATE_PROVINCE $CHAR80.
			        S_ZIP_POSTAL_CODE $CHAR80.
			        S_MAIN_PHONE_NUMBER $CHAR80.
			        S_LINETYPE       $CHAR80.
			        S_PHONE2         $CHAR80.
			        S_PHONE2_LINETYPE $CHAR80.
			        S_PHONE2_NOTES   $CHAR80.
			        S_PHONE2_SOURCE  $CHAR80.
			        S_PHONE3         $CHAR80.
			        S_PHONE3_LINETYPE $CHAR80.
			        S_PHONE3_NOTES   $CHAR80.
			        S_PHONE3_SOURCE  $CHAR80.
			        S_PHONE4         $CHAR80.
			        S_PHONE4_LINETYPE $CHAR80.
			        S_PHONE4_NOTES   $CHAR80.
			        S_PHONE4_SOURCE  $CHAR80.
			        S_PHONE5         $CHAR80.
			        S_PHONE5_LINETYPE $CHAR80.
			        S_PHONE5_NOTES   $CHAR80.
			        S_PHONE5_SOURCE  $CHAR80.
			        S_PHONE6         $CHAR80.
			        S_PHONE6_LINETYPE $CHAR80.
			        S_PHONE6_NOTES   $CHAR80.
			        S_PHONE6_SOURCE  $CHAR80.
			        S_PHONE7         $CHAR80.
			        S_PHONE7_LINETYPE $CHAR80.
			        S_PHONE7_NOTES   $CHAR80.
			        S_PHONE7_SOURCE  $CHAR80.
			        S_PHONE8         $CHAR80.
			        S_PHONE8_LINETYPE $CHAR80.
			        S_PHONE8_NOTES   $CHAR80.
			        S_PHONE8_SOURCE  $CHAR80.
			        S_PHONE9         $CHAR80.
			        S_PHONE9_LINETYPE $CHAR80.
			        S_PHONE9_NOTES   $CHAR80.
			        S_PHONE9_SOURCE  $CHAR80.
			        S_PHONE10        $CHAR80.
			        S_PHONE10_LINETYPE $CHAR80.
			        S_PHONE10_NOTES  $CHAR80.
			        S_PHONE10_SOURCE $CHAR80.
			        S_EMAIL          $CHAR80.
			        S_CLIENT_DEBTOR_ID $CHAR80.
			        SELLER_S_ACCOUNT_NUMBER $CHAR80.
			        LOT              $CHAR80.
			        ALTERNATIVE_DATE_OF_DELINQUENCY $CHAR80.
			        PORTFOLIO_OWNER  $CHAR80.
			        PORTFOLIO_OWNER_ADDRESS $CHAR80.
			        OTHER_DATA       $CHAR80.
			        LAST_PAID_DATE   $CHAR80.
			        LAST_PAID_AMT    $CHAR80.
			        TOTAL_AMOUNT_OF_DEBT_DUE_AS_OF_C $CHAR80.
			        TOTAL_AMOUNT_OF_INTEREST_ACCRUED $CHAR80.
			        TOTAL_AMOUNT_OF_NON_INTEREST_CHA $CHAR80.
			        TOTAL_AMOUNT_OF_PAYMENTS_MADE_ON $CHAR80.
			        CURRENT_BALANCE  $CHAR80.;
/*			        EMPLOYER         $CHAR80.*/
/*			        OCCUPATION       $CHAR80.*/
/*			        EMPLOYER_ADDRESS_1 $CHAR80.*/
/*			        EMPLOYER_ADDRESS_2 $CHAR80.*/
/*			        EMPLOYER_CITY    $CHAR80.*/
/*			        EMPLOYER_STATE   $CHAR80.*/
/*			        EMPLOYER_ZIP     $CHAR80.*/
/*			        EMPLOYER_PHONE   $CHAR80.*/
/*			        SALARY           $CHAR80.*/
/*			        PAY_BASIS        $CHAR80.*/
/*			        EMPLOYMENT_START_DATE $CHAR80.*/
/*			        EMPLOYMENT_END_DATE $CHAR80. ;*/
			    INFORMAT
			        ISSUER_ACCOUNT_NUMBER $CHAR80.
			        FLEX_TAG         $CHAR80.
			        ISSUER_NAME      $CHAR80.
			        OPEN_AMOUNT      $CHAR80.
			        CLIENT_ACCOUNT_ID $CHAR80.
			        ACQUISITION_BALANCE $CHAR80.
			        PRINCIPAL        $CHAR80.
			        INTEREST         $CHAR80.
			        MISC_FEES        $CHAR80.
			        OTHER_CHARGES    $CHAR80.
			        TOTAL_DUE        $CHAR80.
			        CHARGE_OFF_DATE  $CHAR80.
			        CHARGE_OFF_AMOUNT $CHAR80.
			        LAST_PAY_DATE    $CHAR80.
			        LAST_PAY_AMOUNT  $CHAR80.
			        ACCOUNT_OPEN_DATE $CHAR80.
			        OCCURRENCE_DATE  $CHAR80.
			        CONTRACT_INTEREST_RATE $CHAR80.
			        INTEREST_FROM_C_O $CHAR80.
			        ORIGINAL_PHONE   $CHAR80.
			        ORIGINAL_ADDRESSL $CHAR80.
			        ORIGINAL_ADDRESS2 $CHAR80.
			        ORIGINAL_CITY    $CHAR80.
			        ORIGINAL_STATE   $CHAR80.
			        ORIGINAL_ZIP_POSTAL_CODE $CHAR80.
			        ORIGINAL_PRODUCT $CHAR80.
			        SSN_SIN          $CHAR80.
			        BIRTHDATE        $CHAR80.
			        FIRST_NAME       $CHAR80.
			        MIDDLE_NAME      $CHAR80.
			        LAST_NAME        $CHAR80.
			        ALIAS            $CHAR80.
			        SUFFIX           $CHAR80.
			        GENDER           $CHAR80.
			        ADDRESS_1        $CHAR80.
			        ADDRESS_2        $CHAR80.
			        CITY             $CHAR80.
			        STATE_PROVINCE   $CHAR80.
			        ZIP_POSTAL_CODE  $CHAR80.
			        MAIN_PHONE_NUMBER $CHAR80.
			        LINETYPE         $CHAR80.
			        PHONE2           $CHAR80.
			        PHONE2_LINETYPE  $CHAR80.
			        PHONE2_NOTES     $CHAR80.
			        PHONE2_SOURCE    $CHAR80.
			        PHONE3           $CHAR80.
			        PHONE3_LINETYPE  $CHAR80.
			        PHONE3_NOTES     $CHAR80.
			        PHONE3_SOURCE    $CHAR80.
			        PHONE4           $CHAR80.
			        PHONE4_LINETYPE  $CHAR80.
			        PHONE4_NOTES     $CHAR80.
			        PHONE4_SOURCE    $CHAR80.
			        PHONE5           $CHAR80.
			        PHONE5_LINETYPE  $CHAR80.
			        PHONE5_NOTES     $CHAR80.
			        PHONE5_SOURCE    $CHAR80.
			        PHONE6           $CHAR80.
			        PHONE6_LINETYPE  $CHAR80.
			        PHONE6_NOTES     $CHAR80.
			        PHONE6_SOURCE    $CHAR80.
			        PHONE7           $CHAR80.
			        PHONE7_LINETYPE  $CHAR80.
			        PHONE7_NOTES     $CHAR80.
			        PHONE7_SOURCE    $CHAR80.
			        PHONE8           $CHAR80.
			        PHONE8_LINETYPE  $CHAR80.
			        PHONE8_NOTES     $CHAR80.
			        PHONE8_SOURCE    $CHAR80.
			        PHONE9           $CHAR80.
			        PHONE9_LINETYPE  $CHAR80.
			        PHONE9_NOTES     $CHAR80.
			        PHONE9_SOURCE    $CHAR80.
			        PHONE10          $CHAR80.
			        PHONE10_LINETYPE $CHAR80.
			        PHONE10_NOTES    $CHAR80.
			        PHONE10_SOURCE   $CHAR80.
			        EMAIL            $CHAR80.
			        IS_HOMEOWNER     $CHAR80.
			        CLIENT_DEBTOR_ID $CHAR80.
			        S_SSN_SIN        $CHAR80.
			        S_BIRTHDATE      $CHAR80.
			        S_FIRST_NAME     $CHAR80.
			        S_MIDDLE_NAME    $CHAR80.
			        S_LAST_NAME      $CHAR80.
			        S_ALIAS          $CHAR80.
			        S_SUFFIX         $CHAR80.
			        S_GENDER         $CHAR80.
			        S_ADDRESS_1      $CHAR80.
			        S_ADDRESS_2      $CHAR80.
			        S_CITY           $CHAR80.
			        S_STATE_PROVINCE $CHAR80.
			        S_ZIP_POSTAL_CODE $CHAR80.
			        S_MAIN_PHONE_NUMBER $CHAR80.
			        S_LINETYPE       $CHAR80.
			        S_PHONE2         $CHAR80.
			        S_PHONE2_LINETYPE $CHAR80.
			        S_PHONE2_NOTES   $CHAR80.
			        S_PHONE2_SOURCE  $CHAR80.
			        S_PHONE3         $CHAR80.
			        S_PHONE3_LINETYPE $CHAR80.
			        S_PHONE3_NOTES   $CHAR80.
			        S_PHONE3_SOURCE  $CHAR80.
			        S_PHONE4         $CHAR80.
			        S_PHONE4_LINETYPE $CHAR80.
			        S_PHONE4_NOTES   $CHAR80.
			        S_PHONE4_SOURCE  $CHAR80.
			        S_PHONE5         $CHAR80.
			        S_PHONE5_LINETYPE $CHAR80.
			        S_PHONE5_NOTES   $CHAR80.
			        S_PHONE5_SOURCE  $CHAR80.
			        S_PHONE6         $CHAR80.
			        S_PHONE6_LINETYPE $CHAR80.
			        S_PHONE6_NOTES   $CHAR80.
			        S_PHONE6_SOURCE  $CHAR80.
			        S_PHONE7         $CHAR80.
			        S_PHONE7_LINETYPE $CHAR80.
			        S_PHONE7_NOTES   $CHAR80.
			        S_PHONE7_SOURCE  $CHAR80.
			        S_PHONE8         $CHAR80.
			        S_PHONE8_LINETYPE $CHAR80.
			        S_PHONE8_NOTES   $CHAR80.
			        S_PHONE8_SOURCE  $CHAR80.
			        S_PHONE9         $CHAR80.
			        S_PHONE9_LINETYPE $CHAR80.
			        S_PHONE9_NOTES   $CHAR80.
			        S_PHONE9_SOURCE  $CHAR80.
			        S_PHONE10        $CHAR80.
			        S_PHONE10_LINETYPE $CHAR80.
			        S_PHONE10_NOTES  $CHAR80.
			        S_PHONE10_SOURCE $CHAR80.
			        S_EMAIL          $CHAR80.
			        S_CLIENT_DEBTOR_ID $CHAR80.
			        SELLER_S_ACCOUNT_NUMBER $CHAR80.
			        LOT              $CHAR80.
			        ALTERNATIVE_DATE_OF_DELINQUENCY $CHAR80.
			        PORTFOLIO_OWNER  $CHAR80.
			        PORTFOLIO_OWNER_ADDRESS $CHAR80.
			        OTHER_DATA       $CHAR80.
			        LAST_PAID_DATE   $CHAR80.
			        LAST_PAID_AMT    $CHAR80.
			        TOTAL_AMOUNT_OF_DEBT_DUE_AS_OF_C $CHAR80.
			        TOTAL_AMOUNT_OF_INTEREST_ACCRUED $CHAR80.
			        TOTAL_AMOUNT_OF_NON_INTEREST_CHA $CHAR80.
			        TOTAL_AMOUNT_OF_PAYMENTS_MADE_ON $CHAR80.
			        CURRENT_BALANCE  $CHAR80.;
/*			        EMPLOYER         $CHAR80.*/
/*			        OCCUPATION       $CHAR80.*/
/*			        EMPLOYER_ADDRESS_1 $CHAR80.*/
/*			        EMPLOYER_ADDRESS_2 $CHAR80.*/
/*			        EMPLOYER_CITY    $CHAR80.*/
/*			        EMPLOYER_STATE   $CHAR80.*/
/*			        EMPLOYER_ZIP     $CHAR80.*/
/*			        EMPLOYER_PHONE   $CHAR80.*/
/*			        SALARY           $CHAR80.*/
/*			        PAY_BASIS        $CHAR80.*/
/*			        EMPLOYMENT_START_DATE $CHAR80.*/
/*			        EMPLOYMENT_END_DATE $CHAR80. ;*/
/*			    INFILE "E:\SHARED\CADA\SAS SOURCE CODE\DEVELOPMENT\JHUBBARD\EBG\1_PORTFOLIO_FILE_STANDARDIZATION\ENVIRONMENT\BEAM\IMPORTS\PIPPED_BEAM.TXT"*/
					  INFILE "&FILE_USE"
						DLM=','
				        MISSOVER
				        DSD
						FIRSTOBS=2;
			    INPUT
			        ISSUER_ACCOUNT_NUMBER : $CHAR80.
			        FLEX_TAG         : $CHAR80.
			        ISSUER_NAME      : $CHAR80.
			        OPEN_AMOUNT      : $CHAR80.
			        CLIENT_ACCOUNT_ID : $CHAR80.
			        ACQUISITION_BALANCE : $CHAR80.
			        PRINCIPAL        : $CHAR80.
			        INTEREST         : $CHAR80.
			        MISC_FEES        : $CHAR80.
			        OTHER_CHARGES    : $CHAR80.
			        TOTAL_DUE        : $CHAR80.
			        CHARGE_OFF_DATE  : $CHAR80.
			        CHARGE_OFF_AMOUNT : $CHAR80.
			        LAST_PAY_DATE    : $CHAR80.
			        LAST_PAY_AMOUNT  : $CHAR80.
			        ACCOUNT_OPEN_DATE : $CHAR80.
			        OCCURRENCE_DATE  : $CHAR80.
			        CONTRACT_INTEREST_RATE : $CHAR80.
			        INTEREST_FROM_C_O : $CHAR80.
			        ORIGINAL_PHONE   : $CHAR80.
			        ORIGINAL_ADDRESSL : $CHAR80.
			        ORIGINAL_ADDRESS2 : $CHAR80.
			        ORIGINAL_CITY    : $CHAR80.
			        ORIGINAL_STATE   : $CHAR80.
			        ORIGINAL_ZIP_POSTAL_CODE : $CHAR80.
			        ORIGINAL_PRODUCT : $CHAR80.
			        SSN_SIN          : $CHAR80.
			        BIRTHDATE        : $CHAR80.
			        FIRST_NAME       : $CHAR80.
			        MIDDLE_NAME      : $CHAR80.
			        LAST_NAME        : $CHAR80.
			        ALIAS            : $CHAR80.
			        SUFFIX           : $CHAR80.
			        GENDER           : $CHAR80.
			        ADDRESS_1        : $CHAR80.
			        ADDRESS_2        : $CHAR80.
			        CITY             : $CHAR80.
			        STATE_PROVINCE   : $CHAR80.
			        ZIP_POSTAL_CODE  : $CHAR80.
			        MAIN_PHONE_NUMBER : $CHAR80.
			        LINETYPE         : $CHAR80.
			        PHONE2           : $CHAR80.
			        PHONE2_LINETYPE  : $CHAR80.
			        PHONE2_NOTES     : $CHAR80.
			        PHONE2_SOURCE    : $CHAR80.
			        PHONE3           : $CHAR80.
			        PHONE3_LINETYPE  : $CHAR80.
			        PHONE3_NOTES     : $CHAR80.
			        PHONE3_SOURCE    : $CHAR80.
			        PHONE4           : $CHAR80.
			        PHONE4_LINETYPE  : $CHAR80.
			        PHONE4_NOTES     : $CHAR80.
			        PHONE4_SOURCE    : $CHAR80.
			        PHONE5           : $CHAR80.
			        PHONE5_LINETYPE  : $CHAR80.
			        PHONE5_NOTES     : $CHAR80.
			        PHONE5_SOURCE    : $CHAR80.
			        PHONE6           : $CHAR80.
			        PHONE6_LINETYPE  : $CHAR80.
			        PHONE6_NOTES     : $CHAR80.
			        PHONE6_SOURCE    : $CHAR80.
			        PHONE7           : $CHAR80.
			        PHONE7_LINETYPE  : $CHAR80.
			        PHONE7_NOTES     : $CHAR80.
			        PHONE7_SOURCE    : $CHAR80.
			        PHONE8           : $CHAR80.
			        PHONE8_LINETYPE  : $CHAR80.
			        PHONE8_NOTES     : $CHAR80.
			        PHONE8_SOURCE    : $CHAR80.
			        PHONE9           : $CHAR80.
			        PHONE9_LINETYPE  : $CHAR80.
			        PHONE9_NOTES     : $CHAR80.
			        PHONE9_SOURCE    : $CHAR80.
			        PHONE10          : $CHAR80.
			        PHONE10_LINETYPE : $CHAR80.
			        PHONE10_NOTES    : $CHAR80.
			        PHONE10_SOURCE   : $CHAR80.
			        EMAIL            : $CHAR80.
			        IS_HOMEOWNER     : $CHAR80.
			        CLIENT_DEBTOR_ID : $CHAR80.
			        S_SSN_SIN        : $CHAR80.
			        S_BIRTHDATE      : $CHAR80.
			        S_FIRST_NAME     : $CHAR80.
			        S_MIDDLE_NAME    : $CHAR80.
			        S_LAST_NAME      : $CHAR80.
			        S_ALIAS          : $CHAR80.
			        S_SUFFIX         : $CHAR80.
			        S_GENDER         : $CHAR80.
			        S_ADDRESS_1      : $CHAR80.
			        S_ADDRESS_2      : $CHAR80.
			        S_CITY           : $CHAR80.
			        S_STATE_PROVINCE : $CHAR80.
			        S_ZIP_POSTAL_CODE : $CHAR80.
			        S_MAIN_PHONE_NUMBER : $CHAR80.
			        S_LINETYPE       : $CHAR80.
			        S_PHONE2         : $CHAR80.
			        S_PHONE2_LINETYPE : $CHAR80.
			        S_PHONE2_NOTES   : $CHAR80.
			        S_PHONE2_SOURCE  : $CHAR80.
			        S_PHONE3         : $CHAR80.
			        S_PHONE3_LINETYPE : $CHAR80.
			        S_PHONE3_NOTES   : $CHAR80.
			        S_PHONE3_SOURCE  : $CHAR80.
			        S_PHONE4         : $CHAR80.
			        S_PHONE4_LINETYPE : $CHAR80.
			        S_PHONE4_NOTES   : $CHAR80.
			        S_PHONE4_SOURCE  : $CHAR80.
			        S_PHONE5         : $CHAR80.
			        S_PHONE5_LINETYPE : $CHAR80.
			        S_PHONE5_NOTES   : $CHAR80.
			        S_PHONE5_SOURCE  : $CHAR80.
			        S_PHONE6         : $CHAR80.
			        S_PHONE6_LINETYPE : $CHAR80.
			        S_PHONE6_NOTES   : $CHAR80.
			        S_PHONE6_SOURCE  : $CHAR80.
			        S_PHONE7         : $CHAR80.
			        S_PHONE7_LINETYPE : $CHAR80.
			        S_PHONE7_NOTES   : $CHAR80.
			        S_PHONE7_SOURCE  : $CHAR80.
			        S_PHONE8         : $CHAR80.
			        S_PHONE8_LINETYPE : $CHAR80.
			        S_PHONE8_NOTES   : $CHAR80.
			        S_PHONE8_SOURCE  : $CHAR80.
			        S_PHONE9         : $CHAR80.
			        S_PHONE9_LINETYPE : $CHAR80.
			        S_PHONE9_NOTES   : $CHAR80.
			        S_PHONE9_SOURCE  : $CHAR80.
			        S_PHONE10        : $CHAR80.
			        S_PHONE10_LINETYPE : $CHAR80.
			        S_PHONE10_NOTES  : $CHAR80.
			        S_PHONE10_SOURCE : $CHAR80.
			        S_EMAIL          : $CHAR80.
			        S_CLIENT_DEBTOR_ID : $CHAR80.
			        SELLER_S_ACCOUNT_NUMBER : $CHAR80.
			        LOT              : $CHAR80.
			        ALTERNATIVE_DATE_OF_DELINQUENCY : $CHAR80.
			        PORTFOLIO_OWNER  : $CHAR80.
			        PORTFOLIO_OWNER_ADDRESS : $CHAR80.
			        OTHER_DATA       : $CHAR80.
			        LAST_PAID_DATE   : $CHAR80.
			        LAST_PAID_AMT    : $CHAR80.
			        TOTAL_AMOUNT_OF_DEBT_DUE_AS_OF_C : $CHAR80.
			        TOTAL_AMOUNT_OF_INTEREST_ACCRUED : $CHAR80.
			        TOTAL_AMOUNT_OF_NON_INTEREST_CHA : $CHAR80.
			        TOTAL_AMOUNT_OF_PAYMENTS_MADE_ON : $CHAR80.
			        CURRENT_BALANCE  : $CHAR80.;
/*			        EMPLOYER         : $CHAR80.*/
/*			        OCCUPATION       : $CHAR80.*/
/*			        EMPLOYER_ADDRESS_1 : $CHAR80.*/
/*			        EMPLOYER_ADDRESS_2 : $CHAR80.*/
/*			        EMPLOYER_CITY    : $CHAR80.*/
/*			        EMPLOYER_STATE   : $CHAR80.*/
/*			        EMPLOYER_ZIP     : $CHAR80.*/
/*			        EMPLOYER_PHONE   : $CHAR80.*/
/*			        SALARY           : $CHAR80.*/
/*			        PAY_BASIS        : $CHAR80.*/
/*			        EMPLOYMENT_START_DATE : $CHAR80.*/
/*			        EMPLOYMENT_END_DATE : $CHAR80.;*/
			RUN;
			%END;

%MEND;