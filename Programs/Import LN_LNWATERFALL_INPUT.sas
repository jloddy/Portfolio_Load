%MACRO IMPORT_LNWATERFALL();

		DATA LN_OUTPUT_LNWATERFALL_INPUT_EBG;
		    LENGTH
		        ACCOUNT_NUMBER   $ 50
		        UNIQUE_NUMBER    $ 50
		        CLIENT_CODE      $ 50
		        CLIENT_INPUT_SSN  $ 50
		        CLIENT_FIRST_NAME $ 50
		        CLIENT_LAST_NAME $ 50
		        BKR_FLAG         $ 50
		        CASE_NUMBER      $ 50
		        CHAPTER           $ 50
		        FILE_DATE        $ 50
		        STATUS_DATE        $ 50
		        DISPOSITION_CODE  $ 50
		        SUFFIX           $ 50
		        ADDRESS          $ 50
		        ZIP_CODE          $ 50
		        SOCIAL_SECURITY_NUMBER $ 50
		        CITY_FILED       $ 50
		        STATE_FILED      $ 50
		        COUNTY           $ 50
		        FIRST_NAME       $ 50
		        MIDDLE_NAME      $ 50
		        LAST_NAME        $ 50
		        BUSINESS         $ 50
		        BUSINESS_1       $ 50
		        BUSINESS_2       $ 50
		        BUSINESS_3       $ 50
		        DEBTOR_S_CITY    $ 50
		        DEBTOR_S_STATE   $ 50
		        ECOA             $ 50
		        LAW_FIRM         $ 50
		        ATTORNEY_NAME    $ 50
		        ATTORNEY_ADDRESS $ 50
		        ATTORNEY_CITY    $ 50
		        ATTORNEY_STATE   $ 50
		        ATTORNEY_ZIP     $ 50
		        ATTORNEY_PHONE    $ 50
		        ATTORNEY_EMAIL   $ 50
		        ATTORNEY_FAX      $ 50
		        _341_DATE         $ 50
		        _341_TIME         $ 50
		        _341_LOCATION    $ 100
		        TRUSTEE          $ 50
		        TRUSTEE_ADDRESS  $ 50
		        TRUSTEE_CITY     $ 50
		        TRUSTEE_STATE    $ 50
		        TRUSTEE_ZIP       $ 50
		        TRUSTEE_PHONE      $ 50
		        JUDGE_S_INITIALS $ 50
		        FUNDS            $ 50
		        DISCHARGE_COMPLAINT_BAR_DATE   $ 50
		        MATCH_CODE       $ 50
		        COURT_DISTRICT   $ 50
		        COURT_ADDRESS_1  $ 50
		        COURT_ADDRESS_2  $ 50
		        COURT_MAILING_CITY $ 50
		        COURT_ZIP          $ 50
		        COURT_PHONE       $ 50
		        DEBTOR_PHONE       $ 50
		        VOLUNTARY_INVOLUNTARY_DISMISSAL $ 50
		        PROOF_OF_CLAIM_DATE   $ 50
		        MULTIPLE_DEBTOR  $ 50
		        COURT_ID        $ 50
		        TRUSTEE_ID        $ 50
		        REINSTATED_CASE_DATE  $ 50
		        CLOSED_DATE        $ 50
		        CLIENT_UPDATE_FLAG $ 50
		        FILING_STATUS    $ 50
		        DEC_SSN          $ 50
		        DEC_FNAME        $ 50
		        DEC_MNAME        $ 50
		        DEC_LNAME        $ 50
		        DEC_SUFFIX       $ 50
		        DEC_ADDRESS      $ 50
		        DEC_CITY         $ 50
		        DEC_STATE        $ 50
		        DEC_ZIP           $ 50
		        DEC_COUNTY_NAME  $ 50
		        DEC_BDATE         $ 50
		        DEC_DDATE         $ 50
		        DEC_MATCHCODE    $ 50
		        DEC_SOURCE       $ 50
		        LITIGIOUSDEBTOR_FLAG  $ 50
		        NAME_FIRST_1     $ 50
		        NAME_MIDDLE_1    $ 50
		        NAME_LAST_1      $ 50
		        NAME_SUFFIX_1    $ 50
		        ADDRESS_1        $ 50
		        P_CITY_NAME_1    $ 50
		        ST_1             $ 50
		        ZIP_1            $ 50
		        ADDR_DT_FIRST_SEEN_1  $ 50
		        ADDR_DT_LAST_SEEN_1   $ 50
		        CONF_ADDR_MATCH_CODE_1 $ 50
		        SUBJ_FIRST_1     $ 50
		        SUBJ_MIDDLE_1   $ 50
		        SUBJ_LAST_1      $ 50
		        SUBJ_SUFFIX_1   $ 50
		        SUBJ_PHONE_MATCH_FLAG_1 $ 50
		        SUBJ_PHONE_1      $ 50
		        SUBJ_PHONE_LISTING_NAME_1 $ 50
		        SUBJ_PHONE_POSSIBLE_RELATIONSHIP $ 50
		        SUBJ_PHONE_LINE_TYPE_1 $ 50
		        SUBJ_FIRST_2     $ 50
		        SUBJ_MIDDLE_2    $ 50
		        SUBJ_LAST_2      $ 50
		        SUBJ_SUFFIX_2    $ 50
		        SUBJ_PHONE_MATCH_FLAG_2 $ 50
		        SUBJ_PHONE_2      $ 50
		        SUBJ_PHONE_LISTING_NAME_2 $ 50
		        SUBJ_PHONE_POSSIBLE_RELATIO_0001 $ 50
		        SUBJ_PHONE_LINE_TYPE_2 $ 50
		        SUBJ_FIRST_3     $ 50
		        SUBJ_MIDDLE_3    $ 50
		        SUBJ_LAST_3      $ 50
		        SUBJ_SUFFIX_3    $ 50
		        SUBJ_PHONE_MATCH_FLAG_3 $ 50
		        SUBJ_PHONE_3       $ 50
		        SUBJ_PHONE_LISTING_NAME_3 $ 50
		        SUBJ_PHONE_POSSIBLE_RELATIO_0002 $ 50
		        SUBJ_PHONE_LINE_TYPE_3 $ 50
		        PAWK_1_FIRST    $ 50
		        PAWK_1_MIDDLE    $ 50
		        PAWK_1_LAST      $ 50
		        PAWK_1_SUFFIX    $ 50
		        PAWK_1_SSN        $ 50
		        PAWK_1_TITLE     $ 50
		        PAWK_1_FIRST_SEEN  $ 50
		        PAWK_1_LAST_SEEN   $ 50
		        PAWK_1_BDID        $ 50
		        PAWK_1_COMPANY_NAME $ 50
		        PAWK_1_DEPARTMENT $ 50
		        PAWK_1_FEIN        $ 50
		        PAWK_1_ADDRESS   $ 50
		        PAWK_1_CITY      $ 50
		        PAWK_1_STATE     $ 50
		        PAWK_1_ZIP5      $ 50
		        PAWK_1_ZIP4       $ 50
		        PAWK_1_PHONE10    $ 50
		        PAWK_1_VERIFIED  $ 50
		        PAWK_1_EMAIL     $ 50
		        PAWK_2_DID        $ 50
		        PAWK_2_CONFIDENCE_LEVEL  $ 50
		        PAWK_2_FIRST     $ 50
		        PAWK_2_MIDDLE    $ 50
		        PAWK_2_LAST      $ 50
		        PAWK_2_SUFFIX    $ 50
		        PAWK_2_SSN        $ 50
		        PAWK_2_TITLE     $ 50
		        PAWK_2_FIRST_SEEN   $ 50
		        PAWK_2_LAST_SEEN   $ 50
		        PAWK_2_BDID        $ 50
		        PAWK_2_COMPANY_NAME $ 50
		        PAWK_2_DEPARTMENT $ 50
		        PAWK_2_FEIN       $ 50
		        PAWK_2_ADDRESS   $ 50
		        PAWK_2_CITY      $ 50
		        PAWK_2_STATE     $ 50
		        PAWK_2_ZIP5       $ 50
		        PAWK_2_ZIP4        $ 50
		        PAWK_2_PHONE10    $ 50
		        PAWK_2_VERIFIED  $ 50
		        PAWK_2_EMAIL     $ 50
		        PAWK_3_DID        $ 50
		        PAWK_3_CONFIDENCE_LEVEL  $ 50
		        PAWK_3_FIRST     $ 50
		        PAWK_3_MIDDLE    $ 50
		        PAWK_3_LAST      $ 50
		        PAWK_3_SUFFIX    $ 50
		        PAWK_3_SSN        $ 50
		        PAWK_3_TITLE     $ 50
		        PAWK_3_FIRST_SEEN   $ 50
		        PAWK_3_LAST_SEEN   $ 50
		        PAWK_3_BDID        $ 50
		        PAWK_3_COMPANY_NAME $ 50
		        PAWK_3_DEPARTMENT $ 50
		        PAWK_3_FEIN        $ 50
		        PAWK_3_ADDRESS   $ 50
		        PAWK_3_CITY      $ 50
		        PAWK_3_STATE     $ 50
		        PAWK_3_ZIP5       $ 50
		        PAWK_3_ZIP4      $ 50
		        PAWK_3_PHONE10    $ 50
		        PAWK_3_VERIFIED  $ 50
		        PAWK_3_EMAIL     $ 50
		        PAWK_4_DID         $ 50
		        PAWK_4_CONFIDENCE_LEVEL   $ 50
		        PAWK_4_FIRST     $ 50
		        PAWK_4_MIDDLE    $ 50
		        PAWK_4_LAST      $ 50
		        PAWK_4_SUFFIX    $ 50
		        PAWK_4_SSN        $ 50
		        PAWK_4_TITLE     $ 50
		        PAWK_4_FIRST_SEEN   $ 50
		        PAWK_4_LAST_SEEN   $ 50
		        PAWK_4_BDID        $ 50
		        PAWK_4_COMPANY_NAME $ 50
		        PAWK_4_DEPARTMENT $ 50
		        PAWK_4_FEIN        $ 50
		        PAWK_4_ADDRESS   $ 50
		        PAWK_4_CITY      $ 50
		        PAWK_4_STATE     $ 50
		        PAWK_4_ZIP5       $ 50
		        PAWK_4_ZIP4        $ 50
		        PAWK_4_PHONE10     $ 50
		        PAWK_4_VERIFIED  $ 50
		        PAWK_4_EMAIL     $ 50
		        PAWK_5_DID        $ 50
		        PAWK_5_CONFIDENCE_LEVEL   $ 50
		        PAWK_5_FIRST    $ 50
		        PAWK_5_MIDDLE    $ 50
		        PAWK_5_LAST      $ 50
		        PAWK_5_SUFFIX    $ 50
		        PAWK_5_SSN        $ 50
		        PAWK_5_TITLE     $ 50
		        PAWK_5_FIRST_SEEN   $ 50
		        PAWK_5_LAST_SEEN   $ 50
		        PAWK_5_BDID        $ 50
		        PAWK_5_COMPANY_NAME $ 50
		        PAWK_5_DEPARTMENT $ 50
		        PAWK_5_FEIN       $ 50
		        PAWK_5_ADDRESS   $ 50
		        PAWK_5_CITY      $ 50
		        PAWK_5_STATE     $ 50
		        PAWK_5_ZIP5        $ 50
		        PAWK_5_ZIP4       $ 50
		        PAWK_5_PHONE10     $ 50
		        PAWK_5_VERIFIED  $ 50
		        PAWK_5_EMAIL     $ 50 ;
		    LABEL
		        ACCOUNT_NUMBER   = "ACCOUNT NUMBER"
		        UNIQUE_NUMBER    = "UNIQUE NUMBER"
		        CLIENT_CODE      = "CLIENT CODE"
		        CLIENT_INPUT_SSN = "CLIENT INPUT SSN"
		        CLIENT_FIRST_NAME = "CLIENT FIRST NAME"
		        CLIENT_LAST_NAME = "CLIENT LAST NAME"
		        CASE_NUMBER      = "CASE NUMBER"
		        FILE_DATE        = "FILE DATE"
		        STATUS_DATE      = "STATUS DATE"
		        DISPOSITION_CODE = "DISPOSITION CODE"
		        ZIP_CODE         = "ZIP CODE"
		        SOCIAL_SECURITY_NUMBER = "SOCIAL SECURITY NUMBER"
		        CITY_FILED       = "CITY FILED"
		        STATE_FILED      = "STATE FILED"
		        FIRST_NAME       = "FIRST NAME"
		        MIDDLE_NAME      = "MIDDLE NAME"
		        LAST_NAME        = "LAST NAME"
		        BUSINESS_1       = "BUSINESS 1"
		        BUSINESS_2       = "BUSINESS 2"
		        BUSINESS_3       = "BUSINESS 3"
		        DEBTOR_S_CITY    = "DEBTOR'S CITY"
		        DEBTOR_S_STATE   = "DEBTOR'S STATE"
		        LAW_FIRM         = "LAW FIRM"
		        ATTORNEY_NAME    = "ATTORNEY NAME"
		        ATTORNEY_ADDRESS = "ATTORNEY ADDRESS"
		        ATTORNEY_CITY    = "ATTORNEY CITY"
		        ATTORNEY_STATE   = "ATTORNEY STATE"
		        ATTORNEY_ZIP     = "ATTORNEY ZIP"
		        ATTORNEY_PHONE   = "ATTORNEY PHONE"
		        ATTORNEY_EMAIL   = "ATTORNEY EMAIL"
		        ATTORNEY_FAX     = "ATTORNEY FAX"
		        _341_DATE        = "341 DATE"
		        _341_TIME        = "341 TIME"
		        _341_LOCATION    = "341 LOCATION"
		        TRUSTEE_ADDRESS  = "TRUSTEE ADDRESS"
		        TRUSTEE_CITY     = "TRUSTEE CITY"
		        TRUSTEE_STATE    = "TRUSTEE STATE"
		        TRUSTEE_ZIP      = "TRUSTEE ZIP"
		        TRUSTEE_PHONE    = "TRUSTEE PHONE"
		        JUDGE_S_INITIALS = "JUDGE'S INITIALS"
		        DISCHARGE_COMPLAINT_BAR_DATE = "DISCHARGE COMPLAINT BAR DATE"
		        MATCH_CODE       = "MATCH CODE"
		        COURT_DISTRICT   = "COURT DISTRICT"
		        COURT_ADDRESS_1  = "COURT ADDRESS 1"
		        COURT_ADDRESS_2  = "COURT ADDRESS 2"
		        COURT_MAILING_CITY = "COURT MAILING CITY"
		        COURT_ZIP        = "COURT ZIP"
		        COURT_PHONE      = "COURT PHONE"
		        DEBTOR_PHONE     = "DEBTOR PHONE"
		        VOLUNTARY_INVOLUNTARY_DISMISSAL = "VOLUNTARY\INVOLUNTARY DISMISSAL"
		        PROOF_OF_CLAIM_DATE = "PROOF OF CLAIM DATE"
		        MULTIPLE_DEBTOR  = "MULTIPLE DEBTOR"
		        COURT_ID         = "COURT ID"
		        TRUSTEE_ID       = "TRUSTEE ID"
		        REINSTATED_CASE_DATE = "REINSTATED CASE DATE"
		        CLOSED_DATE      = "CLOSED DATE"
		        CLIENT_UPDATE_FLAG = "CLIENT UPDATE FLAG"
		        FILING_STATUS    = "FILING STATUS"
		        SUBJ_PHONE_POSSIBLE_RELATIONSHIP = "SUBJ_PHONE_POSSIBLE_RELATIONSHIP_1"
		        SUBJ_PHONE_POSSIBLE_RELATIO_0001 = "SUBJ_PHONE_POSSIBLE_RELATIONSHIP_2"
		        SUBJ_PHONE_POSSIBLE_RELATIO_0002 = "SUBJ_PHONE_POSSIBLE_RELATIONSHIP_3" ;
		    FORMAT
		        ACCOUNT_NUMBER   $CHAR50.
		        UNIQUE_NUMBER   $CHAR50.
		        CLIENT_CODE      $CHAR50.
		        CLIENT_INPUT_SSN $CHAR50.
		        CLIENT_FIRST_NAME $CHAR50.
		        CLIENT_LAST_NAME $CHAR50.
		        BKR_FLAG         $CHAR50.
		        CASE_NUMBER      $CHAR50.
		        CHAPTER          $CHAR50.
		        FILE_DATE        $CHAR50.
		        STATUS_DATE      $CHAR50.
		        DISPOSITION_CODE $CHAR50.
		        SUFFIX           $CHAR50.
		        ADDRESS          $CHAR50.
		        ZIP_CODE         $CHAR50.
		        SOCIAL_SECURITY_NUMBER $CHAR50.
		        CITY_FILED       $CHAR50.
		        STATE_FILED      $CHAR50.
		        COUNTY           $CHAR50.
		        FIRST_NAME       $CHAR50.
		        MIDDLE_NAME      $CHAR50.
		        LAST_NAME        $CHAR50.
		        BUSINESS         $CHAR50.
		        BUSINESS_1       $CHAR50.
		        BUSINESS_2       $CHAR50.
		        BUSINESS_3       $CHAR50.
		        DEBTOR_S_CITY    $CHAR50.
		        DEBTOR_S_STATE   $CHAR50.
		        ECOA             $CHAR50.
		        LAW_FIRM         $CHAR50.
		        ATTORNEY_NAME    $CHAR50.
		        ATTORNEY_ADDRESS $CHAR50.
		        ATTORNEY_CITY    $CHAR50.
		        ATTORNEY_STATE   $CHAR50.
		        ATTORNEY_ZIP     $CHAR50.
		        ATTORNEY_PHONE   $CHAR50.
		        ATTORNEY_EMAIL   $CHAR50.
		        ATTORNEY_FAX     $CHAR50.
		        _341_DATE        $CHAR50.
		        _341_TIME        $CHAR50.
		        _341_LOCATION    $CHAR50.
		        TRUSTEE          $CHAR50.
		        TRUSTEE_ADDRESS  $CHAR50.
		        TRUSTEE_CITY     $CHAR50.
		        TRUSTEE_STATE    $CHAR50.
		        TRUSTEE_ZIP      $CHAR50.
		        TRUSTEE_PHONE    $CHAR50.
		        JUDGE_S_INITIALS $CHAR50.
		        FUNDS            $CHAR50.
		        DISCHARGE_COMPLAINT_BAR_DATE $CHAR50.
		        MATCH_CODE       $CHAR50.
		        COURT_DISTRICT   $CHAR50.
		        COURT_ADDRESS_1  $CHAR50.
		        COURT_ADDRESS_2  $CHAR50.
		        COURT_MAILING_CITY $CHAR50.
		        COURT_ZIP        $CHAR50.
		        COURT_PHONE      $CHAR50.
		        DEBTOR_PHONE     $CHAR50.
		        VOLUNTARY_INVOLUNTARY_DISMISSAL $CHAR50.
		        PROOF_OF_CLAIM_DATE $CHAR50.
		        MULTIPLE_DEBTOR  $CHAR50.
		        COURT_ID        $CHAR50.
		        TRUSTEE_ID      $CHAR50.
		        REINSTATED_CASE_DATE $CHAR50.
		        CLOSED_DATE      $CHAR50.
		        CLIENT_UPDATE_FLAG $CHAR50.
		        FILING_STATUS    $CHAR50.
		        DEC_SSN          $CHAR50.
		        DEC_FNAME        $CHAR50.
		        DEC_MNAME        $CHAR50.
		        DEC_LNAME        $CHAR50.
		        DEC_SUFFIX       $CHAR50.
		        DEC_ADDRESS      $CHAR50.
		        DEC_CITY         $CHAR50.
		        DEC_STATE        $CHAR50.
		        DEC_ZIP          $CHAR50.
		        DEC_COUNTY_NAME  $CHAR50.
		        DEC_BDATE        $CHAR50.
		        DEC_DDATE        $CHAR50.
		        DEC_MATCHCODE    $CHAR50.
		        DEC_SOURCE       $CHAR50.
		        LITIGIOUSDEBTOR_FLAG $CHAR50.
		        NAME_FIRST_1     $CHAR50.
		        NAME_MIDDLE_1    $CHAR50.
		        NAME_LAST_1      $CHAR50.
		        NAME_SUFFIX_1    $CHAR50.
		        ADDRESS_1        $CHAR50.
		        P_CITY_NAME_1    $CHAR50.
		        ST_1             $CHAR50.
		        ZIP_1            $CHAR50.
		        ADDR_DT_FIRST_SEEN_1 $CHAR50.
		        ADDR_DT_LAST_SEEN_1 $CHAR50.
		        CONF_ADDR_MATCH_CODE_1 $CHAR50.
		        SUBJ_FIRST_1     $CHAR50.
		        SUBJ_MIDDLE_1   $CHAR50.
		        SUBJ_LAST_1      $CHAR50.
		        SUBJ_SUFFIX_1    $CHAR50.
		        SUBJ_PHONE_MATCH_FLAG_1 $CHAR50.
		        SUBJ_PHONE_1     $CHAR50.
		        SUBJ_PHONE_LISTING_NAME_1 $CHAR50.
		        SUBJ_PHONE_POSSIBLE_RELATIONSHIP $CHAR50.
		        SUBJ_PHONE_LINE_TYPE_1 $CHAR50.
		        SUBJ_FIRST_2     $CHAR50.
		        SUBJ_MIDDLE_2    $CHAR50.
		        SUBJ_LAST_2      $CHAR50.
		        SUBJ_SUFFIX_2    $CHAR50.
		        SUBJ_PHONE_MATCH_FLAG_2 $CHAR50.
		        SUBJ_PHONE_2     $CHAR50.
		        SUBJ_PHONE_LISTING_NAME_2 $CHAR50.
		        SUBJ_PHONE_POSSIBLE_RELATIO_0001 $CHAR50.
		        SUBJ_PHONE_LINE_TYPE_2 $CHAR50.
		        SUBJ_FIRST_3     $CHAR50.
		        SUBJ_MIDDLE_3    $CHAR50.
		        SUBJ_LAST_3     $CHAR50.
		        SUBJ_SUFFIX_3    $CHAR50.
		        SUBJ_PHONE_MATCH_FLAG_3 $CHAR50.
		        SUBJ_PHONE_3     $CHAR50.
		        SUBJ_PHONE_LISTING_NAME_3 $CHAR50.
		        SUBJ_PHONE_POSSIBLE_RELATIO_0002 $CHAR50.
		        SUBJ_PHONE_LINE_TYPE_3 $CHAR50.
		        PAWK_1_FIRST     $CHAR50.
		        PAWK_1_MIDDLE    $CHAR50.
		        PAWK_1_LAST      $CHAR50.
		        PAWK_1_SUFFIX    $CHAR50.
		        PAWK_1_SSN       $CHAR50.
		        PAWK_1_TITLE     $CHAR50.
		        PAWK_1_FIRST_SEEN $CHAR50.
		        PAWK_1_LAST_SEEN $CHAR50.
		        PAWK_1_BDID      $CHAR50.
		        PAWK_1_COMPANY_NAME $CHAR50.
		        PAWK_1_DEPARTMENT $CHAR50.
		        PAWK_1_FEIN      $CHAR50.
		        PAWK_1_ADDRESS   $CHAR50.
		        PAWK_1_CITY      $CHAR50.
		        PAWK_1_STATE     $CHAR50.
		        PAWK_1_ZIP5      $CHAR50.
		        PAWK_1_ZIP4      $CHAR50.
		        PAWK_1_PHONE10   $CHAR50.
		        PAWK_1_VERIFIED  $CHAR50.
		        PAWK_1_EMAIL     $CHAR50.
		        PAWK_2_DID       $CHAR50.
		        PAWK_2_CONFIDENCE_LEVEL $CHAR50.
		        PAWK_2_FIRST     $CHAR50.
		        PAWK_2_MIDDLE    $CHAR50.
		        PAWK_2_LAST      $CHAR50.
		        PAWK_2_SUFFIX    $CHAR50.
		        PAWK_2_SSN      $CHAR50.
		        PAWK_2_TITLE     $CHAR50.
		        PAWK_2_FIRST_SEEN $CHAR50.
		        PAWK_2_LAST_SEEN $CHAR50.
		        PAWK_2_BDID      $CHAR50.
		        PAWK_2_COMPANY_NAME $CHAR50.
		        PAWK_2_DEPARTMENT $CHAR50.
		        PAWK_2_FEIN      $CHAR50.
		        PAWK_2_ADDRESS   $CHAR50.
		        PAWK_2_CITY      $CHAR50.
		        PAWK_2_STATE     $CHAR50.
		        PAWK_2_ZIP5      $CHAR50.
		        PAWK_2_ZIP4      $CHAR50.
		        PAWK_2_PHONE10   $CHAR50.
		        PAWK_2_VERIFIED  $CHAR50.
		        PAWK_2_EMAIL     $CHAR50.
		        PAWK_3_DID       $CHAR50.
		        PAWK_3_CONFIDENCE_LEVEL $CHAR50.
		        PAWK_3_FIRST     $CHAR50.
		        PAWK_3_MIDDLE    $CHAR50.
		        PAWK_3_LAST      $CHAR50.
		        PAWK_3_SUFFIX    $CHAR50.
		        PAWK_3_SSN       $CHAR50.
		        PAWK_3_TITLE     $CHAR50.
		        PAWK_3_FIRST_SEEN $CHAR50.
		        PAWK_3_LAST_SEEN $CHAR50.
		        PAWK_3_BDID      $CHAR50.
		        PAWK_3_COMPANY_NAME $CHAR50.
		        PAWK_3_DEPARTMENT $CHAR50.
		        PAWK_3_FEIN      $CHAR50.
		        PAWK_3_ADDRESS   $CHAR50.
		        PAWK_3_CITY      $CHAR50.
		        PAWK_3_STATE     $CHAR50.
		        PAWK_3_ZIP5      $CHAR50.
		        PAWK_3_ZIP4      $CHAR50.
		        PAWK_3_PHONE10   $CHAR50.
		        PAWK_3_VERIFIED  $CHAR50.
		        PAWK_3_EMAIL     $CHAR50.
		        PAWK_4_DID       $CHAR50.
		        PAWK_4_CONFIDENCE_LEVEL $CHAR50.
		        PAWK_4_FIRST     $CHAR50.
		        PAWK_4_MIDDLE   $CHAR50.
		        PAWK_4_LAST      $CHAR50.
		        PAWK_4_SUFFIX    $CHAR50.
		        PAWK_4_SSN       $CHAR50.
		        PAWK_4_TITLE     $CHAR50.
		        PAWK_4_FIRST_SEEN $CHAR50.
		        PAWK_4_LAST_SEEN $CHAR50.
		        PAWK_4_BDID      $CHAR50.
		        PAWK_4_COMPANY_NAME $CHAR50.
		        PAWK_4_DEPARTMENT $CHAR50.
		        PAWK_4_FEIN      $CHAR50.
		        PAWK_4_ADDRESS   $CHAR50.
		        PAWK_4_CITY      $CHAR50.
		        PAWK_4_STATE     $CHAR50.
		        PAWK_4_ZIP5      $CHAR50.
		        PAWK_4_ZIP4      $CHAR50.
		        PAWK_4_PHONE10   $CHAR50.
		        PAWK_4_VERIFIED  $CHAR50.
		        PAWK_4_EMAIL     $CHAR50.
		        PAWK_5_DID       $CHAR50.
		        PAWK_5_CONFIDENCE_LEVEL $CHAR50.
		        PAWK_5_FIRST     $CHAR50.
		        PAWK_5_MIDDLE    $CHAR50.
		        PAWK_5_LAST      $CHAR50.
		        PAWK_5_SUFFIX    $CHAR50.
		        PAWK_5_SSN       $CHAR50.
		        PAWK_5_TITLE     $CHAR50.
		        PAWK_5_FIRST_SEEN $CHAR50.
		        PAWK_5_LAST_SEEN $CHAR50.
		        PAWK_5_BDID      $CHAR50.
		        PAWK_5_COMPANY_NAME $CHAR50.
		        PAWK_5_DEPARTMENT $CHAR50.
		        PAWK_5_FEIN      $CHAR50.
		        PAWK_5_ADDRESS   $CHAR50.
		        PAWK_5_CITY      $CHAR50.
		        PAWK_5_STATE     $CHAR50.
		        PAWK_5_ZIP5      $CHAR50.
		        PAWK_5_ZIP4      $CHAR50.
		        PAWK_5_PHONE10   $CHAR50.
		        PAWK_5_VERIFIED  $CHAR50.
		        PAWK_5_EMAIL     $CHAR50. ;
		    INFORMAT
		        ACCOUNT_NUMBER   $CHAR50.
		        UNIQUE_NUMBER    $CHAR50.
		        CLIENT_CODE      $CHAR50.
		        CLIENT_INPUT_SSN $CHAR50.
		        CLIENT_FIRST_NAME $CHAR50.
		        CLIENT_LAST_NAME $CHAR50.
		        BKR_FLAG         $CHAR50.
		        CASE_NUMBER      $CHAR50.
		        CHAPTER          $CHAR50.
		        FILE_DATE        $CHAR50.
		        STATUS_DATE      $CHAR50.
		        DISPOSITION_CODE $CHAR50.
		        SUFFIX           $CHAR50.
		        ADDRESS          $CHAR50.
		        ZIP_CODE         $CHAR50.
		        SOCIAL_SECURITY_NUMBER $CHAR50.
		        CITY_FILED       $CHAR50.
		        STATE_FILED      $CHAR50.
		        COUNTY           $CHAR50.
		        FIRST_NAME       $CHAR50.
		        MIDDLE_NAME      $CHAR50.
		        LAST_NAME        $CHAR50.
		        BUSINESS         $CHAR50.
		        BUSINESS_1       $CHAR50.
		        BUSINESS_2       $CHAR50.
		        BUSINESS_3       $CHAR50.
		        DEBTOR_S_CITY    $CHAR50.
		        DEBTOR_S_STATE   $CHAR50.
		        ECOA             $CHAR50.
		        LAW_FIRM         $CHAR50.
		        ATTORNEY_NAME    $CHAR50.
		        ATTORNEY_ADDRESS $CHAR50.
		        ATTORNEY_CITY    $CHAR50.
		        ATTORNEY_STATE  $CHAR50.
		        ATTORNEY_ZIP     $CHAR50.
		        ATTORNEY_PHONE   $CHAR50.
		        ATTORNEY_EMAIL   $CHAR50.
		        ATTORNEY_FAX     $CHAR50.
		        _341_DATE        $CHAR50.
		        _341_TIME        $CHAR50.
		        _341_LOCATION    $CHAR50.
		        TRUSTEE          $CHAR50.
		        TRUSTEE_ADDRESS  $CHAR50.
		        TRUSTEE_CITY     $CHAR50.
		        TRUSTEE_STATE    $CHAR50.
		        TRUSTEE_ZIP      $CHAR50.
		        TRUSTEE_PHONE    $CHAR50.
		        JUDGE_S_INITIALS $CHAR50.
		        FUNDS            $CHAR50.
		        DISCHARGE_COMPLAINT_BAR_DATE $CHAR50.
		        MATCH_CODE       $CHAR50.
		        COURT_DISTRICT   $CHAR50.
		        COURT_ADDRESS_1  $CHAR50.
		        COURT_ADDRESS_2  $CHAR50.
		        COURT_MAILING_CITY $CHAR50.
		        COURT_ZIP        $CHAR50.
		        COURT_PHONE      $CHAR50.
		        DEBTOR_PHONE     $CHAR50.
		        VOLUNTARY_INVOLUNTARY_DISMISSAL $CHAR50.
		        PROOF_OF_CLAIM_DATE $CHAR50.
		        MULTIPLE_DEBTOR  $CHAR50.
		        COURT_ID         $CHAR50.
		        TRUSTEE_ID       $CHAR50.
		        REINSTATED_CASE_DATE $CHAR50.
		        CLOSED_DATE      $CHAR50.
		        CLIENT_UPDATE_FLAG $CHAR50.
		        FILING_STATUS    $CHAR50.
		        DEC_SSN          $CHAR50.
		        DEC_FNAME        $CHAR50.
		        DEC_MNAME       $CHAR50.
		        DEC_LNAME       $CHAR50.
		        DEC_SUFFIX       $CHAR50.
		        DEC_ADDRESS      $CHAR50.
		        DEC_CITY         $CHAR50.
		        DEC_STATE        $CHAR50.
		        DEC_ZIP          $CHAR50.
		        DEC_COUNTY_NAME  $CHAR50.
		        DEC_BDATE        $CHAR50.
		        DEC_DDATE        $CHAR50.
		        DEC_MATCHCODE    $CHAR50.
		        DEC_SOURCE       $CHAR50.
		        LITIGIOUSDEBTOR_FLAG $CHAR50.
		        NAME_FIRST_1     $CHAR50.
		        NAME_MIDDLE_1    $CHAR50.
		        NAME_LAST_1      $CHAR50.
		        NAME_SUFFIX_1    $CHAR50.
		        ADDRESS_1        $CHAR50.
		        P_CITY_NAME_1    $CHAR50.
		        ST_1             $CHAR50.
		        ZIP_1            $CHAR50.
		        ADDR_DT_FIRST_SEEN_1 $CHAR50.
		        ADDR_DT_LAST_SEEN_1 $CHAR50.
		        CONF_ADDR_MATCH_CODE_1 $CHAR50.
		        SUBJ_FIRST_1     $CHAR50.
		        SUBJ_MIDDLE_1    $CHAR50.
		        SUBJ_LAST_1      $CHAR50.
		        SUBJ_SUFFIX_1    $CHAR50.
		        SUBJ_PHONE_MATCH_FLAG_1 $CHAR50.
		        SUBJ_PHONE_1     $CHAR50.
		        SUBJ_PHONE_LISTING_NAME_1 $CHAR50.
		        SUBJ_PHONE_POSSIBLE_RELATIONSHIP $CHAR50.
		        SUBJ_PHONE_LINE_TYPE_1 $CHAR50.
		        SUBJ_FIRST_2    $CHAR50.
		        SUBJ_MIDDLE_2    $CHAR50.
		        SUBJ_LAST_2      $CHAR50.
		        SUBJ_SUFFIX_2    $CHAR50.
		        SUBJ_PHONE_MATCH_FLAG_2 $CHAR50.
		        SUBJ_PHONE_2     $CHAR50.
		        SUBJ_PHONE_LISTING_NAME_2 $CHAR50.
		        SUBJ_PHONE_POSSIBLE_RELATIO_0001 $CHAR50.
		        SUBJ_PHONE_LINE_TYPE_2 $CHAR50.
		        SUBJ_FIRST_3     $CHAR50.
		        SUBJ_MIDDLE_3    $CHAR50.
		        SUBJ_LAST_3      $CHAR50.
		        SUBJ_SUFFIX_3    $CHAR50.
		        SUBJ_PHONE_MATCH_FLAG_3 $CHAR50.
		        SUBJ_PHONE_3     $CHAR50.
		        SUBJ_PHONE_LISTING_NAME_3 $CHAR50.
		        SUBJ_PHONE_POSSIBLE_RELATIO_0002 $CHAR50.
		        SUBJ_PHONE_LINE_TYPE_3 $CHAR50.
		        PAWK_1_FIRST    $CHAR50.
		        PAWK_1_MIDDLE    $CHAR50.
		        PAWK_1_LAST      $CHAR50.
		        PAWK_1_SUFFIX    $CHAR50.
		        PAWK_1_SSN      $CHAR50.
		        PAWK_1_TITLE     $CHAR50.
		        PAWK_1_FIRST_SEEN $CHAR50.
		        PAWK_1_LAST_SEEN $CHAR50.
		        PAWK_1_BDID      $CHAR50.
		        PAWK_1_COMPANY_NAME $CHAR50.
		        PAWK_1_DEPARTMENT $CHAR50.
		        PAWK_1_FEIN      $CHAR50.
		        PAWK_1_ADDRESS   $CHAR50.
		        PAWK_1_CITY      $CHAR50.
		        PAWK_1_STATE     $CHAR50.
		        PAWK_1_ZIP5      $CHAR50.
		        PAWK_1_ZIP4      $CHAR50.
		        PAWK_1_PHONE10   $CHAR50.
		        PAWK_1_VERIFIED  $CHAR50.
		        PAWK_1_EMAIL     $CHAR50.
		        PAWK_2_DID       $CHAR50.
		        PAWK_2_CONFIDENCE_LEVEL $CHAR50.
		        PAWK_2_FIRST     $CHAR50.
		        PAWK_2_MIDDLE    $CHAR50.
		        PAWK_2_LAST      $CHAR50.
		        PAWK_2_SUFFIX    $CHAR50.
		        PAWK_2_SSN       $CHAR50.
		        PAWK_2_TITLE     $CHAR50.
		        PAWK_2_FIRST_SEEN $CHAR50.
		        PAWK_2_LAST_SEEN $CHAR50.
		        PAWK_2_BDID      $CHAR50.
		        PAWK_2_COMPANY_NAME $CHAR50.
		        PAWK_2_DEPARTMENT $CHAR50.
		        PAWK_2_FEIN      $CHAR50.
		        PAWK_2_ADDRESS   $CHAR50.
		        PAWK_2_CITY      $CHAR50.
		        PAWK_2_STATE     $CHAR50.
		        PAWK_2_ZIP5      $CHAR50.
		        PAWK_2_ZIP4      $CHAR50.
		        PAWK_2_PHONE10   $CHAR50.
		        PAWK_2_VERIFIED  $CHAR50.
		        PAWK_2_EMAIL     $CHAR50.
		        PAWK_3_DID       $CHAR50.
		        PAWK_3_CONFIDENCE_LEVEL $CHAR50.
		        PAWK_3_FIRST     $CHAR50.
		        PAWK_3_MIDDLE    $CHAR50.
		        PAWK_3_LAST      $CHAR50.
		        PAWK_3_SUFFIX    $CHAR50.
		        PAWK_3_SSN       $CHAR50.
		        PAWK_3_TITLE     $CHAR50.
		        PAWK_3_FIRST_SEEN $CHAR50.
		        PAWK_3_LAST_SEEN $CHAR50.
		        PAWK_3_BDID      $CHAR50.
		        PAWK_3_COMPANY_NAME $CHAR50.
		        PAWK_3_DEPARTMENT $CHAR50.
		        PAWK_3_FEIN      $CHAR50.
		        PAWK_3_ADDRESS   $CHAR50.
		        PAWK_3_CITY      $CHAR50.
		        PAWK_3_STATE     $CHAR50.
		        PAWK_3_ZIP5      $CHAR50.
		        PAWK_3_ZIP4      $CHAR50.
		        PAWK_3_PHONE10   $CHAR50.
		        PAWK_3_VERIFIED  $CHAR50.
		        PAWK_3_EMAIL     $CHAR50.
		        PAWK_4_DID       $CHAR50.
		        PAWK_4_CONFIDENCE_LEVEL $CHAR50.
		        PAWK_4_FIRST     $CHAR50.
		        PAWK_4_MIDDLE    $CHAR50.
		        PAWK_4_LAST      $CHAR50.
		        PAWK_4_SUFFIX    $CHAR50.
		        PAWK_4_SSN       $CHAR50.
		        PAWK_4_TITLE     $CHAR50.
		        PAWK_4_FIRST_SEEN $CHAR50.
		        PAWK_4_LAST_SEEN $CHAR50.
		        PAWK_4_BDID      $CHAR50.
		        PAWK_4_COMPANY_NAME $CHAR50.
		        PAWK_4_DEPARTMENT $CHAR50.
		        PAWK_4_FEIN      $CHAR50.
		        PAWK_4_ADDRESS   $CHAR50.
		        PAWK_4_CITY      $CHAR50.
		        PAWK_4_STATE     $CHAR50.
		        PAWK_4_ZIP5      $CHAR50.
		        PAWK_4_ZIP4      $CHAR50.
		        PAWK_4_PHONE10   $CHAR50.
		        PAWK_4_VERIFIED  $CHAR50.
		        PAWK_4_EMAIL     $CHAR50.
		        PAWK_5_DID       $CHAR50.
		        PAWK_5_CONFIDENCE_LEVEL $CHAR50.
		        PAWK_5_FIRST     $CHAR50.
		        PAWK_5_MIDDLE    $CHAR50.
		        PAWK_5_LAST      $CHAR50.
		        PAWK_5_SUFFIX    $CHAR50.
		        PAWK_5_SSN       $CHAR50.
		        PAWK_5_TITLE     $CHAR50.
		        PAWK_5_FIRST_SEEN $CHAR50.
		        PAWK_5_LAST_SEEN $CHAR50.
		        PAWK_5_BDID      $CHAR50.
		        PAWK_5_COMPANY_NAME $CHAR50.
		        PAWK_5_DEPARTMENT $CHAR50.
		        PAWK_5_FEIN      $CHAR50.
		        PAWK_5_ADDRESS   $CHAR50.
		        PAWK_5_CITY      $CHAR50.
		        PAWK_5_STATE     $CHAR50.
		        PAWK_5_ZIP5      $CHAR50.
		        PAWK_5_ZIP4     $CHAR50.
		        PAWK_5_PHONE10   $CHAR50.
		        PAWK_5_VERIFIED  $CHAR50.
		        PAWK_5_EMAIL     $CHAR50. ;
