%MACRO BEAM_IMPORT();

		%IF &TOTAL_COUNTER_USE.= 1   %THEN 
			%DO;

				DATA BEAM_ACCT_EXTRACT;
				    LENGTH
				        ACCOUNTID        $ 30
				        ISSUERNAME       $ 100
				        ISSUERACCOUNTNUMBER $ 30
				        SELLERACCOUNTNUMBER $ 30
				        PORTFOLIO        $ 30
				        CLIENTACCOUNTID  $ 30
				        OPENAMOUNT       $ 30
				        CODATE           $ 30
				        COAMOUNT         $ 30
				        ISSUERLPDATE     $ 10
				        ISSUERLPAMOUNT   $ 30
				        ACCOUNTOPENDATE  $ 30
				        CONTRACTINTERESTRATE $ 30
				        ORIGPHONE        $ 30
				        ORIGADDRESS1     $ 50
				        ORIGADDRESS2     $ 50
				        ORIGCITY         $ 50
				        ORIGSTATE        $ 2
				        ORIGZIPPOSTAL    $ 5
				        ORIGPRODUCT      $ 30
				        ACCOUNTTYPE      $ 30
				        CURBALANCE       $ 30
				        ACQUISITIONBALANCE $ 30
				        DELINQUENCYDATE  $ 30
				        ALTERNATIVEDATEOFDELINQUENCY $ 30
				        SCHEDULEDREPORTDATE $ 30
				        DELETIONDATE     $ 30
				        TOTALPAYMENTS    $ 30
				        LASTPAYDATE      $ 10
				        LASTPAYAMOUNT    $ 30
				        TOTAL_PAID_SINCE_CHARGED_OFF $ 30
				        INBEAMNAME       $ 30
				        OUTBEAMNAME      $ 30
				        QUEUENAME        $ 30
				        AGENCY_DEBTBUYER $ 30
				        STATUS           $ 30
				        FLEXTAG          $ 30
				        RATING           $ 30
				        RESTRICTION      $ 30
				        PFNAME           $ 30
				        PMIDDLE          $ 30
				        PLNAME           $ 30
				        PSSN_SIN         $ 30
				        PBIRTHDATE       $ 30
				        PEMAIL           $ 100
				        SFNAME           $ 30
				        SMIDDLE          $ 30
				        SLNAME           $ 30
				        SSSN_SIN         $ 30
				        SBIRTHDATE       $ 30
				        SEMAIL           $ 30
				        _1STADDRESSTYPE  $ 50
				        _1STADDRESS1     $ 50
				        _1STADDRESS2     $ 50
				        _1STCITY         $ 50
				        _1STSTATE        $ 2
				        _1STZIPPOSTAL    $ 5
				        _2NDADDRESSTYPE  $ 50
				        _2NDADDRESS1     $ 50
				        _2NDADDRESS2     $ 50
				        _2NDCITY         $ 50
				        _2NDSTATE        $ 2
				        _2NDZIPPOSTAL    $ 5
				        _3RDADDRESSTYPE  $ 50
				        _3RDADDRESS1     $ 50
				        _3RDADDRESS2     $ 50
				        _3RDCITY         $ 50
				        _3RDSTATE        $ 2
				        _3RDZIPPOSTAL    $ 5
				        _4THADDRESSTYPE  $ 50
				        _4THADDRESS1     $ 50
				        _4THADDRESS2     $ 50
				        _4THCITY         $ 50
				        _4THSTATE        $ 2
				        _4THZIPPOSTAL    $ 5
				        _5THADDRESSTYPE  $ 50
				        _5THADDRESS1     $ 50
				        _5THADDRESS2     $ 50
				        _5THCITY         $ 50
				        _5THSTATE        $ 2
				        _5THZIPPOSTAL    $ 5
				        _1STPHONETYPE    $ 30
				        _1STLINETYPE     $ 30
				        _1STPHONE        $ 30
				        _1STPHONESOURCE  $ 30
				        _1STPHONENOTE    $ 100
				        _1STPHONESTATUS  $ 30
				        _2NDPHONETYPE    $ 30
				        _2NDLINETYPE     $ 30
				        _2NDPHONE        $ 30
				        _2NDPHONESOURCE  $ 30
				        _2NDPHONENOTE    $ 100
				        _2NDPHONESTATUS  $ 30
				        _3RDPHONETYPE    $ 30
				        _3RDLINETYPE     $ 30
				        _3RDPHONE        $ 30
				        _3RDPHONESOURCE  $ 30
				        _3RDPHONENOTE    $ 100
				        _3RDPHONESTATUS  $ 30
				        _4THPHONETYPE    $ 30
				        _4THLINETYPE     $ 30
				        _4THPHONE        $ 30
				        _4THPHONESOURCE  $ 30
				        _4THPHONENOTE    $ 100
				        _4THPHONESTATUS  $ 30
				        _5THPHONETYPE    $ 30
				        _5THLINETYPE     $ 30
				        _5THPHONE        $ 30
				        _5THPHONESOURCE  $ 30
				        _5THPHONENOTE    $ 100
				        _5THPHONESTATUS  $ 30
				        _6THPHONETYPE    $ 30
				        _6THLINETYPE     $ 30
				        _6THPHONE        $ 30
				        _6THPHONESOURCE  $ 30
				        _6THPHONENOTE    $ 100
				        _6THPHONESTATUS  $ 30
				        _7THPHONETYPE    $ 30
				        _7THLINETYPE     $ 30
				        _7THPHONE        $ 30
				        _7THPHONESOURCE  $ 30
				        _7THPHONENOTE    $ 100
				        _7THPHONESTATUS  $ 30
				        _8THPHONETYPE    $ 30
				        _8THLINETYPE     $ 30
				        _8THPHONE        $ 30
				        _8THPHONESOURCE  $ 30
				        _8THPHONENOTE    $ 100
				        _8THPHONESTATUS  $ 30
				        _9THPHONETYPE    $ 30
				        _9THLINETYPE     $ 30
				        _9THPHONE        $ 30
				        _9THPHONESOURCE  $ 30
				        _9THPHONENOTE    $ 100
				        _9THPHONESTATUS  $ 30
				        _10THPHONETYPE   $ 30
				        _10THLINETYPE    $ 30
				        _10THPHONE       $ 30
				        _10THPHONESOURCE $ 30
				        _10THPHONENOTE   $ 100
				        _10THPHONESTATUS $ 30
				        EMPLOYER         $ 30
				        OCCUPATION       $ 30
				        EMPLOYER_ADDRESS_1 $ 50
				        EMPLOYER_ADDRESS_2 $ 50
				        EMPLOYER_CITY    $ 30
				        EMPLOYER_STATE   $ 2
				        EMPLOYER_ZIP     $ 5
				        EMPLOYER_PHONE   $ 30
				        SALARY           $ 30
				        PAY_BASIS        $ 30
				        EMPLOYMENT_START_DATE $ 30
				        EMPLOYMENT_END_DATE $ 30
				        COLLATERAL_TYPE  $ 30
				        CURRENT_VALUE    $ 30
				        REFERRAL_AMOUNT  $ 30
				        DESCRIPTION      $ 50
				        OWNER            $ 50
				        ACCOUNTRECEIVEDATE $ 30
				        LOT              $ 30
				        HAS_MEDIA        $ 30
				        PRINCIPAL        $ 30
				        ORIG_ORIGINALCREDITORADDRESS $ 50
				        ORIG_RECEIVED    $ 30
				        ORIG_CUSTOMER    $ 30
				        ORIG_VEH_DEALERCITY $ 30
				        ORIG_VEH_DEALERNAME $ 50
				        ORIG_VEH_DEALERSTATE $ 2
				        ORIG_VEH_DEALERZIP $ 5
				        ORIG_ENTITY      $ 50
				        ORIG_LOANAMT     $ 30
				        ORIG_ACCOUNT_OPEN_DATE $ 30
				        ORIG_LOANPURPOSE $ 30
				        ORIG_LOANTERM    $ 30
				        CP_DEBT_BUYER_ADDRESS__CA_REQUIR $ 50
				        CP_LN_DATA       $ 30
				        SCORE            $ 30;
				    LABEL
				        TOTAL_PAID_SINCE_CHARGED_OFF = "TOTAL PAID SINCE CHARGED-OFF"
				        AGENCY_DEBTBUYER = "AGENCY/DEBTBUYER"
				        _1STADDRESSTYPE  = "1STADDRESSTYPE"
				        _1STADDRESS1     = "1STADDRESS1"
				        _1STADDRESS2     = "1STADDRESS2"
				        _1STCITY         = "1STCITY"
				        _1STSTATE        = "1STSTATE"
				        _1STZIPPOSTAL    = "1STZIPPOSTAL"
				        _2NDADDRESSTYPE  = "2NDADDRESSTYPE"
				        _2NDADDRESS1     = "2NDADDRESS1"
				        _2NDADDRESS2     = "2NDADDRESS2"
				        _2NDCITY         = "2NDCITY"
				        _2NDSTATE        = "2NDSTATE"
				        _2NDZIPPOSTAL    = "2NDZIPPOSTAL"
				        _3RDADDRESSTYPE  = "3RDADDRESSTYPE"
				        _3RDADDRESS1     = "3RDADDRESS1"
				        _3RDADDRESS2     = "3RDADDRESS2"
				        _3RDCITY         = "3RDCITY"
				        _3RDSTATE        = "3RDSTATE"
				        _3RDZIPPOSTAL    = "3RDZIPPOSTAL"
				        _4THADDRESSTYPE  = "4THADDRESSTYPE"
				        _4THADDRESS1     = "4THADDRESS1"
				        _4THADDRESS2     = "4THADDRESS2"
				        _4THCITY         = "4THCITY"
				        _4THSTATE        = "4THSTATE"
				        _4THZIPPOSTAL    = "4THZIPPOSTAL"
				        _5THADDRESSTYPE  = "5THADDRESSTYPE"
				        _5THADDRESS1     = "5THADDRESS1"
				        _5THADDRESS2     = "5THADDRESS2"
				        _5THCITY         = "5THCITY"
				        _5THSTATE        = "5THSTATE"
				        _5THZIPPOSTAL    = "5THZIPPOSTAL"
				        _1STPHONETYPE    = "1STPHONETYPE"
				        _1STLINETYPE     = "1STLINETYPE"
				        _1STPHONE        = "1STPHONE"
				        _1STPHONESOURCE  = "1STPHONESOURCE"
				        _1STPHONENOTE    = "1STPHONENOTE"
				        _1STPHONESTATUS  = "1STPHONESTATUS"
				        _2NDPHONETYPE    = "2NDPHONETYPE"
				        _2NDLINETYPE     = "2NDLINETYPE"
				        _2NDPHONE        = "2NDPHONE"
				        _2NDPHONESOURCE  = "2NDPHONESOURCE"
				        _2NDPHONENOTE    = "2NDPHONENOTE"
				        _2NDPHONESTATUS  = "2NDPHONESTATUS"
				        _3RDPHONETYPE    = "3RDPHONETYPE"
				        _3RDLINETYPE     = "3RDLINETYPE"
				        _3RDPHONE        = "3RDPHONE"
				        _3RDPHONESOURCE  = "3RDPHONESOURCE"
				        _3RDPHONENOTE    = "3RDPHONENOTE"
				        _3RDPHONESTATUS  = "3RDPHONESTATUS"
				        _4THPHONETYPE    = "4THPHONETYPE"
				        _4THLINETYPE     = "4THLINETYPE"
				        _4THPHONE        = "4THPHONE"
				        _4THPHONESOURCE  = "4THPHONESOURCE"
				        _4THPHONENOTE    = "4THPHONENOTE"
				        _4THPHONESTATUS  = "4THPHONESTATUS"
				        _5THPHONETYPE    = "5THPHONETYPE"
				        _5THLINETYPE     = "5THLINETYPE"
				        _5THPHONE        = "5THPHONE"
				        _5THPHONESOURCE  = "5THPHONESOURCE"
				        _5THPHONENOTE    = "5THPHONENOTE"
				        _5THPHONESTATUS  = "5THPHONESTATUS"
				        _6THPHONETYPE    = "6THPHONETYPE"
				        _6THLINETYPE     = "6THLINETYPE"
				        _6THPHONE        = "6THPHONE"
				        _6THPHONESOURCE  = "6THPHONESOURCE"
				        _6THPHONENOTE    = "6THPHONENOTE"
				        _6THPHONESTATUS  = "6THPHONESTATUS"
				        _7THPHONETYPE    = "7THPHONETYPE"
				        _7THLINETYPE     = "7THLINETYPE"
				        _7THPHONE        = "7THPHONE"
				        _7THPHONESOURCE  = "7THPHONESOURCE"
				        _7THPHONENOTE    = "7THPHONENOTE"
				        _7THPHONESTATUS  = "7THPHONESTATUS"
				        _8THPHONETYPE    = "8THPHONETYPE"
				        _8THLINETYPE     = "8THLINETYPE"
				        _8THPHONE        = "8THPHONE"
				        _8THPHONESOURCE  = "8THPHONESOURCE"
				        _8THPHONENOTE    = "8THPHONENOTE"
				        _8THPHONESTATUS  = "8THPHONESTATUS"
				        _9THPHONETYPE    = "9THPHONETYPE"
				        _9THLINETYPE     = "9THLINETYPE"
				        _9THPHONE        = "9THPHONE"
				        _9THPHONESOURCE  = "9THPHONESOURCE"
				        _9THPHONENOTE    = "9THPHONENOTE"
				        _9THPHONESTATUS  = "9THPHONESTATUS"
				        _10THPHONETYPE   = "10THPHONETYPE"
				        _10THLINETYPE    = "10THLINETYPE"
				        _10THPHONE       = "10THPHONE"
				        _10THPHONESOURCE = "10THPHONESOURCE"
				        _10THPHONENOTE   = "10THPHONENOTE"
				        _10THPHONESTATUS = "10THPHONESTATUS"
				        EMPLOYER_ADDRESS_1 = "EMPLOYER ADDRESS 1"
				        EMPLOYER_ADDRESS_2 = "EMPLOYER ADDRESS 2"
				        EMPLOYER_CITY    = "EMPLOYER CITY"
				        EMPLOYER_STATE   = "EMPLOYER STATE"
				        EMPLOYER_ZIP     = "EMPLOYER ZIP"
				        EMPLOYER_PHONE   = "EMPLOYER PHONE"
				        PAY_BASIS        = "PAY BASIS"
				        EMPLOYMENT_START_DATE = "EMPLOYMENT START DATE"
				        EMPLOYMENT_END_DATE = "EMPLOYMENT END DATE"
				        COLLATERAL_TYPE  = "COLLATERAL TYPE"
				        CURRENT_VALUE    = "CURRENT VALUE"
				        REFERRAL_AMOUNT  = "REFERRAL AMOUNT"
				        HAS_MEDIA        = "HAS MEDIA"
				        CP_DEBT_BUYER_ADDRESS__CA_REQUIR = "CP_DEBT BUYER ADDRESS (CA REQUIREMENT)"
				        CP_LN_DATA       = "CP_LN DATA" ;
				    FORMAT
				        ACCOUNTID        $CHAR30.
				        ISSUERNAME       $CHAR100.
				        ISSUERACCOUNTNUMBER $CHAR30.
				        SELLERACCOUNTNUMBER $CHAR30.
				        PORTFOLIO        $CHAR30.
				        CLIENTACCOUNTID  $CHAR30.
				        OPENAMOUNT       $CHAR30.
				        CODATE           $CHAR30.
				        COAMOUNT         $CHAR30.
				        ISSUERLPDATE     $CHAR30.
				        ISSUERLPAMOUNT   $CHAR30.
				        ACCOUNTOPENDATE  $CHAR30.
				        CONTRACTINTERESTRATE $CHAR30.
				        ORIGPHONE        $CHAR30.
				        ORIGADDRESS1     $CHAR50.
				        ORIGADDRESS2     $CHAR50.
				        ORIGCITY         $CHAR50.
				        ORIGSTATE        $CHAR2.
				        ORIGZIPPOSTAL    $CHAR5.
				        ORIGPRODUCT      $CHAR30.
				        ACCOUNTTYPE      $CHAR30.
				        CURBALANCE       $CHAR30.
				        ACQUISITIONBALANCE $CHAR30.
				        DELINQUENCYDATE  $CHAR30.
				        ALTERNATIVEDATEOFDELINQUENCY $CHAR30.
				        SCHEDULEDREPORTDATE $CHAR30.
				        DELETIONDATE     $CHAR30.
				        TOTALPAYMENTS    $CHAR30.
				        LASTPAYDATE      $CHAR30.
				        LASTPAYAMOUNT    $CHAR30.
				        TOTAL_PAID_SINCE_CHARGED_OFF $CHAR30.
				        INBEAMNAME       $CHAR30.
				        OUTBEAMNAME      $CHAR30.
				        QUEUENAME        $CHAR30.
				        AGENCY_DEBTBUYER $CHAR30.
				        STATUS           $CHAR30.
				        FLEXTAG          $CHAR30.
				        RATING           $CHAR30.
				        RESTRICTION      $CHAR30.
				        PFNAME           $CHAR30.
				        PMIDDLE          $CHAR30.
				        PLNAME           $CHAR30.
				        PSSN_SIN         $CHAR30.
				        PBIRTHDATE       $CHAR30.
				        PEMAIL           $CHAR100.
				        SFNAME           $CHAR30.
				        SMIDDLE          $CHAR30.
				        SLNAME           $CHAR30.
				        SSSN_SIN         $CHAR30.
				        SBIRTHDATE       $CHAR30.
				        SEMAIL           $CHAR30.
				        _1STADDRESSTYPE  $CHAR50.
				        _1STADDRESS1     $CHAR50.
				        _1STADDRESS2     $CHAR50.
				        _1STCITY         $CHAR50.
				        _1STSTATE        $CHAR2.
				        _1STZIPPOSTAL    $CHAR5.
				        _2NDADDRESSTYPE  $CHAR50.
				        _2NDADDRESS1     $CHAR50.
				        _2NDADDRESS2     $CHAR50.
				        _2NDCITY         $CHAR50.
				        _2NDSTATE        $CHAR2.
				        _2NDZIPPOSTAL    $CHAR5.
				        _3RDADDRESSTYPE  $CHAR50.
				        _3RDADDRESS1     $CHAR50.
				        _3RDADDRESS2     $CHAR50.
				        _3RDCITY         $CHAR50.
				        _3RDSTATE        $CHAR2.
				        _3RDZIPPOSTAL    $CHAR5.
				        _4THADDRESSTYPE  $CHAR50.
				        _4THADDRESS1     $CHAR50.
				        _4THADDRESS2     $CHAR50.
				        _4THCITY         $CHAR50.
				        _4THSTATE        $CHAR2.
				        _4THZIPPOSTAL    $CHAR5.
				        _5THADDRESSTYPE  $CHAR50.
				        _5THADDRESS1     $CHAR50.
				        _5THADDRESS2     $CHAR50.
				        _5THCITY         $CHAR50.
				        _5THSTATE        $CHAR2.
				        _5THZIPPOSTAL    $CHAR5.
				        _1STPHONETYPE    $CHAR30.
				        _1STLINETYPE     $CHAR30.
				        _1STPHONE        $CHAR30.
				        _1STPHONESOURCE  $CHAR30.
				        _1STPHONENOTE    $CHAR100.
				        _1STPHONESTATUS  $CHAR30.
				        _2NDPHONETYPE    $CHAR30.
				        _2NDLINETYPE     $CHAR30.
				        _2NDPHONE        $CHAR30.
				        _2NDPHONESOURCE  $CHAR30.
				        _2NDPHONENOTE    $CHAR100.
				        _2NDPHONESTATUS  $CHAR30.
				        _3RDPHONETYPE    $CHAR30.
				        _3RDLINETYPE     $CHAR30.
				        _3RDPHONE        $CHAR30.
				        _3RDPHONESOURCE  $CHAR30.
				        _3RDPHONENOTE    $CHAR100.
				        _3RDPHONESTATUS  $CHAR30.
				        _4THPHONETYPE    $CHAR30.
				        _4THLINETYPE     $CHAR30.
				        _4THPHONE        $CHAR30.
				        _4THPHONESOURCE  $CHAR30.
				        _4THPHONENOTE    $CHAR100.
				        _4THPHONESTATUS  $CHAR30.
				        _5THPHONETYPE    $CHAR30.
				        _5THLINETYPE     $CHAR30.
				        _5THPHONE        $CHAR30.
				        _5THPHONESOURCE  $CHAR30.
				        _5THPHONENOTE    $CHAR100.
				        _5THPHONESTATUS  $CHAR30.
				        _6THPHONETYPE    $CHAR30.
				        _6THLINETYPE     $CHAR30.
				        _6THPHONE        $CHAR30.
				        _6THPHONESOURCE  $CHAR30.
				        _6THPHONENOTE    $CHAR100.
				        _6THPHONESTATUS  $CHAR30.
				        _7THPHONETYPE    $CHAR30.
				        _7THLINETYPE     $CHAR30.
				        _7THPHONE        $CHAR30.
				        _7THPHONESOURCE  $CHAR30.
				        _7THPHONENOTE    $CHAR100.
				        _7THPHONESTATUS  $CHAR30.
				        _8THPHONETYPE    $CHAR30.
				        _8THLINETYPE     $CHAR30.
				        _8THPHONE        $CHAR30.
				        _8THPHONESOURCE  $CHAR30.
				        _8THPHONENOTE    $CHAR100.
				        _8THPHONESTATUS  $CHAR30.
				        _9THPHONETYPE    $CHAR30.
				        _9THLINETYPE     $CHAR30.
				        _9THPHONE        $CHAR30.
				        _9THPHONESOURCE  $CHAR30.
				        _9THPHONENOTE    $CHAR100.
				        _9THPHONESTATUS  $CHAR30.
				        _10THPHONETYPE   $CHAR30.
				        _10THLINETYPE    $CHAR30.
				        _10THPHONE       $CHAR30.
				        _10THPHONESOURCE $CHAR30.
				        _10THPHONENOTE   $CHAR100.
				        _10THPHONESTATUS $CHAR30.
				        EMPLOYER         $CHAR30.
				        OCCUPATION       $CHAR30.
				        EMPLOYER_ADDRESS_1 $CHAR50.
				        EMPLOYER_ADDRESS_2 $CHAR50.
				        EMPLOYER_CITY    $CHAR30.
				        EMPLOYER_STATE   $CHAR2.
				        EMPLOYER_ZIP     $CHAR5.
				        EMPLOYER_PHONE   $CHAR30.
				        SALARY           $CHAR30.
				        PAY_BASIS        $CHAR30.
				        EMPLOYMENT_START_DATE $CHAR30.
				        EMPLOYMENT_END_DATE $CHAR30.
				        COLLATERAL_TYPE  $CHAR30.
				        CURRENT_VALUE    $CHAR30.
				        REFERRAL_AMOUNT  $CHAR30.
				        DESCRIPTION      $CHAR50.
				        OWNER            $CHAR50.
				        ACCOUNTRECEIVEDATE $CHAR30.
				        LOT              $CHAR30.
				        HAS_MEDIA        $CHAR30.
				        PRINCIPAL        $CHAR30.
				        ORIG_ORIGINALCREDITORADDRESS $CHAR50.
				        ORIG_RECEIVED    $CHAR30.
				        ORIG_CUSTOMER    $CHAR30.
				        ORIG_VEH_DEALERCITY $CHAR30.
				        ORIG_VEH_DEALERNAME $CHAR50.
				        ORIG_VEH_DEALERSTATE $CHAR2.
				        ORIG_VEH_DEALERZIP $CHAR5.
				        ORIG_ENTITY      $CHAR50.
				        ORIG_LOANAMT     $CHAR30.
				        ORIG_ACCOUNT_OPEN_DATE $CHAR30.
				        ORIG_LOANPURPOSE $CHAR30.
				        ORIG_LOANTERM    $CHAR30.
				        CP_DEBT_BUYER_ADDRESS__CA_REQUIR $CHAR50.
				        CP_LN_DATA       $CHAR30.
				        SCORE            $CHAR30. ;
				    INFORMAT
				        ACCOUNTID        $CHAR30.
				        ISSUERNAME       $CHAR100.
				        ISSUERACCOUNTNUMBER $CHAR30.
				        SELLERACCOUNTNUMBER $CHAR30.
				        PORTFOLIO        $CHAR30.
				        CLIENTACCOUNTID  $CHAR30.
				        OPENAMOUNT       $CHAR30.
				        CODATE           $CHAR30.
				        COAMOUNT         $CHAR30.
				        ISSUERLPDATE     $CHAR30.
				        ISSUERLPAMOUNT   $CHAR30.
				        ACCOUNTOPENDATE  $CHAR30.
				        CONTRACTINTERESTRATE $CHAR30.
				        ORIGPHONE        $CHAR30.
				        ORIGADDRESS1     $CHAR50.
				        ORIGADDRESS2     $CHAR50.
				        ORIGCITY         $CHAR50.
				        ORIGSTATE        $CHAR2.
				        ORIGZIPPOSTAL    $CHAR5.
				        ORIGPRODUCT      $CHAR30.
				        ACCOUNTTYPE      $CHAR30.
				        CURBALANCE       $CHAR30.
				        ACQUISITIONBALANCE $CHAR30.
				        DELINQUENCYDATE  $CHAR30.
				        ALTERNATIVEDATEOFDELINQUENCY $CHAR30.
				        SCHEDULEDREPORTDATE $CHAR30.
				        DELETIONDATE     $CHAR30.
				        TOTALPAYMENTS    $CHAR30.
				        LASTPAYDATE      $CHAR30.
				        LASTPAYAMOUNT    $CHAR30.
				        TOTAL_PAID_SINCE_CHARGED_OFF $CHAR30.
				        INBEAMNAME       $CHAR30.
				        OUTBEAMNAME      $CHAR30.
				        QUEUENAME        $CHAR30.
				        AGENCY_DEBTBUYER $CHAR30.
				        STATUS           $CHAR30.
				        FLEXTAG          $CHAR30.
				        RATING           $CHAR30.
				        RESTRICTION      $CHAR30.
				        PFNAME           $CHAR30.
				        PMIDDLE          $CHAR30.
				        PLNAME           $CHAR30.
				        PSSN_SIN         $CHAR30.
				        PBIRTHDATE       $CHAR30.
				        PEMAIL           $CHAR100.
				        SFNAME           $CHAR30.
				        SMIDDLE          $CHAR30.
				        SLNAME           $CHAR30.
				        SSSN_SIN         $CHAR30.
				        SBIRTHDATE       $CHAR30.
				        SEMAIL           $CHAR30.
				        _1STADDRESSTYPE  $CHAR50.
				        _1STADDRESS1     $CHAR50.
				        _1STADDRESS2     $CHAR50.
				        _1STCITY         $CHAR50.
				        _1STSTATE        $CHAR2.
				        _1STZIPPOSTAL    $CHAR5.
				        _2NDADDRESSTYPE  $CHAR50.
				        _2NDADDRESS1     $CHAR50.
				        _2NDADDRESS2     $CHAR50.
				        _2NDCITY         $CHAR50.
				        _2NDSTATE        $CHAR2.
				        _2NDZIPPOSTAL    $CHAR5.
				        _3RDADDRESSTYPE  $CHAR50.
				        _3RDADDRESS1     $CHAR50.
				        _3RDADDRESS2     $CHAR50.
				        _3RDCITY         $CHAR50.
				        _3RDSTATE        $CHAR2.
				        _3RDZIPPOSTAL    $CHAR5.
				        _4THADDRESSTYPE  $CHAR50.
				        _4THADDRESS1     $CHAR50.
				        _4THADDRESS2     $CHAR50.
				        _4THCITY         $CHAR50.
				        _4THSTATE        $CHAR2.
				        _4THZIPPOSTAL    $CHAR5.
				        _5THADDRESSTYPE  $CHAR50.
				        _5THADDRESS1     $CHAR50.
				        _5THADDRESS2     $CHAR50.
				        _5THCITY         $CHAR50.
				        _5THSTATE        $CHAR2.
				        _5THZIPPOSTAL    $CHAR5.
				        _1STPHONETYPE    $CHAR30.
				        _1STLINETYPE     $CHAR30.
				        _1STPHONE        $CHAR30.
				        _1STPHONESOURCE  $CHAR30.
				        _1STPHONENOTE    $CHAR100.
				        _1STPHONESTATUS  $CHAR30.
				        _2NDPHONETYPE    $CHAR30.
				        _2NDLINETYPE     $CHAR30.
				        _2NDPHONE        $CHAR30.
				        _2NDPHONESOURCE  $CHAR30.
				        _2NDPHONENOTE    $CHAR100.
				        _2NDPHONESTATUS  $CHAR30.
				        _3RDPHONETYPE    $CHAR30.
				        _3RDLINETYPE     $CHAR30.
				        _3RDPHONE        $CHAR30.
				        _3RDPHONESOURCE  $CHAR30.
				        _3RDPHONENOTE    $CHAR100.
				        _3RDPHONESTATUS  $CHAR30.
				        _4THPHONETYPE    $CHAR30.
				        _4THLINETYPE     $CHAR30.
				        _4THPHONE        $CHAR30.
				        _4THPHONESOURCE  $CHAR30.
				        _4THPHONENOTE    $CHAR100.
				        _4THPHONESTATUS  $CHAR30.
				        _5THPHONETYPE    $CHAR30.
				        _5THLINETYPE     $CHAR30.
				        _5THPHONE        $CHAR30.
				        _5THPHONESOURCE  $CHAR30.
				        _5THPHONENOTE    $CHAR100.
				        _5THPHONESTATUS  $CHAR30.
				        _6THPHONETYPE    $CHAR30.
				        _6THLINETYPE     $CHAR30.
				        _6THPHONE        $CHAR30.
				        _6THPHONESOURCE  $CHAR30.
				        _6THPHONENOTE    $CHAR100.
				        _6THPHONESTATUS  $CHAR30.
				        _7THPHONETYPE    $CHAR30.
				        _7THLINETYPE     $CHAR30.
				        _7THPHONE        $CHAR30.
				        _7THPHONESOURCE  $CHAR30.
				        _7THPHONENOTE    $CHAR100.
				        _7THPHONESTATUS  $CHAR30.
				        _8THPHONETYPE    $CHAR30.
				        _8THLINETYPE     $CHAR30.
				        _8THPHONE        $CHAR30.
				        _8THPHONESOURCE  $CHAR30.
				        _8THPHONENOTE    $CHAR100.
				        _8THPHONESTATUS  $CHAR30.
				        _9THPHONETYPE    $CHAR30.
				        _9THLINETYPE     $CHAR30.
				        _9THPHONE        $CHAR30.
				        _9THPHONESOURCE  $CHAR30.
				        _9THPHONENOTE    $CHAR100.
				        _9THPHONESTATUS  $CHAR30.
				        _10THPHONETYPE   $CHAR30.
				        _10THLINETYPE    $CHAR30.
				        _10THPHONE       $CHAR30.
				        _10THPHONESOURCE $CHAR30.
				        _10THPHONENOTE   $CHAR100.
				        _10THPHONESTATUS $CHAR30.
				        EMPLOYER         $CHAR30.
				        OCCUPATION       $CHAR30.
				        EMPLOYER_ADDRESS_1 $CHAR50.
				        EMPLOYER_ADDRESS_2 $CHAR50.
				        EMPLOYER_CITY    $CHAR30.
				        EMPLOYER_STATE   $CHAR2.
				        EMPLOYER_ZIP     $CHAR5.
				        EMPLOYER_PHONE   $CHAR30.
				        SALARY           $CHAR30.
				        PAY_BASIS        $CHAR30.
				        EMPLOYMENT_START_DATE $CHAR30.
				        EMPLOYMENT_END_DATE $CHAR30.
				        COLLATERAL_TYPE  $CHAR30.
				        CURRENT_VALUE    $CHAR30.
				        REFERRAL_AMOUNT  $CHAR30.
				        DESCRIPTION      $CHAR50.
				        OWNER            $CHAR50.
				        ACCOUNTRECEIVEDATE $CHAR30.
				        LOT              $CHAR30.
				        HAS_MEDIA        $CHAR30.
				        PRINCIPAL        $CHAR30.
				        ORIG_ORIGINALCREDITORADDRESS $CHAR50.
				        ORIG_RECEIVED    $CHAR30.
				        ORIG_CUSTOMER    $CHAR30.
				        ORIG_VEH_DEALERCITY $CHAR30.
				        ORIG_VEH_DEALERNAME $CHAR50.
				        ORIG_VEH_DEALERSTATE $CHAR2.
				        ORIG_VEH_DEALERZIP $CHAR5.
				        ORIG_ENTITY      $CHAR50.
				        ORIG_LOANAMT     $CHAR30.
				        ORIG_ACCOUNT_OPEN_DATE $CHAR30.
				        ORIG_LOANPURPOSE $CHAR30.
				        ORIG_LOANTERM    $CHAR30.
				        CP_DEBT_BUYER_ADDRESS__CA_REQUIR $CHAR50.
				        CP_LN_DATA       $CHAR30.
				        SCORE            $CHAR30. ;
