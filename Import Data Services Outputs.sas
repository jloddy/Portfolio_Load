%MACRO IMPORT_DATA_SERVICES_OUTPUT();

		%IF &TOTAL_COUNTER_USE.= 1   %THEN 
			%DO;					
				%IF &TYPE_USE. = LN   %THEN 
						%DO;
							/*IMPORT LN_WATERFALL*/
								%INCLUDE "&WHEREPRGMSAT\IMPORT LN_LNWATERFALL_INPUT.SAS";
								%IMPORT_LNWATERFALL
						%END;
				%ELSE %IF &TYPE_USE. = TLO   %THEN 
						%DO;
							/*IMPORT TLO*/
								%INCLUDE "&WHEREPRGMSAT\IMPORT TLO_WATERFALL_INPUT.SAS";
								%IMPORT_TLO
						%END;
				%ELSE %IF &TYPE_USE. = LNPMTSCORE   %THEN 
						%DO;	
							/*IMPORT LNPMTSCORE*/
								%INCLUDE "&WHEREPRGMSAT\IMPORT LNPMTSCORE_INPUT.SAS";
								%IMPORT_LNPMTSCORE
						%END;
			%END;

		%ELSE %IF &TOTAL_COUNTER_USE.^= 1   %THEN 
			%DO; 
				%IF &TYPE_USE. = LN   %THEN 
						%DO;
							/*IMPORT LN_WATERFALL*/
								%INCLUDE "&WHEREPRGMSAT\IMPORT LN_LNWATERFALL_INPUT.SAS";
								%IMPORT_LNWATERFALL

						%END;
				%ELSE %IF &TYPE_USE. = TLO   %THEN 
						%DO;
							/*IMPORT TLO*/
								%INCLUDE "&WHEREPRGMSAT\IMPORT TLO_WATERFALL_INPUT.SAS";
								%IMPORT_TLO
						%END;
				%ELSE %IF &TYPE_USE. = LNPMTSCORE   %THEN 
						%DO;	
							/*IMPORT LNPMTSCORE*/
								%INCLUDE "&WHEREPRGMSAT\IMPORT LNPMTSCORE_INPUT.SAS";
								%IMPORT_LNPMTSCORE
						%END;
			%END;

%MEND;




	