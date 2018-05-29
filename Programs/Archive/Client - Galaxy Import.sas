/*DATA &CLIENT_NAME._&TOTALCOUNTER.;*/
DATA TEST;
    LENGTH
        ISSUER_ACCOUNT_NUMBER   $ 50
        ISSUER_NAME      $ 50
        PRINCIPAL          $ 50
        INTEREST           $ 50
        MISC_FEES          $ 50
        OTHER_CHARGES      $ 50
        TOTAL_DUE          $ 50
        CLIENT_ACCOUNT_NUMBER   $ 50
        DEBTOR_NUMBER      $ 50
        ACQUISITION_BALANCE $  50
        CHARGE_OFF_DATE    $ 50
        CHARGE_OFF_BALANCE $ 50
        LAST_PAYMENT_DATE $ 50
        LAST_PAYMENT_AMOUNT   $ 50
        ACCOUNT_OPEN_DATE   $ 50
        OCCURENCE_DATE   $ 50
        ORIG_PHONE         $ 50
        ORIG_ADDRESS1    $ 50
        ORIG_ADDRESS2    $ 50
        ORIG_CITY        $ 50
        ORIG_STATE       $ 50
        ORIG_ZIPCODE       $ 50
        ORIGINAL_PRODUCT $ 50
        SSN_NationalID_    $ 50
        BIRTHDAY           $ 50
        FIRSTNAME_GivenName_ $ 50
        MIDDLENAME       $ 50
        LASTNAME         $ 50
        Name             $ 50
        ALIAS            $ 50
        GENDER           $ 50
        ADDRESS1_StreetAddress_ $ 50
        ADDRESS2         $ 50
        CITY             $ 50
        STATE            $ 50
        ZIPCODE            $ 50
        HOME_PHONE         $ 50
        PHONE1_LINE_TYPE $ 50
        HOME_PHONE1      $ 50
        PHONE2_LINE_TYPE $ 50
        B_CELL_PHONE     $ 50
        B_WORK_PHONE       $ 50
        BWORK_LINE_TYPE  $ 50
        B_REF_PHONE1     $ 50
        BREF1_LINE_TYPE  $ 50
        BREF1_NAME_SOURCE $ 50
        BREF1_NOTE       $ 50
        B_REF_PHONE2     $ 50
        BREF2_LINE_TYPE  $ 50
        BREF2_NAME_SOURCE $ 50
        BREF2_NOTE       $ 50
        B_REF_PHONE3     $ 50
        BREF3_LINE_TYPE  $ 50
        BREF3_NAME_SOURCE $ 50
        UNKNOWN_PHONE    $ 50
        UNKNOWN_PHONE_LINE_TYPE $ 50
        EMAILADDRESS     $ 50
        IS_HOMEOWNER     $ 50
        BEHAVIOR_SCORE   $ 50
        TOTAL_PAID_SINCE_CO $ 50
        CHARGEOFFAMOUNT    $ 50
        CUSTOMER         $ 50
        EMAIL            $ 50
        ENTITY           $ 50
        LOANAMT            $ 50
        LOANPURPOSE      $ 50
        LOANTERM           $ 50
        ORIGINALCREDITORADDRESS $ 50
        RECEIVED           $ 50
        S_NAME           $ 50
        S_SSN            $ 50
        S_DEBTOR_NUMBER  $ 50
        S_STREET1        $ 50
        S_STREET2        $ 50
        S_CITY           $ 50
        S_STATE          $ 50
        S_ZIPCODE        $ 50 ;
    LABEL
        SSN_NationalID_  = "SSN(NationalID)"
        FIRSTNAME_GivenName_ = "FIRSTNAME(GivenName)"
        ADDRESS1_StreetAddress_ = "ADDRESS1(StreetAddress)" ;
    FORMAT
        ISSUER_ACCOUNT_NUMBER $CHAR50.
        ISSUER_NAME      $CHAR50.
        PRINCIPAL        $CHAR50.
        INTEREST         $CHAR50.
        MISC_FEES        $CHAR50.
        OTHER_CHARGES    $CHAR50.
        TOTAL_DUE        $CHAR50.
        CLIENT_ACCOUNT_NUMBER $CHAR50.
        DEBTOR_NUMBER    $CHAR50.
        ACQUISITION_BALANCE $CHAR50.
        CHARGE_OFF_DATE  $CHAR50.
        CHARGE_OFF_BALANCE $CHAR50.
        LAST_PAYMENT_DATE $CHAR50.
        LAST_PAYMENT_AMOUNT $CHAR50.
        ACCOUNT_OPEN_DATE $CHAR50.
        OCCURENCE_DATE   $CHAR50.
        ORIG_PHONE       $CHAR50.
        ORIG_ADDRESS1    $CHAR50.
        ORIG_ADDRESS2    $CHAR50.
        ORIG_CITY        $CHAR50.
        ORIG_STATE       $CHAR50.
        ORIG_ZIPCODE     $CHAR50.
        ORIGINAL_PRODUCT $CHAR50.
        SSN_NationalID_  $CHAR50.
        BIRTHDAY         $CHAR50.
        FIRSTNAME_GivenName_ $CHAR50.
        MIDDLENAME       $CHAR50.
        LASTNAME         $CHAR50.
        Name             $CHAR50.
        ALIAS            $CHAR50.
        GENDER           $CHAR50.
        ADDRESS1_StreetAddress_ $CHAR50.
        ADDRESS2         $CHAR50.
        CITY             $CHAR50.
        STATE            $CHAR50.
        ZIPCODE          $CHAR50.
        HOME_PHONE       $CHAR50.
        PHONE1_LINE_TYPE $CHAR50.
        HOME_PHONE1      $CHAR50.
        PHONE2_LINE_TYPE $CHAR50.
        B_CELL_PHONE     $CHAR50.
        B_WORK_PHONE     $CHAR50.
        BWORK_LINE_TYPE  $CHAR50.
        B_REF_PHONE1     $CHAR50.
        BREF1_LINE_TYPE  $CHAR50.
        BREF1_NAME_SOURCE $CHAR50.
        BREF1_NOTE       $CHAR50.
        B_REF_PHONE2     $CHAR50.
        BREF2_LINE_TYPE  $CHAR50.
        BREF2_NAME_SOURCE $CHAR50.
        BREF2_NOTE       $CHAR50.
        B_REF_PHONE3     $CHAR50.
        BREF3_LINE_TYPE  $CHAR50.
        BREF3_NAME_SOURCE $CHAR50.
        UNKNOWN_PHONE    $CHAR50.
        UNKNOWN_PHONE_LINE_TYPE $CHAR50.
        EMAILADDRESS     $CHAR50.
        IS_HOMEOWNER     $CHAR50.
        BEHAVIOR_SCORE   $CHAR50.
        TOTAL_PAID_SINCE_CO $CHAR50.
        CHARGEOFFAMOUNT  $CHAR50.
        CUSTOMER         $CHAR50.
        EMAIL            $CHAR50.
        ENTITY           $CHAR50.
        LOANAMT          $CHAR50.
        LOANPURPOSE      $CHAR50.
        LOANTERM         $CHAR50.
        ORIGINALCREDITORADDRESS $CHAR50.
        RECEIVED         $CHAR50.
        S_NAME           $CHAR50.
        S_SSN            $CHAR50.
        S_DEBTOR_NUMBER  $CHAR50.
        S_STREET1        $CHAR50.
        S_STREET2        $CHAR50.
        S_CITY           $CHAR50.
        S_STATE          $CHAR50.
        S_ZIPCODE        $CHAR50. ;
    INFORMAT
 		ISSUER_ACCOUNT_NUMBER $CHAR50.
        ISSUER_NAME      $CHAR50.
        PRINCIPAL        $CHAR50.
        INTEREST         $CHAR50.
        MISC_FEES        $CHAR50.
        OTHER_CHARGES    $CHAR50.
        TOTAL_DUE        $CHAR50.
        CLIENT_ACCOUNT_NUMBER $CHAR50.
        DEBTOR_NUMBER    $CHAR50.
        ACQUISITION_BALANCE $CHAR50.
        CHARGE_OFF_DATE  $CHAR50.
        CHARGE_OFF_BALANCE $CHAR50.
        LAST_PAYMENT_DATE $CHAR50.
        LAST_PAYMENT_AMOUNT $CHAR50.
        ACCOUNT_OPEN_DATE $CHAR50.
        OCCURENCE_DATE   $CHAR50.
        ORIG_PHONE       $CHAR50.
        ORIG_ADDRESS1    $CHAR50.
        ORIG_ADDRESS2    $CHAR50.
        ORIG_CITY        $CHAR50.
        ORIG_STATE       $CHAR50.
        ORIG_ZIPCODE     $CHAR50.
        ORIGINAL_PRODUCT $CHAR50.
        SSN_NationalID_  $CHAR50.
        BIRTHDAY         $CHAR50.
        FIRSTNAME_GivenName_ $CHAR50.
        MIDDLENAME       $CHAR50.
        LASTNAME         $CHAR50.
        Name             $CHAR50.
        ALIAS            $CHAR50.
        GENDER           $CHAR50.
        ADDRESS1_StreetAddress_ $CHAR50.
        ADDRESS2         $CHAR50.
        CITY             $CHAR50.
        STATE            $CHAR50.
        ZIPCODE          $CHAR50.
        HOME_PHONE       $CHAR50.
        PHONE1_LINE_TYPE $CHAR50.
        HOME_PHONE1      $CHAR50.
        PHONE2_LINE_TYPE $CHAR50.
        B_CELL_PHONE     $CHAR50.
        B_WORK_PHONE     $CHAR50.
        BWORK_LINE_TYPE  $CHAR50.
        B_REF_PHONE1     $CHAR50.
        BREF1_LINE_TYPE  $CHAR50.
        BREF1_NAME_SOURCE $CHAR50.
        BREF1_NOTE       $CHAR50.
        B_REF_PHONE2     $CHAR50.
        BREF2_LINE_TYPE  $CHAR50.
        BREF2_NAME_SOURCE $CHAR50.
        BREF2_NOTE       $CHAR50.
        B_REF_PHONE3     $CHAR50.
        BREF3_LINE_TYPE  $CHAR50.
        BREF3_NAME_SOURCE $CHAR50.
        UNKNOWN_PHONE    $CHAR50.
        UNKNOWN_PHONE_LINE_TYPE $CHAR50.
        EMAILADDRESS     $CHAR50.
        IS_HOMEOWNER     $CHAR50.
        BEHAVIOR_SCORE   $CHAR50.
        TOTAL_PAID_SINCE_CO $CHAR50.
        CHARGEOFFAMOUNT  $CHAR50.
        CUSTOMER         $CHAR50.
        EMAIL            $CHAR50.
        ENTITY           $CHAR50.
        LOANAMT          $CHAR50.
        LOANPURPOSE      $CHAR50.
        LOANTERM         $CHAR50.
        ORIGINALCREDITORADDRESS $CHAR50.
        RECEIVED         $CHAR50.
        S_NAME           $CHAR50.
        S_SSN            $CHAR50.
        S_DEBTOR_NUMBER  $CHAR50.
        S_STREET1        $CHAR50.
        S_STREET2        $CHAR50.
        S_CITY           $CHAR50.
        S_STATE          $CHAR50.
        S_ZIPCODE        $CHAR50. ;
	    INFILE "E:\SHARED\CADA\SAS SOURCE CODE\DEVELOPMENT\JHUBBARD\EBG\1_PORTFOLIO_FILE_STANDARDIZATION\ENVIRONMENT\DEBT SELLERS\IMPORTS\Galaxy_Auto1.dlm"
		DLM='|'
        MISSOVER
        DSD
		FIRSTOBS=2;
    INPUT
 		ISSUER_ACCOUNT_NUMBER : $CHAR50.
        ISSUER_NAME      : $CHAR50.
        PRINCIPAL        : $CHAR50.
        INTEREST         : $CHAR50.
        MISC_FEES        : $CHAR50.
        OTHER_CHARGES    : $CHAR50.
        TOTAL_DUE        : $CHAR50.
        CLIENT_ACCOUNT_NUMBER : $CHAR50.
        DEBTOR_NUMBER     : $CHAR50.
        ACQUISITION_BALANCE : $CHAR50.
        CHARGE_OFF_DATE  : $CHAR50.
        CHARGE_OFF_BALANCE : $CHAR50.
        LAST_PAYMENT_DATE : $CHAR50.
        LAST_PAYMENT_AMOUNT : $CHAR50.
        ACCOUNT_OPEN_DATE : $CHAR50.
        OCCURENCE_DATE   : $CHAR50.
        ORIG_PHONE       : $CHAR50.
        ORIG_ADDRESS1    : $CHAR50.
        ORIG_ADDRESS2    : $CHAR50.
        ORIG_CITY        : $CHAR50.
        ORIG_STATE       : $CHAR50.
        ORIG_ZIPCODE     : $CHAR50.
        ORIGINAL_PRODUCT : $CHAR50.
        SSN_NationalID_  : $CHAR50.
        BIRTHDAY         : $CHAR50.
        FIRSTNAME_GivenName_ : $CHAR50.
        MIDDLENAME       : $CHAR50.
        LASTNAME         : $CHAR50.
        Name             : $CHAR50.
        ALIAS            : $CHAR50.
        GENDER           : $CHAR50.
        ADDRESS1_StreetAddress_ : $CHAR50.
        ADDRESS2         : $CHAR50.
        CITY             : $CHAR50.
        STATE            : $CHAR50.
        ZIPCODE          : $CHAR50.
        HOME_PHONE       : $CHAR50.
        PHONE1_LINE_TYPE : $CHAR50.
        HOME_PHONE1      : $CHAR50.
        PHONE2_LINE_TYPE : $CHAR50.
        B_CELL_PHONE     : $CHAR50.
        B_WORK_PHONE     : $CHAR50.
        BWORK_LINE_TYPE  : $CHAR50.
        B_REF_PHONE1     : $CHAR50.
        BREF1_LINE_TYPE  : $CHAR50.
        BREF1_NAME_SOURCE : $CHAR50.
        BREF1_NOTE       : $CHAR50.
        B_REF_PHONE2     : $CHAR50.
        BREF2_LINE_TYPE  : $CHAR50.
        BREF2_NAME_SOURCE : $CHAR50.
        BREF2_NOTE       : $CHAR50.
        B_REF_PHONE3     : $CHAR50.
        BREF3_LINE_TYPE  : $CHAR50.
        BREF3_NAME_SOURCE : $CHAR50.
        UNKNOWN_PHONE    : $CHAR50.
        UNKNOWN_PHONE_LINE_TYPE : $CHAR50.
        EMAILADDRESS     : $CHAR50.
        IS_HOMEOWNER     : $CHAR50.
        BEHAVIOR_SCORE   : $CHAR50.
        TOTAL_PAID_SINCE_CO : $CHAR50.
        CHARGEOFFAMOUNT  : $CHAR50.
        CUSTOMER         : $CHAR50.
        EMAIL            : $CHAR50.
        ENTITY           : $CHAR50.
        LOANAMT          : $CHAR50.
        LOANPURPOSE      : $CHAR50.
        LOANTERM         : $CHAR50.
        ORIGINALCREDITORADDRESS : $CHAR50.
        RECEIVED         : $CHAR50.
        S_NAME           : $CHAR50.
        S_SSN            : $CHAR50.
        S_DEBTOR_NUMBER  : $CHAR50.
        S_STREET1        : $CHAR50.
        S_STREET2        : $CHAR50.
        S_CITY           : $CHAR50.
        S_STATE          : $CHAR50.
        S_ZIPCODE        : $CHAR50. ;
RUN;
