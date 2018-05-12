OPTIONS NOXWAIT;

%LET TRIGGER = 1;

%MACRO DIRECTORIES(SHOULD_RUN=);

	%IF &SHOULD_RUN. = 1 %THEN 
		%DO;
			%SYSEXEC MKDIR "E:\SHARED\CADA\SAS Source Code\Development\JHubbard\EBG\1_Portfolio_File_Standardization\Production Environment Test\Export to Beam\&DATE."
						   "E:\SHARED\CADA\SAS Source Code\Development\JHubbard\EBG\1_Portfolio_File_Standardization\Production Environment Test\Data Services Inputs\&DATE."
						   "E:\SHARED\CADA\SAS Source Code\Development\JHubbard\EBG\1_Portfolio_File_Standardization\Production Environment Test\Data Services Outputs\&DATE.";

/*			%SYSEXEC COPY "E:\SHARED\CADA\SAS DATA\STATE AUDIT PROGRAMS\&STATE\RAW DATA" "E:\SHARED\CADA\SAS DATA\STATE AUDIT PROGRAMS\&STATE\ARCHIVE\BACKUP_&DATE\RAW DATA";*/
/*			%SYSEXEC COPY "E:\SHARED\CADA\SAS DATA\STATE AUDIT PROGRAMS\&STATE\RESULTS"  "E:\SHARED\CADA\SAS DATA\STATE AUDIT PROGRAMS\&STATE\ARCHIVE\BACKUP_&DATE\RESULTS";			*/
		%END;

%MEND;

%DIRECTORIES(SHOULD_RUN=&TRIGGER)