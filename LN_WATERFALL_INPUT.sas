/*CREATE LN_WATERFALL_INPUT*/

DATA LN_WATERFALL_INPUT;
	SET DATA_SERVICES_INPUTS_MASTER;
	DROP DOB;
RUN;