/*				    INFILE "E:\SHARED\CADA\SAS SOURCE CODE\DEVELOPMENT\JHUBBARD\EBG\1_PORTFOLIO_FILE_STANDARDIZATION\ENVIRONMENT\BEAM\IMPORTS\PIPPED_BEAM.TXT"*/
					  INFILE "&FILE_USE"
						DLM=','
				        MISSOVER
				        DSD
						FIRSTOBS=2;
				    INPUT
				        ACCOUNTID       : $CHAR30.
				        ISSUERNAME      : $CHAR100.
				        ISSUERACCOUNTNUMBER : $CHAR30.
				        SELLERACCOUNTNUMBER : $CHAR30.
				        PORTFOLIO      :  $CHAR30.
				        CLIENTACCOUNTID : $CHAR30.
				        OPENAMOUNT      : $CHAR30.
				        CODATE          : $CHAR30.
				        COAMOUNT        : $CHAR30.
				        ISSUERLPDATE    : $CHAR30.
				        ISSUERLPAMOUNT  : $CHAR30.
				        ACCOUNTOPENDATE : $CHAR30.
				        CONTRACTINTERESTRATE : $CHAR30.
				        ORIGPHONE       : $CHAR30.
				        ORIGADDRESS1    : $CHAR50.
				        ORIGADDRESS2    : $CHAR50.
				        ORIGCITY        : $CHAR50.
				        ORIGSTATE       : $CHAR2.
				        ORIGZIPPOSTAL   : $CHAR5.
				        ORIGPRODUCT     : $CHAR30.
				        ACCOUNTTYPE     : $CHAR30.
				        CURBALANCE      : $CHAR30.
				        ACQUISITIONBALANCE : $CHAR30.
				        DELINQUENCYDATE  : $CHAR30.
				        ALTERNATIVEDATEOFDELINQUENCY : $CHAR30.
				        SCHEDULEDREPORTDATE : $CHAR30.
				        DELETIONDATE     : $CHAR30.
				        TOTALPAYMENTS   : $CHAR30.
				        LASTPAYDATE     : $CHAR30.
				        LASTPAYAMOUNT   : $CHAR30.
				        TOTAL_PAID_SINCE_CHARGED_OFF : $CHAR30.
				        INBEAMNAME     :  $CHAR30.
				        OUTBEAMNAME    :  $CHAR30.
				        QUEUENAME      :  $CHAR30.
				        AGENCY_DEBTBUYER : $CHAR30.
				        STATUS        :   $CHAR30.
				        FLEXTAG       :   $CHAR30.
				        RATING        :   $CHAR30.
				        RESTRICTION   :   $CHAR30.
				        PFNAME        :   $CHAR30.
				        PMIDDLE       :   $CHAR30.
				        PLNAME        :   $CHAR30.
				        PSSN_SIN      :   $CHAR30.
				        PBIRTHDATE    :   $CHAR30.
				        PEMAIL        :   $CHAR100.
				        SFNAME        :   $CHAR30.
				        SMIDDLE       :   $CHAR30.
				        SLNAME        :   $CHAR30.
				        SSSN_SIN      :   $CHAR30.
				        SBIRTHDATE    :   $CHAR30.
				        SEMAIL        :   $CHAR30.
				        _1STADDRESSTYPE :  $CHAR50.
				        _1STADDRESS1    : $CHAR50.
				        _1STADDRESS2    : $CHAR50.
				        _1STCITY        : $CHAR50.
				        _1STSTATE       : $CHAR2.
				        _1STZIPPOSTAL   : $CHAR5.
				        _2NDADDRESSTYPE : $CHAR50.
				        _2NDADDRESS1    : $CHAR50.
				        _2NDADDRESS2    : $CHAR50.
				        _2NDCITY        : $CHAR50.
				        _2NDSTATE       : $CHAR2.
				        _2NDZIPPOSTAL   : $CHAR5.
				        _3RDADDRESSTYPE : $CHAR50.
				        _3RDADDRESS1    : $CHAR50.
				        _3RDADDRESS2    : $CHAR50.
				        _3RDCITY        : $CHAR50.
				        _3RDSTATE       : $CHAR2.
				        _3RDZIPPOSTAL   : $CHAR5.
				        _4THADDRESSTYPE : $CHAR50.
				        _4THADDRESS1    : $CHAR50.
				        _4THADDRESS2    : $CHAR50.
				        _4THCITY        : $CHAR50.
				        _4THSTATE       : $CHAR2.
				        _4THZIPPOSTAL   : $CHAR5.
				        _5THADDRESSTYPE : $CHAR50.
				        _5THADDRESS1    : $CHAR50.
				        _5THADDRESS2    : $CHAR50.
				        _5THCITY        : $CHAR50.
				        _5THSTATE       : $CHAR2.
				        _5THZIPPOSTAL   : $CHAR5.
				        _1STPHONETYPE   : $CHAR30.
				        _1STLINETYPE    : $CHAR30.
				        _1STPHONE       : $CHAR30.
				        _1STPHONESOURCE : $CHAR30.
				        _1STPHONENOTE   : $CHAR100.
				        _1STPHONESTATUS : $CHAR30.
				        _2NDPHONETYPE   : $CHAR30.
				        _2NDLINETYPE    : $CHAR30.
				        _2NDPHONE       : $CHAR30.
				        _2NDPHONESOURCE : $CHAR30.
				        _2NDPHONENOTE   : $CHAR100.
				        _2NDPHONESTATUS : $CHAR30.
				        _3RDPHONETYPE   : $CHAR30.
				        _3RDLINETYPE    : $CHAR30.
				        _3RDPHONE       : $CHAR30.
				        _3RDPHONESOURCE : $CHAR30.
				        _3RDPHONENOTE   : $CHAR100.
				        _3RDPHONESTATUS : $CHAR30.
				        _4THPHONETYPE   : $CHAR30.
				        _4THLINETYPE    : $CHAR30.
				        _4THPHONE       : $CHAR30.
				        _4THPHONESOURCE : $CHAR30.
				        _4THPHONENOTE   : $CHAR100.
				        _4THPHONESTATUS : $CHAR30.
				        _5THPHONETYPE   : $CHAR30.
				        _5THLINETYPE    : $CHAR30.
				        _5THPHONE       : $CHAR30.
				        _5THPHONESOURCE : $CHAR30.
				        _5THPHONENOTE   : $CHAR100.
				        _5THPHONESTATUS : $CHAR30.
				        _6THPHONETYPE   : $CHAR30.
				        _6THLINETYPE    : $CHAR30.
				        _6THPHONE       : $CHAR30.
				        _6THPHONESOURCE : $CHAR30.
				        _6THPHONENOTE   : $CHAR100.
				        _6THPHONESTATUS : $CHAR30.
				        _7THPHONETYPE   : $CHAR30.
				        _7THLINETYPE    : $CHAR30.
				        _7THPHONE       : $CHAR30.
				        _7THPHONESOURCE : $CHAR30.
				        _7THPHONENOTE   : $CHAR100.
				        _7THPHONESTATUS : $CHAR30.
				        _8THPHONETYPE   : $CHAR30.
				        _8THLINETYPE    : $CHAR30.
				        _8THPHONE       : $CHAR30.
				        _8THPHONESOURCE : $CHAR30.
				        _8THPHONENOTE   : $CHAR100.
				        _8THPHONESTATUS : $CHAR30.
				        _9THPHONETYPE   : $CHAR30.
				        _9THLINETYPE    : $CHAR30.
				        _9THPHONE       : $CHAR30.
				        _9THPHONESOURCE : $CHAR30.
				        _9THPHONENOTE   : $CHAR100.
				        _9THPHONESTATUS : $CHAR30.
				        _10THPHONETYPE  : $CHAR30.
				        _10THLINETYPE   : $CHAR30.
				        _10THPHONE      : $CHAR30.
				        _10THPHONESOURCE : $CHAR30.
				        _10THPHONENOTE   : $CHAR100.
				        _10THPHONESTATUS : $CHAR30.
				        EMPLOYER         : $CHAR30.
				        OCCUPATION       : $CHAR30.
				        EMPLOYER_ADDRESS_1 : $CHAR50.
				        EMPLOYER_ADDRESS_2 : $CHAR50.
				        EMPLOYER_CITY    : $CHAR30.
				        EMPLOYER_STATE   : $CHAR2.
				        EMPLOYER_ZIP     : $CHAR5.
				        EMPLOYER_PHONE   : $CHAR30.
				        SALARY           : $CHAR30.
				        PAY_BASIS        : $CHAR30.
				        EMPLOYMENT_START_DATE : $CHAR30.
				        EMPLOYMENT_END_DATE : $CHAR30.
				        COLLATERAL_TYPE : $CHAR30.
				        CURRENT_VALUE   : $CHAR30.
				        REFERRAL_AMOUNT : $CHAR30.
				        DESCRIPTION     : $CHAR50.
				        OWNER           : $CHAR50.
				        ACCOUNTRECEIVEDATE : $CHAR30.
				        LOT            :  $CHAR30.
				        HAS_MEDIA      :  $CHAR30.
				        PRINCIPAL      :  $CHAR30.
				        ORIG_ORIGINALCREDITORADDRESS : $CHAR50.
				        ORIG_RECEIVED   :  $CHAR30.
				        ORIG_CUSTOMER   :  $CHAR30.
				        ORIG_VEH_DEALERCITY : $CHAR30.
				        ORIG_VEH_DEALERNAME : $CHAR50.
				        ORIG_VEH_DEALERSTATE : $CHAR2.
				        ORIG_VEH_DEALERZIP : $CHAR5.
				        ORIG_ENTITY     : $CHAR50.
				        ORIG_LOANAMT    : $CHAR30.
				        ORIG_ACCOUNT_OPEN_DATE : $CHAR30.
				        ORIG_LOANPURPOSE : $CHAR30.
				        ORIG_LOANTERM    : $CHAR30.
				        CP_DEBT_BUYER_ADDRESS__CA_REQUIR : $CHAR50.
				        CP_LN_DATA    :  $CHAR30.
				        SCORE         :   $CHAR30. ;
				RUN;
			%END;

	%ELSE %IF &TOTAL_COUNTER_USE.= 1  %THEN 
		%DO;

				DATA BEAM_ACCOUNT_EXTRACT_&TOTAL_COUNTER.;
				    LENGTH
				        ACCOUNTID        $ 30
				        ISSUERNAME       $ 100
				        ISSUERACCOUNTNUMBER $ 30
				        SELLERACCOUNTNUMBER $ 30
				        PORTFOLIO        $ 30
				        CLIENTACCOUNTID  $ 30
				        OPENAMOUNT       $ 30
				        CODATE           $ 30
				        COAMOUNT         $ 30
				        ISSUERLPDATE     $ 10
				        ISSUERLPAMOUNT   $ 30
				        ACCOUNTOPENDATE  $ 30
				        CONTRACTINTERESTRATE $ 30
				        ORIGPHONE        $ 30
				        ORIGADDRESS1     $ 50
				        ORIGADDRESS2     $ 50
				        ORIGCITY         $ 50
				        ORIGSTATE        $ 2
				        ORIGZIPPOSTAL    $ 5
				        ORIGPRODUCT      $ 30
				        ACCOUNTTYPE      $ 30
				        CURBALANCE       $ 30
				        ACQUISITIONBALANCE $ 30
				        DELINQUENCYDATE  $ 30
				        ALTERNATIVEDATEOFDELINQUENCY $ 30
				        SCHEDULEDREPORTDATE $ 30
				        DELETIONDATE     $ 30
				        TOTALPAYMENTS    $ 30
				        LASTPAYDATE      $ 10
				        LASTPAYAMOUNT    $ 30
				        TOTAL_PAID_SINCE_CHARGED_OFF $ 30
				        INBEAMNAME       $ 30
				        OUTBEAMNAME      $ 30
				        QUEUENAME        $ 30
				        AGENCY_DEBTBUYER $ 30
				        STATUS           $ 30
				        FLEXTAG          $ 30
				        RATING           $ 30
				        RESTRICTION      $ 30
				        PFNAME           $ 30
				        PMIDDLE          $ 30
				        PLNAME           $ 30
				        PSSN_SIN         $ 30
				        PBIRTHDATE       $ 30
				        PEMAIL           $ 100
				        SFNAME           $ 30
				        SMIDDLE          $ 30
				        SLNAME           $ 30
				        SSSN_SIN         $ 30
				        SBIRTHDATE       $ 30
				        SEMAIL           $ 30
				        _1STADDRESSTYPE  $ 50
				        _1STADDRESS1     $ 50
				        _1STADDRESS2     $ 50
				        _1STCITY         $ 50
				        _1STSTATE        $ 2
				        _1STZIPPOSTAL    $ 5
				        _2NDADDRESSTYPE  $ 50
				        _2NDADDRESS1     $ 50
				        _2NDADDRESS2     $ 50
				        _2NDCITY         $ 50
				        _2NDSTATE        $ 2
				        _2NDZIPPOSTAL    $ 5
				        _3RDADDRESSTYPE  $ 50
				        _3RDADDRESS1     $ 50
				        _3RDADDRESS2     $ 50
				        _3RDCITY         $ 50
				        _3RDSTATE        $ 2
				        _3RDZIPPOSTAL    $ 5
				        _4THADDRESSTYPE  $ 50
				        _4THADDRESS1     $ 50
				        _4THADDRESS2     $ 50
				        _4THCITY         $ 50
				        _4THSTATE        $ 2
				        _4THZIPPOSTAL    $ 5
				        _5THADDRESSTYPE  $ 50
				        _5THADDRESS1     $ 50
				        _5THADDRESS2     $ 50
				        _5THCITY         $ 50
				        _5THSTATE        $ 2
				        _5THZIPPOSTAL    $ 5
				        _1STPHONETYPE    $ 30
				        _1STLINETYPE     $ 30
				        _1STPHONE        $ 30
				        _1STPHONESOURCE  $ 30
				        _1STPHONENOTE    $ 100
				        _1STPHONESTATUS  $ 30
				        _2NDPHONETYPE    $ 30
				        _2NDLINETYPE     $ 30
				        _2NDPHONE        $ 30
				        _2NDPHONESOURCE  $ 30
				        _2NDPHONENOTE    $ 100
				        _2NDPHONESTATUS  $ 30
				        _3RDPHONETYPE    $ 30
				        _3RDLINETYPE     $ 30
				        _3RDPHONE        $ 30
				        _3RDPHONESOURCE  $ 30
				        _3RDPHONENOTE    $ 100
				        _3RDPHONESTATUS  $ 30
				        _4THPHONETYPE    $ 30
				        _4THLINETYPE     $ 30
				        _4THPHONE        $ 30
				        _4THPHONESOURCE  $ 30
				        _4THPHONENOTE    $ 100
				        _4THPHONESTATUS  $ 30
				        _5THPHONETYPE    $ 30
				        _5THLINETYPE     $ 30
				        _5THPHONE        $ 30
				        _5THPHONESOURCE  $ 30
				        _5THPHONENOTE    $ 100
				        _5THPHONESTATUS  $ 30
				        _6THPHONETYPE    $ 30
				        _6THLINETYPE     $ 30
				        _6THPHONE        $ 30
				        _6THPHONESOURCE  $ 30
				        _6THPHONENOTE    $ 100
				        _6THPHONESTATUS  $ 30
				        _7THPHONETYPE    $ 30
				        _7THLINETYPE     $ 30
				        _7THPHONE        $ 30
				        _7THPHONESOURCE  $ 30
				        _7THPHONENOTE    $ 100
				        _7THPHONESTATUS  $ 30
				        _8THPHONETYPE    $ 30
				        _8THLINETYPE     $ 30
				        _8THPHONE        $ 30
				        _8THPHONESOURCE  $ 30
				        _8THPHONENOTE    $ 100
				        _8THPHONESTATUS  $ 30
				        _9THPHONETYPE    $ 30
				        _9THLINETYPE     $ 30
				        _9THPHONE        $ 30
				        _9THPHONESOURCE  $ 30
				        _9THPHONENOTE    $ 100
				        _9THPHONESTATUS  $ 30
				        _10THPHONETYPE   $ 30
				        _10THLINETYPE    $ 30
				        _10THPHONE       $ 30
				        _10THPHONESOURCE $ 30
				        _10THPHONENOTE   $ 100
				        _10THPHONESTATUS $ 30
				        EMPLOYER         $ 30
				        OCCUPATION       $ 30
				        EMPLOYER_ADDRESS_1 $ 50
				        EMPLOYER_ADDRESS_2 $ 50
				        EMPLOYER_CITY    $ 30
				        EMPLOYER_STATE   $ 2
				        EMPLOYER_ZIP     $ 5
				        EMPLOYER_PHONE   $ 30
				        SALARY           $ 30
				        PAY_BASIS        $ 30
				        EMPLOYMENT_START_DATE $ 30
				        EMPLOYMENT_END_DATE $ 30
				        COLLATERAL_TYPE  $ 30
				        CURRENT_VALUE    $ 30
				        REFERRAL_AMOUNT  $ 30
				        DESCRIPTION      $ 50
				        OWNER            $ 50
				        ACCOUNTRECEIVEDATE $ 30
				        LOT              $ 30
				        HAS_MEDIA        $ 30
				        PRINCIPAL        $ 30
				        ORIG_ORIGINALCREDITORADDRESS $ 50
				        ORIG_RECEIVED    $ 30
				        ORIG_CUSTOMER    $ 30
				        ORIG_VEH_DEALERCITY $ 30
				        ORIG_VEH_DEALERNAME $ 50
				        ORIG_VEH_DEALERSTATE $ 2
				        ORIG_VEH_DEALERZIP $ 5
				        ORIG_ENTITY      $ 50
				        ORIG_LOANAMT     $ 30
				        ORIG_ACCOUNT_OPEN_DATE $ 30
				        ORIG_LOANPURPOSE $ 30
				        ORIG_LOANTERM    $ 30
				        CP_DEBT_BUYER_ADDRESS__CA_REQUIR $ 50
				        CP_LN_DATA       $ 30
				        SCORE            $ 30;
				    LABEL
				        TOTAL_PAID_SINCE_CHARGED_OFF = "TOTAL PAID SINCE CHARGED-OFF"
				        AGENCY_DEBTBUYER = "AGENCY/DEBTBUYER"
				        _1STADDRESSTYPE  = "1STADDRESSTYPE"
				        _1STADDRESS1     = "1STADDRESS1"
				        _1STADDRESS2     = "1STADDRESS2"
				        _1STCITY         = "1STCITY"
				        _1STSTATE        = "1STSTATE"
				        _1STZIPPOSTAL    = "1STZIPPOSTAL"
				        _2NDADDRESSTYPE  = "2NDADDRESSTYPE"
				        _2NDADDRESS1     = "2NDADDRESS1"
				        _2NDADDRESS2     = "2NDADDRESS2"
				        _2NDCITY         = "2NDCITY"
				        _2NDSTATE        = "2NDSTATE"
				        _2NDZIPPOSTAL    = "2NDZIPPOSTAL"
				        _3RDADDRESSTYPE  = "3RDADDRESSTYPE"
				        _3RDADDRESS1     = "3RDADDRESS1"
				        _3RDADDRESS2     = "3RDADDRESS2"
				        _3RDCITY         = "3RDCITY"
				        _3RDSTATE        = "3RDSTATE"
				        _3RDZIPPOSTAL    = "3RDZIPPOSTAL"
				        _4THADDRESSTYPE  = "4THADDRESSTYPE"
				        _4THADDRESS1     = "4THADDRESS1"
				        _4THADDRESS2     = "4THADDRESS2"
				        _4THCITY         = "4THCITY"
				        _4THSTATE        = "4THSTATE"
				        _4THZIPPOSTAL    = "4THZIPPOSTAL"
				        _5THADDRESSTYPE  = "5THADDRESSTYPE"
				        _5THADDRESS1     = "5THADDRESS1"
				        _5THADDRESS2     = "5THADDRESS2"
				        _5THCITY         = "5THCITY"
				        _5THSTATE        = "5THSTATE"
				        _5THZIPPOSTAL    = "5THZIPPOSTAL"
				        _1STPHONETYPE    = "1STPHONETYPE"
				        _1STLINETYPE     = "1STLINETYPE"
				        _1STPHONE        = "1STPHONE"
				        _1STPHONESOURCE  = "1STPHONESOURCE"
				        _1STPHONENOTE    = "1STPHONENOTE"
				        _1STPHONESTATUS  = "1STPHONESTATUS"
				        _2NDPHONETYPE    = "2NDPHONETYPE"
				        _2NDLINETYPE     = "2NDLINETYPE"
				        _2NDPHONE        = "2NDPHONE"
				        _2NDPHONESOURCE  = "2NDPHONESOURCE"
				        _2NDPHONENOTE    = "2NDPHONENOTE"
				        _2NDPHONESTATUS  = "2NDPHONESTATUS"
				        _3RDPHONETYPE    = "3RDPHONETYPE"
				        _3RDLINETYPE     = "3RDLINETYPE"
				        _3RDPHONE        = "3RDPHONE"
				        _3RDPHONESOURCE  = "3RDPHONESOURCE"
				        _3RDPHONENOTE    = "3RDPHONENOTE"
				        _3RDPHONESTATUS  = "3RDPHONESTATUS"
				        _4THPHONETYPE    = "4THPHONETYPE"
				        _4THLINETYPE     = "4THLINETYPE"
				        _4THPHONE        = "4THPHONE"
				        _4THPHONESOURCE  = "4THPHONESOURCE"
				        _4THPHONENOTE    = "4THPHONENOTE"
				        _4THPHONESTATUS  = "4THPHONESTATUS"
				        _5THPHONETYPE    = "5THPHONETYPE"
				        _5THLINETYPE     = "5THLINETYPE"
				        _5THPHONE        = "5THPHONE"
				        _5THPHONESOURCE  = "5THPHONESOURCE"
				        _5THPHONENOTE    = "5THPHONENOTE"
				        _5THPHONESTATUS  = "5THPHONESTATUS"
				        _6THPHONETYPE    = "6THPHONETYPE"
				        _6THLINETYPE     = "6THLINETYPE"
				        _6THPHONE        = "6THPHONE"
				        _6THPHONESOURCE  = "6THPHONESOURCE"
				        _6THPHONENOTE    = "6THPHONENOTE"
				        _6THPHONESTATUS  = "6THPHONESTATUS"
				        _7THPHONETYPE    = "7THPHONETYPE"
				        _7THLINETYPE     = "7THLINETYPE"
				        _7THPHONE        = "7THPHONE"
				        _7THPHONESOURCE  = "7THPHONESOURCE"
				        _7THPHONENOTE    = "7THPHONENOTE"
				        _7THPHONESTATUS  = "7THPHONESTATUS"
				        _8THPHONETYPE    = "8THPHONETYPE"
				        _8THLINETYPE     = "8THLINETYPE"
				        _8THPHONE        = "8THPHONE"
				        _8THPHONESOURCE  = "8THPHONESOURCE"
				        _8THPHONENOTE    = "8THPHONENOTE"
				        _8THPHONESTATUS  = "8THPHONESTATUS"
				        _9THPHONETYPE    = "9THPHONETYPE"
				        _9THLINETYPE     = "9THLINETYPE"
				        _9THPHONE        = "9THPHONE"
				        _9THPHONESOURCE  = "9THPHONESOURCE"
				        _9THPHONENOTE    = "9THPHONENOTE"
				        _9THPHONESTATUS  = "9THPHONESTATUS"
				        _10THPHONETYPE   = "10THPHONETYPE"
				        _10THLINETYPE    = "10THLINETYPE"
				        _10THPHONE       = "10THPHONE"
				        _10THPHONESOURCE = "10THPHONESOURCE"
				        _10THPHONENOTE   = "10THPHONENOTE"
				        _10THPHONESTATUS = "10THPHONESTATUS"
				        EMPLOYER_ADDRESS_1 = "EMPLOYER ADDRESS 1"
				        EMPLOYER_ADDRESS_2 = "EMPLOYER ADDRESS 2"
				        EMPLOYER_CITY    = "EMPLOYER CITY"
				        EMPLOYER_STATE   = "EMPLOYER STATE"
				        EMPLOYER_ZIP     = "EMPLOYER ZIP"
				        EMPLOYER_PHONE   = "EMPLOYER PHONE"
				        PAY_BASIS        = "PAY BASIS"
				        EMPLOYMENT_START_DATE = "EMPLOYMENT START DATE"
				        EMPLOYMENT_END_DATE = "EMPLOYMENT END DATE"
				        COLLATERAL_TYPE  = "COLLATERAL TYPE"
				        CURRENT_VALUE    = "CURRENT VALUE"
				        REFERRAL_AMOUNT  = "REFERRAL AMOUNT"
				        HAS_MEDIA        = "HAS MEDIA"
				        CP_DEBT_BUYER_ADDRESS__CA_REQUIR = "CP_DEBT BUYER ADDRESS (CA REQUIREMENT)"
				        CP_LN_DATA       = "CP_LN DATA" ;
				    FORMAT
				        ACCOUNTID        $CHAR30.
				        ISSUERNAME       $CHAR100.
				        ISSUERACCOUNTNUMBER $CHAR30.
				        SELLERACCOUNTNUMBER $CHAR30.
				        PORTFOLIO        $CHAR30.
				        CLIENTACCOUNTID  $CHAR30.
				        OPENAMOUNT       $CHAR30.
				        CODATE           $CHAR30.
				        COAMOUNT         $CHAR30.
				        ISSUERLPDATE     $CHAR30.
				        ISSUERLPAMOUNT   $CHAR30.
				        ACCOUNTOPENDATE  $CHAR30.
				        CONTRACTINTERESTRATE $CHAR30.
				        ORIGPHONE        $CHAR30.
				        ORIGADDRESS1     $CHAR50.
				        ORIGADDRESS2     $CHAR50.
				        ORIGCITY         $CHAR50.
				        ORIGSTATE        $CHAR2.
				        ORIGZIPPOSTAL    $CHAR5.
				        ORIGPRODUCT      $CHAR30.
				        ACCOUNTTYPE      $CHAR30.
				        CURBALANCE       $CHAR30.
				        ACQUISITIONBALANCE $CHAR30.
				        DELINQUENCYDATE  $CHAR30.
				        ALTERNATIVEDATEOFDELINQUENCY $CHAR30.
				        SCHEDULEDREPORTDATE $CHAR30.
				        DELETIONDATE     $CHAR30.
				        TOTALPAYMENTS    $CHAR30.
				        LASTPAYDATE      $CHAR30.
				        LASTPAYAMOUNT    $CHAR30.
				        TOTAL_PAID_SINCE_CHARGED_OFF $CHAR30.
				        INBEAMNAME       $CHAR30.
				        OUTBEAMNAME      $CHAR30.
				        QUEUENAME        $CHAR30.
				        AGENCY_DEBTBUYER $CHAR30.
				        STATUS           $CHAR30.
				        FLEXTAG          $CHAR30.
				        RATING           $CHAR30.
				        RESTRICTION      $CHAR30.
				        PFNAME           $CHAR30.
				        PMIDDLE          $CHAR30.
				        PLNAME           $CHAR30.
				        PSSN_SIN         $CHAR30.
				        PBIRTHDATE       $CHAR30.
				        PEMAIL           $CHAR100.
				        SFNAME           $CHAR30.
				        SMIDDLE          $CHAR30.
				        SLNAME           $CHAR30.
				        SSSN_SIN         $CHAR30.
				        SBIRTHDATE       $CHAR30.
				        SEMAIL           $CHAR30.
				        _1STADDRESSTYPE  $CHAR50.
				        _1STADDRESS1     $CHAR50.
				        _1STADDRESS2     $CHAR50.
				        _1STCITY         $CHAR50.
				        _1STSTATE        $CHAR2.
				        _1STZIPPOSTAL    $CHAR5.
				        _2NDADDRESSTYPE  $CHAR50.
				        _2NDADDRESS1     $CHAR50.
				        _2NDADDRESS2     $CHAR50.
				        _2NDCITY         $CHAR50.
				        _2NDSTATE        $CHAR2.
				        _2NDZIPPOSTAL    $CHAR5.
				        _3RDADDRESSTYPE  $CHAR50.
				        _3RDADDRESS1     $CHAR50.
				        _3RDADDRESS2     $CHAR50.
				        _3RDCITY         $CHAR50.
				        _3RDSTATE        $CHAR2.
				        _3RDZIPPOSTAL    $CHAR5.
				        _4THADDRESSTYPE  $CHAR50.
				        _4THADDRESS1     $CHAR50.
				        _4THADDRESS2     $CHAR50.
				        _4THCITY         $CHAR50.
				        _4THSTATE        $CHAR2.
				        _4THZIPPOSTAL    $CHAR5.
				        _5THADDRESSTYPE  $CHAR50.
				        _5THADDRESS1     $CHAR50.
				        _5THADDRESS2     $CHAR50.
				        _5THCITY         $CHAR50.
				        _5THSTATE        $CHAR2.
				        _5THZIPPOSTAL    $CHAR5.
				        _1STPHONETYPE    $CHAR30.
				        _1STLINETYPE     $CHAR30.
				        _1STPHONE        $CHAR30.
				        _1STPHONESOURCE  $CHAR30.
				        _1STPHONENOTE    $CHAR100.
				        _1STPHONESTATUS  $CHAR30.
				        _2NDPHONETYPE    $CHAR30.
				        _2NDLINETYPE     $CHAR30.
				        _2NDPHONE        $CHAR30.
				        _2NDPHONESOURCE  $CHAR30.
				        _2NDPHONENOTE    $CHAR100.
				        _2NDPHONESTATUS  $CHAR30.
				        _3RDPHONETYPE    $CHAR30.
				        _3RDLINETYPE     $CHAR30.
				        _3RDPHONE        $CHAR30.
				        _3RDPHONESOURCE  $CHAR30.
				        _3RDPHONENOTE    $CHAR100.
				        _3RDPHONESTATUS  $CHAR30.
				        _4THPHONETYPE    $CHAR30.
				        _4THLINETYPE     $CHAR30.
				        _4THPHONE        $CHAR30.
				        _4THPHONESOURCE  $CHAR30.
				        _4THPHONENOTE    $CHAR100.
				        _4THPHONESTATUS  $CHAR30.
				        _5THPHONETYPE    $CHAR30.
				        _5THLINETYPE     $CHAR30.
				        _5THPHONE        $CHAR30.
				        _5THPHONESOURCE  $CHAR30.
				        _5THPHONENOTE    $CHAR100.
				        _5THPHONESTATUS  $CHAR30.
				        _6THPHONETYPE    $CHAR30.
				        _6THLINETYPE     $CHAR30.
				        _6THPHONE        $CHAR30.
				        _6THPHONESOURCE  $CHAR30.
				        _6THPHONENOTE    $CHAR100.
				        _6THPHONESTATUS  $CHAR30.
				        _7THPHONETYPE    $CHAR30.
				        _7THLINETYPE     $CHAR30.
				        _7THPHONE        $CHAR30.
				        _7THPHONESOURCE  $CHAR30.
				        _7THPHONENOTE    $CHAR100.
				        _7THPHONESTATUS  $CHAR30.
				        _8THPHONETYPE    $CHAR30.
				        _8THLINETYPE     $CHAR30.
				        _8THPHONE        $CHAR30.
				        _8THPHONESOURCE  $CHAR30.
				        _8THPHONENOTE    $CHAR100.
				        _8THPHONESTATUS  $CHAR30.
				        _9THPHONETYPE    $CHAR30.
				        _9THLINETYPE     $CHAR30.
				        _9THPHONE        $CHAR30.
				        _9THPHONESOURCE  $CHAR30.
				        _9THPHONENOTE    $CHAR100.
				        _9THPHONESTATUS  $CHAR30.
				        _10THPHONETYPE   $CHAR30.
				        _10THLINETYPE    $CHAR30.
				        _10THPHONE       $CHAR30.
				        _10THPHONESOURCE $CHAR30.
				        _10THPHONENOTE   $CHAR100.
				        _10THPHONESTATUS $CHAR30.
				        EMPLOYER         $CHAR30.
				        OCCUPATION       $CHAR30.
				        EMPLOYER_ADDRESS_1 $CHAR50.
				        EMPLOYER_ADDRESS_2 $CHAR50.
				        EMPLOYER_CITY    $CHAR30.
				        EMPLOYER_STATE   $CHAR2.
				        EMPLOYER_ZIP     $CHAR5.
				        EMPLOYER_PHONE   $CHAR30.
				        SALARY           $CHAR30.
				        PAY_BASIS        $CHAR30.
				        EMPLOYMENT_START_DATE $CHAR30.
				        EMPLOYMENT_END_DATE $CHAR30.
				        COLLATERAL_TYPE  $CHAR30.
				        CURRENT_VALUE    $CHAR30.
				        REFERRAL_AMOUNT  $CHAR30.
				        DESCRIPTION      $CHAR50.
				        OWNER            $CHAR50.
				        ACCOUNTRECEIVEDATE $CHAR30.
				        LOT              $CHAR30.
				        HAS_MEDIA        $CHAR30.
				        PRINCIPAL        $CHAR30.
				        ORIG_ORIGINALCREDITORADDRESS $CHAR50.
				        ORIG_RECEIVED    $CHAR30.
				        ORIG_CUSTOMER    $CHAR30.
				        ORIG_VEH_DEALERCITY $CHAR30.
				        ORIG_VEH_DEALERNAME $CHAR50.
				        ORIG_VEH_DEALERSTATE $CHAR2.
				        ORIG_VEH_DEALERZIP $CHAR5.
				        ORIG_ENTITY      $CHAR50.
				        ORIG_LOANAMT     $CHAR30.
				        ORIG_ACCOUNT_OPEN_DATE $CHAR30.
				        ORIG_LOANPURPOSE $CHAR30.
				        ORIG_LOANTERM    $CHAR30.
				        CP_DEBT_BUYER_ADDRESS__CA_REQUIR $CHAR50.
				        CP_LN_DATA       $CHAR30.
				        SCORE            $CHAR30. ;
				    INFORMAT
				        ACCOUNTID        $CHAR30.
				        ISSUERNAME       $CHAR100.
				        ISSUERACCOUNTNUMBER $CHAR30.
				        SELLERACCOUNTNUMBER $CHAR30.
				        PORTFOLIO        $CHAR30.
				        CLIENTACCOUNTID  $CHAR30.
				        OPENAMOUNT       $CHAR30.
				        CODATE           $CHAR30.
				        COAMOUNT         $CHAR30.
				        ISSUERLPDATE     $CHAR30.
				        ISSUERLPAMOUNT   $CHAR30.
				        ACCOUNTOPENDATE  $CHAR30.
				        CONTRACTINTERESTRATE $CHAR30.
				        ORIGPHONE        $CHAR30.
				        ORIGADDRESS1     $CHAR50.
				        ORIGADDRESS2     $CHAR50.
				        ORIGCITY         $CHAR50.
				        ORIGSTATE        $CHAR2.
				        ORIGZIPPOSTAL    $CHAR5.
				        ORIGPRODUCT      $CHAR30.
				        ACCOUNTTYPE      $CHAR30.
				        CURBALANCE       $CHAR30.
				        ACQUISITIONBALANCE $CHAR30.
				        DELINQUENCYDATE  $CHAR30.
				        ALTERNATIVEDATEOFDELINQUENCY $CHAR30.
				        SCHEDULEDREPORTDATE $CHAR30.
				        DELETIONDATE     $CHAR30.
				        TOTALPAYMENTS    $CHAR30.
				        LASTPAYDATE      $CHAR30.
				        LASTPAYAMOUNT    $CHAR30.
				        TOTAL_PAID_SINCE_CHARGED_OFF $CHAR30.
				        INBEAMNAME       $CHAR30.
				        OUTBEAMNAME      $CHAR30.
				        QUEUENAME        $CHAR30.
				        AGENCY_DEBTBUYER $CHAR30.
				        STATUS           $CHAR30.
				        FLEXTAG          $CHAR30.
				        RATING           $CHAR30.
				        RESTRICTION      $CHAR30.
				        PFNAME           $CHAR30.
				        PMIDDLE          $CHAR30.
				        PLNAME           $CHAR30.
				        PSSN_SIN         $CHAR30.
				        PBIRTHDATE       $CHAR30.
				        PEMAIL           $CHAR100.
				        SFNAME           $CHAR30.
				        SMIDDLE          $CHAR30.
				        SLNAME           $CHAR30.
				        SSSN_SIN         $CHAR30.
				        SBIRTHDATE       $CHAR30.
				        SEMAIL           $CHAR30.
				        _1STADDRESSTYPE  $CHAR50.
				        _1STADDRESS1     $CHAR50.
				        _1STADDRESS2     $CHAR50.
				        _1STCITY         $CHAR50.
				        _1STSTATE        $CHAR2.
				        _1STZIPPOSTAL    $CHAR5.
				        _2NDADDRESSTYPE  $CHAR50.
				        _2NDADDRESS1     $CHAR50.
				        _2NDADDRESS2     $CHAR50.
				        _2NDCITY         $CHAR50.
				        _2NDSTATE        $CHAR2.
				        _2NDZIPPOSTAL    $CHAR5.
				        _3RDADDRESSTYPE  $CHAR50.
				        _3RDADDRESS1     $CHAR50.
				        _3RDADDRESS2     $CHAR50.
				        _3RDCITY         $CHAR50.
				        _3RDSTATE        $CHAR2.
				        _3RDZIPPOSTAL    $CHAR5.
				        _4THADDRESSTYPE  $CHAR50.
				        _4THADDRESS1     $CHAR50.
				        _4THADDRESS2     $CHAR50.
				        _4THCITY         $CHAR50.
				        _4THSTATE        $CHAR2.
				        _4THZIPPOSTAL    $CHAR5.
				        _5THADDRESSTYPE  $CHAR50.
				        _5THADDRESS1     $CHAR50.
				        _5THADDRESS2     $CHAR50.
				        _5THCITY         $CHAR50.
				        _5THSTATE        $CHAR2.
				        _5THZIPPOSTAL    $CHAR5.
				        _1STPHONETYPE    $CHAR30.
				        _1STLINETYPE     $CHAR30.
				        _1STPHONE        $CHAR30.
				        _1STPHONESOURCE  $CHAR30.
				        _1STPHONENOTE    $CHAR100.
				        _1STPHONESTATUS  $CHAR30.
				        _2NDPHONETYPE    $CHAR30.
				        _2NDLINETYPE     $CHAR30.
				        _2NDPHONE        $CHAR30.
				        _2NDPHONESOURCE  $CHAR30.
				        _2NDPHONENOTE    $CHAR100.
				        _2NDPHONESTATUS  $CHAR30.
				        _3RDPHONETYPE    $CHAR30.
				        _3RDLINETYPE     $CHAR30.
				        _3RDPHONE        $CHAR30.
				        _3RDPHONESOURCE  $CHAR30.
				        _3RDPHONENOTE    $CHAR100.
				        _3RDPHONESTATUS  $CHAR30.
				        _4THPHONETYPE    $CHAR30.
				        _4THLINETYPE     $CHAR30.
				        _4THPHONE        $CHAR30.
				        _4THPHONESOURCE  $CHAR30.
				        _4THPHONENOTE    $CHAR100.
				        _4THPHONESTATUS  $CHAR30.
				        _5THPHONETYPE    $CHAR30.
				        _5THLINETYPE     $CHAR30.
				        _5THPHONE        $CHAR30.
				        _5THPHONESOURCE  $CHAR30.
				        _5THPHONENOTE    $CHAR100.
				        _5THPHONESTATUS  $CHAR30.
				        _6THPHONETYPE    $CHAR30.
				        _6THLINETYPE     $CHAR30.
				        _6THPHONE        $CHAR30.
				        _6THPHONESOURCE  $CHAR30.
				        _6THPHONENOTE    $CHAR100.
				        _6THPHONESTATUS  $CHAR30.
				        _7THPHONETYPE    $CHAR30.
				        _7THLINETYPE     $CHAR30.
				        _7THPHONE        $CHAR30.
				        _7THPHONESOURCE  $CHAR30.
				        _7THPHONENOTE    $CHAR100.
				        _7THPHONESTATUS  $CHAR30.
				        _8THPHONETYPE    $CHAR30.
				        _8THLINETYPE     $CHAR30.
				        _8THPHONE        $CHAR30.
				        _8THPHONESOURCE  $CHAR30.
				        _8THPHONENOTE    $CHAR100.
				        _8THPHONESTATUS  $CHAR30.
				        _9THPHONETYPE    $CHAR30.
				        _9THLINETYPE     $CHAR30.
				        _9THPHONE        $CHAR30.
				        _9THPHONESOURCE  $CHAR30.
				        _9THPHONENOTE    $CHAR100.
				        _9THPHONESTATUS  $CHAR30.
				        _10THPHONETYPE   $CHAR30.
				        _10THLINETYPE    $CHAR30.
				        _10THPHONE       $CHAR30.
				        _10THPHONESOURCE $CHAR30.
				        _10THPHONENOTE   $CHAR100.
				        _10THPHONESTATUS $CHAR30.
				        EMPLOYER         $CHAR30.
				        OCCUPATION       $CHAR30.
				        EMPLOYER_ADDRESS_1 $CHAR50.
				        EMPLOYER_ADDRESS_2 $CHAR50.
				        EMPLOYER_CITY    $CHAR30.
				        EMPLOYER_STATE   $CHAR2.
				        EMPLOYER_ZIP     $CHAR5.
				        EMPLOYER_PHONE   $CHAR30.
				        SALARY           $CHAR30.
				        PAY_BASIS        $CHAR30.
				        EMPLOYMENT_START_DATE $CHAR30.
				        EMPLOYMENT_END_DATE $CHAR30.
				        COLLATERAL_TYPE  $CHAR30.
				        CURRENT_VALUE    $CHAR30.
				        REFERRAL_AMOUNT  $CHAR30.
				        DESCRIPTION      $CHAR50.
				        OWNER            $CHAR50.
				        ACCOUNTRECEIVEDATE $CHAR30.
				        LOT              $CHAR30.
				        HAS_MEDIA        $CHAR30.
				        PRINCIPAL        $CHAR30.
				        ORIG_ORIGINALCREDITORADDRESS $CHAR50.
				        ORIG_RECEIVED    $CHAR30.
				        ORIG_CUSTOMER    $CHAR30.
				        ORIG_VEH_DEALERCITY $CHAR30.
				        ORIG_VEH_DEALERNAME $CHAR50.
				        ORIG_VEH_DEALERSTATE $CHAR2.
				        ORIG_VEH_DEALERZIP $CHAR5.
				        ORIG_ENTITY      $CHAR50.
				        ORIG_LOANAMT     $CHAR30.
				        ORIG_ACCOUNT_OPEN_DATE $CHAR30.
				        ORIG_LOANPURPOSE $CHAR30.
				        ORIG_LOANTERM    $CHAR30.
				        CP_DEBT_BUYER_ADDRESS__CA_REQUIR $CHAR50.
				        CP_LN_DATA       $CHAR30.
				        SCORE            $CHAR30. ;