/*			INFILE "E:\SHARED\CADA\SAS SOURCE CODE\DEVELOPMENT\JHUBBARD\EBG\1_PORTFOLIO_FILE_STANDARDIZATION\PRODUCTION ENVIRONMENT TEST\DATA SERVICES OUTPUTS\LN_Output_lnwaterfall_input_EBG_20180404_1.csv"*/
			INFILE "&FILE_USE"
				DLM=','
				MISSOVER
				DSD
				FIRSTOBS=2;
			INPUT
		        ACCOUNT_NUMBER   : $CHAR50.
		        UNIQUE_NUMBER    : $CHAR50.
		        CLIENT_CODE      : $CHAR50.
		        CLIENT_INPUT_SSN : $CHAR50.
		        CLIENT_FIRST_NAME : $CHAR50.
		        CLIENT_LAST_NAME : $CHAR50.
		        BKR_FLAG         : $CHAR50.
		        CASE_NUMBER      : $CHAR50.
		        CHAPTER          : $CHAR50.
		        FILE_DATE        : $CHAR50.
		        STATUS_DATE      : $CHAR50.
		        DISPOSITION_CODE : $CHAR50.
		        SUFFIX           : $CHAR1.
		        ADDRESS          : $CHAR32.
		        ZIP_CODE         : $CHAR50.
		        SOCIAL_SECURITY_NUMBER : $CHAR50.
		        CITY_FILED       : $CHAR50.
		        STATE_FILED      : $CHAR50.
		        COUNTY           : $CHAR50.
		        FIRST_NAME       : $CHAR50.
		        MIDDLE_NAME      : $CHAR50.
		        LAST_NAME        : $CHAR50.
		        BUSINESS         : $CHAR50.
		        BUSINESS_1       : $CHAR50.
		        BUSINESS_2       : $CHAR50.
		        BUSINESS_3       : $CHAR50.
		        DEBTOR_S_CITY    : $CHAR50.
		        DEBTOR_S_STATE   : $CHAR50.
		        ECOA             : $CHAR50.
		        LAW_FIRM         : $CHAR50.
		        ATTORNEY_NAME    : $CHAR50.
		        ATTORNEY_ADDRESS : $CHAR50.
		        ATTORNEY_CITY    : $CHAR50.
		        ATTORNEY_STATE   : $CHAR50.
		        ATTORNEY_ZIP     : $CHAR50.
		        ATTORNEY_PHONE   : $CHAR50.
		        ATTORNEY_EMAIL   : $CHAR37.
		        ATTORNEY_FAX     : $CHAR50.
		        _341_DATE        : $CHAR50.
		        _341_TIME        : $CHAR50.
		        _341_LOCATION    : $CHAR50.
		        TRUSTEE          : $CHAR50.
		        TRUSTEE_ADDRESS  : $CHAR50.
		        TRUSTEE_CITY     : $CHAR50.
		        TRUSTEE_STATE    : $CHAR50.
		        TRUSTEE_ZIP      : $CHAR50.
		        TRUSTEE_PHONE    : $CHAR50.
		        JUDGE_S_INITIALS : $CHAR50.
		        FUNDS            : $CHAR50.
		        DISCHARGE_COMPLAINT_BAR_DATE : $CHAR50.
		        MATCH_CODE       : $CHAR50.
		        COURT_DISTRICT   : $CHAR50.
		        COURT_ADDRESS_1  : $CHAR50.
		        COURT_ADDRESS_2  : $CHAR50.
		        COURT_MAILING_CITY : $CHAR50.
		        COURT_ZIP        : $CHAR50.
		        COURT_PHONE      : $CHAR50.
		        DEBTOR_PHONE     : $CHAR50.
		        VOLUNTARY_INVOLUNTARY_DISMISSAL : $CHAR50.
		        PROOF_OF_CLAIM_DATE : $CHAR50.
		        MULTIPLE_DEBTOR  : $CHAR50.
		        COURT_ID         : $CHAR50.
		        TRUSTEE_ID       : $CHAR50.
		        REINSTATED_CASE_DATE : $CHAR50.
		        CLOSED_DATE      : $CHAR50.
		        CLIENT_UPDATE_FLAG : $CHAR50.
		        FILING_STATUS    : $CHAR50.
		        DEC_SSN          : $CHAR50.
		        DEC_FNAME        : $CHAR50.
		        DEC_MNAME        : $CHAR50.
		        DEC_LNAME        : $CHAR50.
		        DEC_SUFFIX       : $CHAR50.
		        DEC_ADDRESS      : $CHAR50.
		        DEC_CITY         : $CHAR50.
		        DEC_STATE        : $CHAR50.
		        DEC_ZIP          : $CHAR50.
		        DEC_COUNTY_NAME  : $CHAR50.
		        DEC_BDATE        : $CHAR50.
		        DEC_DDATE        : $CHAR50.
		        DEC_MATCHCODE    : $CHAR50.
		        DEC_SOURCE       : $CHAR50.
		        LITIGIOUSDEBTOR_FLAG : $CHAR50.
		        NAME_FIRST_1     : $CHAR50.
		        NAME_MIDDLE_1    : $CHAR50.
		        NAME_LAST_1      : $CHAR50.
		        NAME_SUFFIX_1    : $CHAR50.
		        ADDRESS_1        : $CHAR50.
		        P_CITY_NAME_1    : $CHAR50.
		        ST_1             : $CHAR50.
		        ZIP_1            : $CHAR50.
		        ADDR_DT_FIRST_SEEN_1 : $CHAR50.
		        ADDR_DT_LAST_SEEN_1 : $CHAR50.
		        CONF_ADDR_MATCH_CODE_1 : $CHAR50.
		        SUBJ_FIRST_1     : $CHAR50.
		        SUBJ_MIDDLE_1    : $CHAR50.
		        SUBJ_LAST_1      : $CHAR50.
		        SUBJ_SUFFIX_1    : $CHAR50.
		        SUBJ_PHONE_MATCH_FLAG_1 : $CHAR50.
		        SUBJ_PHONE_1     : $CHAR50.
		        SUBJ_PHONE_LISTING_NAME_1 : $CHAR50.
		        SUBJ_PHONE_POSSIBLE_RELATIONSHIP : $CHAR50.
		        SUBJ_PHONE_LINE_TYPE_1 : $CHAR50.
		        SUBJ_FIRST_2     : $CHAR50.
		        SUBJ_MIDDLE_2    : $CHAR50.
		        SUBJ_LAST_2      : $CHAR50.
		        SUBJ_SUFFIX_2    : $CHAR50.
		        SUBJ_PHONE_MATCH_FLAG_2 : $CHAR50.
		        SUBJ_PHONE_2     : $CHAR50.
		        SUBJ_PHONE_LISTING_NAME_2 : $CHAR50.
		        SUBJ_PHONE_POSSIBLE_RELATIO_0001 : $CHAR50.
		        SUBJ_PHONE_LINE_TYPE_2 : $CHAR50.
		        SUBJ_FIRST_3     : $CHAR50.
		        SUBJ_MIDDLE_3    : $CHAR50.
		        SUBJ_LAST_3      : $CHAR50.
		        SUBJ_SUFFIX_3    : $CHAR50.
		        SUBJ_PHONE_MATCH_FLAG_3 : $CHAR50.
		        SUBJ_PHONE_3     : $CHAR50.
		        SUBJ_PHONE_LISTING_NAME_3 : $CHAR50.
		        SUBJ_PHONE_POSSIBLE_RELATIO_0002 : $CHAR50.
		        SUBJ_PHONE_LINE_TYPE_3 :$CHAR50.
		        PAWK_1_FIRST     : $CHAR50.
		        PAWK_1_MIDDLE    : $CHAR50.
		        PAWK_1_LAST      : $CHAR50.
		        PAWK_1_SUFFIX    : $CHAR50.
		        PAWK_1_SSN       : $CHAR50.
		        PAWK_1_TITLE     : $CHAR50.
		        PAWK_1_FIRST_SEEN : $CHAR50.
		        PAWK_1_LAST_SEEN : $CHAR50.
		        PAWK_1_BDID      : $CHAR50.
		        PAWK_1_COMPANY_NAME : $CHAR50.
		        PAWK_1_DEPARTMENT : $CHAR50.
		        PAWK_1_FEIN      : $CHAR50.
		        PAWK_1_ADDRESS   : $CHAR50.
		        PAWK_1_CITY      : $CHAR50.
		        PAWK_1_STATE     : $CHAR50.
		        PAWK_1_ZIP5      : $CHAR50.
		        PAWK_1_ZIP4      : $CHAR50.
		        PAWK_1_PHONE10   : $CHAR50.
		        PAWK_1_VERIFIED  : $CHAR50.
		        PAWK_1_EMAIL     : $CHAR50.
		        PAWK_2_DID       : $CHAR50.
		        PAWK_2_CONFIDENCE_LEVEL : $CHAR50.
		        PAWK_2_FIRST     : $CHAR50.
		        PAWK_2_MIDDLE    : $CHAR50.
		        PAWK_2_LAST      : $CHAR50.
		        PAWK_2_SUFFIX    : $CHAR50.
		        PAWK_2_SSN       : $CHAR50.
		        PAWK_2_TITLE     : $CHAR50.
		        PAWK_2_FIRST_SEEN : $CHAR50.
		        PAWK_2_LAST_SEEN : $CHAR50.
		        PAWK_2_BDID      : $CHAR50.
		        PAWK_2_COMPANY_NAME : $CHAR50.
		        PAWK_2_DEPARTMENT : $CHAR50.
		        PAWK_2_FEIN      : $CHAR50.
		        PAWK_2_ADDRESS   : $CHAR50.
		        PAWK_2_CITY      : $CHAR50.
		        PAWK_2_STATE     : $CHAR50.
		        PAWK_2_ZIP5      : $CHAR50.
		        PAWK_2_ZIP4      : $CHAR50.
		        PAWK_2_PHONE10   : $CHAR50.
		        PAWK_2_VERIFIED  : $CHAR50.
		        PAWK_2_EMAIL     : $CHAR50.
		        PAWK_3_DID       : $CHAR50.
		        PAWK_3_CONFIDENCE_LEVEL : $CHAR50.
		        PAWK_3_FIRST     : $CHAR50.
		        PAWK_3_MIDDLE    : $CHAR50.
		        PAWK_3_LAST      : $CHAR50.
		        PAWK_3_SUFFIX    : $CHAR50.
		        PAWK_3_SSN       : $CHAR50.
		        PAWK_3_TITLE     : $CHAR50.
		        PAWK_3_FIRST_SEEN : $CHAR50.
		        PAWK_3_LAST_SEEN : $CHAR50.
		        PAWK_3_BDID      : $CHAR50.
		        PAWK_3_COMPANY_NAME : $CHAR50.
		        PAWK_3_DEPARTMENT : $CHAR50.
		        PAWK_3_FEIN      : $CHAR50.
		        PAWK_3_ADDRESS   : $CHAR50.
		        PAWK_3_CITY      : $CHAR50.
		        PAWK_3_STATE     : $CHAR50.
		        PAWK_3_ZIP5      : $CHAR50.
		        PAWK_3_ZIP4      : $CHAR50.
		        PAWK_3_PHONE10   : $CHAR50.
		        PAWK_3_VERIFIED  : $CHAR50.
		        PAWK_3_EMAIL     : $CHAR50.
		        PAWK_4_DID       : $CHAR50.
		        PAWK_4_CONFIDENCE_LEVEL : $CHAR50.
		        PAWK_4_FIRST     : $CHAR50.
		        PAWK_4_MIDDLE    : $CHAR50.
		        PAWK_4_LAST      : $CHAR50.
		        PAWK_4_SUFFIX    : $CHAR50.
		        PAWK_4_SSN       : $CHAR50.
		        PAWK_4_TITLE     : $CHAR50.
		        PAWK_4_FIRST_SEEN : $CHAR50.
		        PAWK_4_LAST_SEEN : $CHAR50.
		        PAWK_4_BDID      : $CHAR50.
		        PAWK_4_COMPANY_NAME : $CHAR50.
		        PAWK_4_DEPARTMENT : $CHAR50.
		        PAWK_4_FEIN      : $CHAR50.
		        PAWK_4_ADDRESS   : $CHAR50.
		        PAWK_4_CITY      : $CHAR50.
		        PAWK_4_STATE     : $CHAR50.
		        PAWK_4_ZIP5      : $CHAR50.
		        PAWK_4_ZIP4      : $CHAR50.
		        PAWK_4_PHONE10   : $CHAR50.
		        PAWK_4_VERIFIED  : $CHAR50.
		        PAWK_4_EMAIL     : $CHAR50.
		        PAWK_5_DID       : $CHAR50.
		        PAWK_5_CONFIDENCE_LEVEL : $CHAR50.
		        PAWK_5_FIRST     : $CHAR50.
		        PAWK_5_MIDDLE    : $CHAR50.
		        PAWK_5_LAST      : $CHAR50.
		        PAWK_5_SUFFIX    : $CHAR50.
		        PAWK_5_SSN       : $CHAR50.
		        PAWK_5_TITLE     : $CHAR50.
		        PAWK_5_FIRST_SEEN : $CHAR50.
		        PAWK_5_LAST_SEEN : $CHAR50.
		        PAWK_5_BDID      : $CHAR50.
		        PAWK_5_COMPANY_NAME : $CHAR50.
		        PAWK_5_DEPARTMENT : $CHAR50.
		        PAWK_5_FEIN      : $CHAR50.
		        PAWK_5_ADDRESS   : $CHAR50.
		        PAWK_5_CITY      : $CHAR50.
		        PAWK_5_STATE     : $CHAR50.
		        PAWK_5_ZIP5      : $CHAR50.
		        PAWK_5_ZIP4      : $CHAR50.
		        PAWK_5_PHONE10   : $CHAR50.
		        PAWK_5_VERIFIED  : $CHAR50.
		        PAWK_5_EMAIL     : $CHAR50. ;
		RUN;

%MEND;