/*CREATE LN_SCRA_INPUT */

DATA LN_SCRA_INPUT;
	SET DATA_SERVICES_INPUTS_MASTER;
	DROP AGREEMENT_DATE;
RUN;