/*				    INFILE "E:\SHARED\CADA\SAS SOURCE CODE\DEVELOPMENT\JHUBBARD\EBG\1_PORTFOLIO_FILE_STANDARDIZATION\ENVIRONMENT\BEAM\IMPORTS\PIPPED_BEAM.TXT"*/
					  INFILE "&FILE_USE"
						DLM=','
				        MISSOVER
				        DSD
						FIRSTOBS=2;
				    INPUT
				        ACCOUNTID       : $CHAR30.
				        ISSUERNAME      : $CHAR100.
				        ISSUERACCOUNTNUMBER : $CHAR30.
				        SELLERACCOUNTNUMBER : $CHAR30.
				        PORTFOLIO      :  $CHAR30.
				        CLIENTACCOUNTID : $CHAR30.
				        OPENAMOUNT      : $CHAR30.
				        CODATE          : $CHAR30.
				        COAMOUNT        : $CHAR30.
				        ISSUERLPDATE    : $CHAR30.
				        ISSUERLPAMOUNT  : $CHAR30.
				        ACCOUNTOPENDATE : $CHAR30.
				        CONTRACTINTERESTRATE : $CHAR30.
				        ORIGPHONE       : $CHAR30.
				        ORIGADDRESS1    : $CHAR50.
				        ORIGADDRESS2    : $CHAR50.
				        ORIGCITY        : $CHAR50.
				        ORIGSTATE       : $CHAR2.
				        ORIGZIPPOSTAL   : $CHAR5.
				        ORIGPRODUCT     : $CHAR30.
				        ACCOUNTTYPE     : $CHAR30.
				        CURBALANCE      : $CHAR30.
				        ACQUISITIONBALANCE : $CHAR30.
				        DELINQUENCYDATE  : $CHAR30.
				        ALTERNATIVEDATEOFDELINQUENCY : $CHAR30.
				        SCHEDULEDREPORTDATE : $CHAR30.
				        DELETIONDATE     : $CHAR30.
				        TOTALPAYMENTS   : $CHAR30.
				        LASTPAYDATE     : $CHAR30.
				        LASTPAYAMOUNT   : $CHAR30.
				        TOTAL_PAID_SINCE_CHARGED_OFF : $CHAR30.
				        INBEAMNAME     :  $CHAR30.
				        OUTBEAMNAME    :  $CHAR30.
				        QUEUENAME      :  $CHAR30.
				        AGENCY_DEBTBUYER : $CHAR30.
				        STATUS        :   $CHAR30.
				        FLEXTAG       :   $CHAR30.
				        RATING        :   $CHAR30.
				        RESTRICTION   :   $CHAR30.
				        PFNAME        :   $CHAR30.
				        PMIDDLE       :   $CHAR30.
				        PLNAME        :   $CHAR30.
				        PSSN_SIN      :   $CHAR30.
				        PBIRTHDATE    :   $CHAR30.
				        PEMAIL        :   $CHAR100.
				        SFNAME        :   $CHAR30.
				        SMIDDLE       :   $CHAR30.
				        SLNAME        :   $CHAR30.
				        SSSN_SIN      :   $CHAR30.
				        SBIRTHDATE    :   $CHAR30.
				        SEMAIL        :   $CHAR30.
				        _1STADDRESSTYPE :  $CHAR50.
				        _1STADDRESS1    : $CHAR50.
				        _1STADDRESS2    : $CHAR50.
				        _1STCITY        : $CHAR50.
				        _1STSTATE       : $CHAR2.
				        _1STZIPPOSTAL   : $CHAR5.
				        _2NDADDRESSTYPE : $CHAR50.
				        _2NDADDRESS1    : $CHAR50.
				        _2NDADDRESS2    : $CHAR50.
				        _2NDCITY        : $CHAR50.
				        _2NDSTATE       : $CHAR2.
				        _2NDZIPPOSTAL   : $CHAR5.
				        _3RDADDRESSTYPE : $CHAR50.
				        _3RDADDRESS1    : $CHAR50.
				        _3RDADDRESS2    : $CHAR50.
				        _3RDCITY        : $CHAR50.
				        _3RDSTATE       : $CHAR2.
				        _3RDZIPPOSTAL   : $CHAR5.
				        _4THADDRESSTYPE : $CHAR50.
				        _4THADDRESS1    : $CHAR50.
				        _4THADDRESS2    : $CHAR50.
				        _4THCITY        : $CHAR50.
				        _4THSTATE       : $CHAR2.
				        _4THZIPPOSTAL   : $CHAR5.
				        _5THADDRESSTYPE : $CHAR50.
				        _5THADDRESS1    : $CHAR50.
				        _5THADDRESS2    : $CHAR50.
				        _5THCITY        : $CHAR50.
				        _5THSTATE       : $CHAR2.
				        _5THZIPPOSTAL   : $CHAR5.
				        _1STPHONETYPE   : $CHAR30.
				        _1STLINETYPE    : $CHAR30.
				        _1STPHONE       : $CHAR30.
				        _1STPHONESOURCE : $CHAR30.
				        _1STPHONENOTE   : $CHAR100.
				        _1STPHONESTATUS : $CHAR30.
				        _2NDPHONETYPE   : $CHAR30.
				        _2NDLINETYPE    : $CHAR30.
				        _2NDPHONE       : $CHAR30.
				        _2NDPHONESOURCE : $CHAR30.
				        _2NDPHONENOTE   : $CHAR100.
				        _2NDPHONESTATUS : $CHAR30.
				        _3RDPHONETYPE   : $CHAR30.
				        _3RDLINETYPE    : $CHAR30.
				        _3RDPHONE       : $CHAR30.
				        _3RDPHONESOURCE : $CHAR30.
				        _3RDPHONENOTE   : $CHAR100.
				        _3RDPHONESTATUS : $CHAR30.
				        _4THPHONETYPE   : $CHAR30.
				        _4THLINETYPE    : $CHAR30.
				        _4THPHONE       : $CHAR30.
				        _4THPHONESOURCE : $CHAR30.
				        _4THPHONENOTE   : $CHAR100.
				        _4THPHONESTATUS : $CHAR30.
				        _5THPHONETYPE   : $CHAR30.
				        _5THLINETYPE    : $CHAR30.
				        _5THPHONE       : $CHAR30.
				        _5THPHONESOURCE : $CHAR30.
				        _5THPHONENOTE   : $CHAR100.
				        _5THPHONESTATUS : $CHAR30.
				        _6THPHONETYPE   : $CHAR30.
				        _6THLINETYPE    : $CHAR30.
				        _6THPHONE       : $CHAR30.
				        _6THPHONESOURCE : $CHAR30.
				        _6THPHONENOTE   : $CHAR100.
				        _6THPHONESTATUS : $CHAR30.
				        _7THPHONETYPE   : $CHAR30.
				        _7THLINETYPE    : $CHAR30.
				        _7THPHONE       : $CHAR30.
				        _7THPHONESOURCE : $CHAR30.
				        _7THPHONENOTE   : $CHAR100.
				        _7THPHONESTATUS : $CHAR30.
				        _8THPHONETYPE   : $CHAR30.
				        _8THLINETYPE    : $CHAR30.
				        _8THPHONE       : $CHAR30.
				        _8THPHONESOURCE : $CHAR30.
				        _8THPHONENOTE   : $CHAR100.
				        _8THPHONESTATUS : $CHAR30.
				        _9THPHONETYPE   : $CHAR30.
				        _9THLINETYPE    : $CHAR30.
				        _9THPHONE       : $CHAR30.
				        _9THPHONESOURCE : $CHAR30.
				        _9THPHONENOTE   : $CHAR100.
				        _9THPHONESTATUS : $CHAR30.
				        _10THPHONETYPE  : $CHAR30.
				        _10THLINETYPE   : $CHAR30.
				        _10THPHONE      : $CHAR30.
				        _10THPHONESOURCE : $CHAR30.
				        _10THPHONENOTE   : $CHAR100.
				        _10THPHONESTATUS : $CHAR30.
				        EMPLOYER         : $CHAR30.
				        OCCUPATION       : $CHAR30.
				        EMPLOYER_ADDRESS_1 : $CHAR50.
				        EMPLOYER_ADDRESS_2 : $CHAR50.
				        EMPLOYER_CITY    : $CHAR30.
				        EMPLOYER_STATE   : $CHAR2.
				        EMPLOYER_ZIP     : $CHAR5.
				        EMPLOYER_PHONE   : $CHAR30.
				        SALARY           : $CHAR30.
				        PAY_BASIS        : $CHAR30.
				        EMPLOYMENT_START_DATE : $CHAR30.
				        EMPLOYMENT_END_DATE : $CHAR30.
				        COLLATERAL_TYPE : $CHAR30.
				        CURRENT_VALUE   : $CHAR30.
				        REFERRAL_AMOUNT : $CHAR30.
				        DESCRIPTION     : $CHAR50.
				        OWNER           : $CHAR50.
				        ACCOUNTRECEIVEDATE : $CHAR30.
				        LOT            :  $CHAR30.
				        HAS_MEDIA      :  $CHAR30.
				        PRINCIPAL      :  $CHAR30.
				        ORIG_ORIGINALCREDITORADDRESS : $CHAR50.
				        ORIG_RECEIVED   :  $CHAR30.
				        ORIG_CUSTOMER   :  $CHAR30.
				        ORIG_VEH_DEALERCITY : $CHAR30.
				        ORIG_VEH_DEALERNAME : $CHAR50.
				        ORIG_VEH_DEALERSTATE : $CHAR2.
				        ORIG_VEH_DEALERZIP : $CHAR5.
				        ORIG_ENTITY     : $CHAR50.
				        ORIG_LOANAMT    : $CHAR30.
				        ORIG_ACCOUNT_OPEN_DATE : $CHAR30.
				        ORIG_LOANPURPOSE : $CHAR30.
				        ORIG_LOANTERM    : $CHAR30.
				        CP_DEBT_BUYER_ADDRESS__CA_REQUIR : $CHAR50.
				        CP_LN_DATA    :  $CHAR30.
				        SCORE         :   $CHAR30. ;
				RUN;
			%END;

%MEND;