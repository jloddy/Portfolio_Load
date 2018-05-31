%MACRO IMPORT_MILITARY();

		DATA MILITARY_INPUT;
		    LENGTH
		        F1               $ 9
		        F2               $ 10
		        F3               $ 26
		        F4               $ 20
		        F5               $ 28
		        F6               $ 10
		        F7               $ 3
		        F8               $ 69
		        F9               $ 26
		        F10              $ 64
		        F11              $ 32
		        F12              $ 20
		        F13              $ 15 ;
		    FORMAT
		        F1               $CHAR9.
		        F2               $CHAR10.
		        F3               $CHAR26.
		        F4               $CHAR20.
		        F5               $CHAR28.
		        F6               $CHAR10.
		        F7               $CHAR3.
		        F8               $CHAR69.
		        F9               $CHAR26.
		        F10              $CHAR64.
		        F11              $CHAR32.
		        F12              $CHAR20.
		        F13              $CHAR15. ;
		    INFORMAT
		        F1               $CHAR9.
		        F2               $CHAR10.
		        F3               $CHAR26.
		        F4               $CHAR20.
		        F5               $CHAR28.
		        F6               $CHAR10.
		        F7               $CHAR3.
		        F8               $CHAR69.
		        F9               $CHAR26.
		        F10              $CHAR64.
		        F11              $CHAR32.
		        F12              $CHAR20.
		        F13              $CHAR15. ;
		    INFILE "&FILE_USE"
		        LRECL=32767
		        ENCODING="WLATIN1"
		        TRUNCOVER ;
		    INPUT
		        @1     F1                $CHAR9.
		        @10    F2                $CHAR8.
		        @18    F3               $CHAR26.
		        @44    F4               $CHAR20.
		        @64    F5               $CHAR28.
		        @92    F6                $CHAR8.
		        @100   F7               $CHAR3.
		        @103   F8               $CHAR69.
		        @172   F9               $CHAR26.
		        @198   F10              $CHAR64.
		        @262   F11              $CHAR32.
		        @294   F12              $CHAR20.
		        @314   F13              $CHAR15. ;
		RUN;


%MEND;