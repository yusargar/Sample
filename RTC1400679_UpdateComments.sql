--<ScriptOptions statementTerminator=";"/>

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ABC_CODE_ID IS
'Charge Details-A finance code used to specify a task within a data point. This identifier is represented as the last two characters of the Activity code. For example, the support data point may include market support, local I/S support or warranty fixes.  The services data point may include usability, consulting, or info dev.*character(A-Z, 0 - 9). It is associated with labor claiming.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ACCOUNT_DIV_CD IS
'Project Info-The code that uniquely identifies the IBM division charged for the charges associated with the Account ID (The Charge_div_code field in PACT). Alphanumeric characters (A-Z, 0-9). Valid divisions are defined on the BMSIW.DIV_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ACCOUNT_DIVDPT_ID IS
'Project Info-The concatenation of ACCOUNT_DIV_CD and ACCOUNT_DPT_ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ACCOUNT_DPT_ID IS
'Project Info-The department number that is charged for the charges assigned to Account_ID (The Charge_dept_ID field in PACT). Alphanumeric characters (A-Z, 0-9). Populated based on the Account ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ACCOUNT_ID IS
'Project Info-The unique identifier for a Project, aka CFT/S worknumber. In iERP this is called the WBS short ID. The labor charge number assigned to each customer for chargeback purposes. It is used to track and report on labor expended on contracts, opportunities and internal projects. Can be tied to the BMS project number on the ICA or in CIAS. The accounting information is specific for the Requestor/Importer/Charge To on the ACCOUNT_ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ACCT_PRACTICE_CD IS
'Commercial-Account practice code. Practices are designations that Country/Companies can use to group people and/or Contracts. Practices are sometimes used to group people by a skill type/set.  Most Practices will be intended for use by a particular Country/Company.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ACCT_TYP_CD IS
'Project Info-The account type code based on the Account_ID. VALID VALUES: C-Contract Account I-Internal Account O-Opportunity Account T-Internal/Transfer Price Account.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ACCTGRP_ID IS
'Project Info-The Unique identifier of an account group/contract. For example, all work numbers (accounts) belong to a contract (account group). Must be within the valid range as defined in the BMSIW.ACCT_GRP_RNG table. Assigned based on the ACCOUNT_ID';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ACT_LEDGER_LVL_CD IS
'Project Info-Actual charge to accounting information. VALID VALUES: A - Accounting was used from the account record. G - Accounting was used off the Account Group record or escalated to Account Group level because valid Accounting information was not found at the account level.  N - Account Level, but was not escalated to Account Group level. Populated based on the Account ID. It can also be blank.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ACTIVITY_CD IS
'Charge Details-The concatenation of SERVICE_TYPE_ID, SERVICE_ID, SERVICE_ENV_ID, DATA_POINT_ID and ABC_CODE_ID. It is associated with labor claiming.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ADJUSTMENT_ID IS
'System Use-An identifier used to hold the Mass Update or Incident Number of a change';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.APPL_CD IS
'System Use-Field is always populated and relates to the service provider. If sent blank it defaults to the ORIG_LOC_CD. Valid codes can be found on BMSIW.APPLICATION_CODE_V';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.APPLICATION_ID IS
'System Use-Used in the EMEA interface to BDW, no longer used.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.BDW_LOAD_SEQ IS
'System Use-The sequence number of the BDW LOAD the item was inserted into BDW.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.BUS_TYP_CD IS
'Charge Details-Business type code from the Contract Management System (CFT/S). A country-specific code that identifies the main portion of work charged to the account. It is a classification of the service IBM will provide to a customer and is used to help derive charge to accounting for commerical Account IDs. Valid combinations are based on the Account ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CAL_MONTH_NUM IS
'Charge Details-Calendar number (1-12) of the month in the year. This field is in the CHAGRP_CALM_XXX and CHAGRP_CAyy_XXX tables only. Used for measurment purposes.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHARGABLE_FG IS
'Charge Details-Usage is chargeable. If Chargeback feeds ledger for this provider, charges will be sent. Y or N is valid.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_CIAS_CTRY_CD IS
'Inter-Company-The CIAS Requesting/Importing/to be charged country number.  The complete listing of CIAS MCOs is maintained on WWIA''s website, https://apps.na.collabserv.com/wikis/home?lang=en-us#!/wiki/W66a6350063a5_4a4b_9196_cf55c8b7445a/page/IPB%27s%20-%20Country%20listing';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_CIAS_CURR_CD IS
'Inter-Company-The two digit CIAS Currency code used as the local currency for the CIAS Requesting/Importing/to be charged country on the record.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_CIAS_LOC_CD IS
'Inter-Company-CIAS Requesting/Importing/Receiving location code. Value is assigned based on ICA location code or the default location code listed on BDWDM.COMPANY_REF_V if ICAless activity. The location in CIAS drives the ledger code of the activty. Field will be left blank if activity is not CIAS activity.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_CIAS_PRCS_IND IS
'Inter-Company-Indicator which denotes if the Requesting/Importing/to be charged Country/Company  should be part of CIAS processing. Valid Values: I - ICA Required for ImportTransactions Only, E - ICA Required for Export Transactions Only, B - ICA Required for Both Import and Export transactions, N - ICA is required for Imports Y - No ICA required for any transaction';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_COMPANY_CD IS
'Charge To Info-The Requesting/Importing/to be charged company being charged for the transaction. A table containing Country Numbers and their descriptions can be found in BDWDM.COMPANY_REF_v';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_COUNTRY_CD IS
'Charge To Info-The Requesting/Importing/to be charged country number of the transaction. A table containing Country Numbers and their descriptions can be found in BDWDM.COUNTRY_REF_V.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_CTRY_CURR_CD IS
'Charge To Info-BMS Currency code of charge to country / company. The currency code must be listed on the BMSIW.CURRENCY_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_DIST_PCT IS
'Charge Details-Charge distribution percentage from dpAM share. Part of the distribution rule in PACT. If it is distributed this is the percentage that this record received for the transaction.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_GROUP_CD IS
'Charge To Info-The CHRG_GROUP_CD represents an organization that provides services and has a common set of labor rates. The rates are used for charge back of employee labor. There should be at least one set of charge groups for each country / company. Valid values must be in the CHRG_GROUP_REF table for the country / company being entered.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_ICA_NUM IS
'Inter-Company-Intercompany agreement number of the Requesting/Importing/Receiving country. Blank when registered ICA not required.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_LOC_CD IS
'Charge To Info-The elementary business unit of the Charged/Requesting/Importing country. Valid locations are defined on the BMSIW.LOC_REF_V table. Populated based on the charge to Country/Company/Department of the Account ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_LOC_TYP_CD IS
'Charge To Info-The type of CHRG_LOC_CD. The code used to identify the type of  charge from location. For example, GP = geoplex and SC = service center. "Cost Center/Profit Center". *character (A - Z, 0 - 9) values.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_LOC_XFER_CD IS
'Charge To Info-An attribute of the LOC_CD. A way to group locations and utilized in the FCR process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_METHOD_CD IS
'Charge Details-Charge method code. VALID VALUES: CBM - Chargeable, but via manual process CTA - Charge to Actual - charge based on actual hours CTP - Charge to Plan - charge based on planned hours NON - Non Chargeable TBD - used for CIF NCA - Non Chargeable Actual (used for labor charges that were charged to plan).  Current combinations can be located on the table BDWDB.ACCOUNT';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_ORG_CD IS
'Charge To Info-This is the Organization Code that the CHRG_LOC_CD belongs to. It is a grouping of LOC_CDs.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_ORG_TYP_CD IS
'Charge To Info-The type of CHRG_ORG_CD. The code used to identify the type of organization the CHRG_LOC_CD belongs to.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_ORG_XFER_CD IS
'Charge To Info-An attribute of the ORG_CD. A way to group organizations, which is utilized in the FCR process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_TYP_CD IS
'Charge Details-Charge Type Code, identifies the type of record. Possible VALUES: 1 - Adjustment/2-Ad-hoc/6-Normal Charge/R-Import secondary transaction(EMEA if no registered ICA or non-EMEA)/I-Import secondary transaction(EMEA if registered ICA)/P-Export secondary transaction(EMEA if no registered ICA or non-EMEA)/E-Export secondary transaction(EMEA if registered ICA)//B-Global Resource to Broker/U-Broker to Broker(uplift + broker burden + broker environment)/F-Broker to Customer(global resource+broker adders)/D–End transaction for delivery projects, credits the Delivery Project department and debits COR for CFT/s Worknumber/SAP';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CIAS_CURRENCY_CD IS
'Inter-Company-The two digit CIAS Currency code of the invoicing currency used to bill out the invoice. This is the amount that will appear on the CIAS invoice copies and the currency the records will be paid in.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CIAS_DEST_CD IS
'Inter-Company-CIAS destination code. Field can be populated with US, BH or blank. Details if the activity went to CIAS (US), iERP (BH) or did not flow to the intercompany system (blank).';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CIAS_INVOICE_DATE IS
'Inter-Company-The CIAS invoice date';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CIAS_INVOICE_NUM IS
'Inter-Company-The CIAS invoice number. This can be used to search for data in FDW.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CIAS_PROCESS_IND IS
'Inter-Company-Indicator which denotes if the Performing/Exporting/Charging out Country/Company  should be part of CIAS processing. Valid Values: I - ICA Required for ImportTransactions Only, E - ICA Required for Export Transactions Only, B - ICA Required for Both Import and Export transactions, N - Transaction not eligible, would not be sent to CIAS Y - No ICA required for any transaction';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CIAS_TOS_CD IS
'Inter-Company-CIAS Type of Service Code (TOS) - Must be used with a valid CIAS NEC.  Valid combinations that can be used in BMS are listed on the table BMSIW.CIAS_NEC_CODE_REF_V.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CMPTNCY_CD IS
'Charge Details-Competency code is used  to group contracts by Business Competencies.  If non-blank, must be in BDWDB.CMPTNCY_REF with open status.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CMPTNCY_SEG_CD IS
'Commercial-The competency segment code is used to group contracts by Business Competency Segments.  This value must exist in the BDWDB.CMPTNCY_SEG_REF Table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CMPTRJOB_NAME IS
'Charge Details-Computer job name of the program using the services, exists only for MVS batch jobs. Must be a alphanumeric string, blank, ‘*’, or  4-7 alphanumeric string with ‘*’ suffix. The Job Name will trigger a Distribution Rule if applicable';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CMPTRSYS_ID IS
'Charge Details-Computer System ID assigned by Service Delivery Center to uniquely identify the system that the charges originated from.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CONTROL_GROUP_CD IS
'Project Info-Identifies the domain in which the Account ID and Account Group Id are defined by. Allows the ACCOUNT_IDs to be organized by Geography. Current values are available on the table BDWDB.CONTROL_GRP_REF_V';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CUST_CONTRACT_ID IS
'Commercial-Contract number used in ledger. PACT contract number or legal contract based on Company Reference ledger contract code.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CUST_ISU_CD IS
'Commercial-ISU from RDH customer table';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CUST_ISU_SCTR_CD IS
'Commercial-Customer Sector Code based on mapping of ISU. Used for non-SMB.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CUST_REFERENCE_ID IS
'Charge Details-The customer reference ID. The original Account Id  as received by SSC from the service Provider';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CUST_SBIND_CD IS
'Commercial-Sub-industry from RDH customer table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CUST_SBIND_ISU_CD IS
'Commercial-ISU based on mapping customer number''s sub-industry to ISU';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CUST_SBIND_SCTR_CD IS
'Commercial-Customer Sector Code based on mapping of Sub-Industry. Used for SMB.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CUST_TYP_CD IS
'Commercial-Type of customer.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CUSTGRP_LVL1_ID IS
'Commercial-The Customer Level 1 is traditionally defined as a company, such as IBM or IGS. The value must exist in the Customer Group Level 1 Table. *CHARACTER (A - Z, 0 - 9) VALUES. Value must exist on the BMSIW.CUSTGRP_LVL1_ID';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CUSTGRP_LVL2_ID IS
'Commercial-The Customer Level 2 is traditionally defined as either a Line of Business (for IBM), an industry vertical type (for IGS commercial structures), or Geoplex application (for IGS internal structures).*CHARACTER (A - Z, 0 - 9) VALUES. Value must exist on the BMSIW.CUSTGRP_LVL2_ID';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CUSTGRP_LVL3_ID IS
'Commercial-This is the identifier for the level 3 Customer Group the account group corresponds to. Customer Group Level 3 is a contract name for commercial structures (for example General Electric), a service category or application for IGS internal structures (for example HELPDSK, VMPRINT), or a division for IBM structures.. *CHARACTER (A - Z, 0 - 9) VALUES. Value must exist on the BMSIW.CUSTGRP_LVL3_ID';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CUSTOMER_NO IS
'Commercial-It is the Customer Master Record number associated with the account.*character (A - Z, 0 - 9) values.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.DATA_POINT_ID IS
'Charge Details-1 character code representing a different activity for a service type. For example, 1 - Deployment for NWS, Management for ADM. This is one of the elements that makes up the activity code.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.DIST_ACCT_IND IS
'Charge Details-Distribution Account Indicator.Valid values are Y, N, and blank, which indicates if this transaction was distributed or not. Associated with the ORIG_ACCOUNT_ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.DIST_RULE_ID IS
'Charge Details-The Distribution Rule ID is used when distributing charges.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.EMP_COMPANY_CD IS
'Employee Info-The company code representing where the employee resides. Must be a valid Company_Cd in the NFTDB.COMPANY_REF table in open status for the given Country_Cd.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.EMP_COUNTRY_CD IS
'Employee Info-The country code representing where the employee resides. Must be a valid Country_Cd in the NFTDB.COUNTRY_REF table in Open status.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.EMP_DIV_CD IS
'Employee Info-The Division of the employee whose usage or expense is being charged. Must be blank or a valid Div_Cd in the NFTDB.DIV_REF table in open status.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.EMP_DIVDPT_ID IS
'Employee Info-The concatenation of the Division and Department of the employee whose usage or expense is being charged.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.EMP_DPT_ID IS
'Employee Info-The Department of the employee whose usage or expense is being charged.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.EMP_EFF_DT IS
'Employee Info-The employee''s effective work date for the project being billed. Used for labor and travel expense';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.EMP_INITS_NAME IS
'Employee Info-Employee''s first or first & middle initial.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.EMP_LAST_NAME IS
'Employee Info-Employee''s last name';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.EMP_NUM IS
'Employee Info-Serial number of the employee that incurred the charges. Used for all costing besides labor.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ENTPROC_CD IS
'System Use-Enterprise process code which groups APPL_CD to enterprise processes.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.EXP_KEY IS
'Charge Details-Expense key - The line item of the charge within the RPT_KEY from WWER that relates to this charge.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.FIN_DIST_PCT IS
'Charge Details-Financial distribution percentage. The US uses this from the NDT table, to distribute charges over several lerus. Represents what percentage this transaction was from the full charge for the accounting entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.FINCHG_ACCT_NUM IS
'Charge To Info-The financial charge to (requesting side) ledger account. Division, Major and Minor.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.FINCHG_CHRGDIV_CD IS
'Charge To Info-The financial charge to division number is the HR division of the ACCOUNT_ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.FINCHG_CHRGDPT_ID IS
'Charge To Info-The financial charge to department number is the HR department of the ACCOUNT_ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.FINCHG_DIVDPT_ID IS
'Charge To Info-The concatenation of FINCHG_CHRGDIV_CD and FINCHG_CHRGDPT_ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.FINCHG_FINDIV_CD IS
'Charge To Info-The financial charge to division is the ledger division of the charge to entity.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.FINCHG_FINDPT_ID IS
'Charge To Info-The financial charge to department is the ledger department of the charge to entity.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.FINCHG_FINDVDPT_ID IS
'Charge To Info-The concatenation of Financial charge division and department, FINCHG_FINDIV_CD and FINCHG_FINDPT_CD';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.FINCHG_LERU_ID IS
'Charge To Info-The financial charge to Ledger Reporting Unit (LERU) for the requesting/charge to ledger entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.FINCHG_LGR_DEST_CD IS
'Charge To Info-The destination code for the charge to entry. Indicates the ledger instance the transaction was sent to.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.FINCHG_LGR_LOC_CD IS
'Charge To Info-Indiates the ledger code used for the charge to entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.FINCHG_LOB_ID IS
'Charge To Info-Line of business where the division is charged. Must exist for the given Charge To Country/Company in the NFTV.Lob_Ref table in open status.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.FINCHG_ORDREF_NUM IS
'Charge To Info-Financial charge to order reference number sent to the ledger.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.FINCHG_PROJ_NUM IS
'Charge To Info-This is the project number which BMS sends to ledger for the transaction.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.FINCHG_SRC_CD IS
'Charge To Info-Financial charge source code used for ledger process. This is the key used (along with FINCHG_SRCTYP_CD) in finding the accounting information for the transaction from the BDWDM.GFT_V.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.FINCHG_SRCDVDPT_ID IS
'Charge To Info-No longer a used field.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.FINCHG_SRCTYP_CD IS
'Charge To Info-Financial charge source code used for ledger process. This is the key used (along with FINCHG_SRC_CD) in finding the accounting information for the transaction from the BDWDM.GFT_V. Values: A - PACT ACCOUNT TABLE, ACCOUNT WITH OVERRIDE ACCOUNTING, G - PACT ACCOUNT GROUP TABLE, ACCTGRP ID WITH OVERRIDE ACCOUNTING, D - PACT DEPT REF HR DEPT WITH OVERRIDE ACCOUNTING, F - PACT DEPT REF FIN DPT (NON-US), U.S.NDT FILE, B - PACT BUS TYP REF TABLE, S - iERP BUILT ACCOUNTING';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.FINCHG_SUBMIN_NUM IS
'Charge To Info-The subminor of the charge to country used to charge for the transaction.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.FINREL_ACCT_NUM IS
'Charge out Info-The financial relief (performing side) ledger account. Division, Major and Minor.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.FINREL_CHRGDPT_ID IS
'Charge out Info-The financial relief department is the ledger department of the charging out entity.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.FINREL_FINDIV_CD IS
'Charge out Info-The financial relief division is the ledger division of the charging out entity.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.FINREL_LERU_ID IS
'Charge out Info-The financial charge from Ledger Reporting Unit (LERU) for the performing/charge from ledger entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.FINREL_LGR_DEST_CD IS
'Charge out Info-The destination code for the charge from entry. Indicates the ledger instance the transaction was sent to.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.FINREL_LGR_LOC_CD IS
'Charge out Info-Indiates the ledger code used for the charge from entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.FINREL_ORDREF_NUM IS
'Charge out Info-Financial ledger relief order reference number. On export records (CHRG_TYP_CD E or P) CHRG_CIAS_CTRY_CD || ACCOUNT_ID_';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.FINREL_PROJ_NUM IS
'Charge out Info-This is the project number which BMS sends to ledger for the transaction.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.FINREL_SUBMIN_NUM IS
'Charge out Info-The subminor of the charge from country used to charge for the transaction.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.FINREL_WORKDPT_ID IS
'Charge out Info-Financial ledger relief department associated with the recovery transaction.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.FRI_HRS IS
'Charge Details-Hours charged for Friday.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ICA_CURRENCY_CD IS
'Inter-Company-The two digit CIAS Currency code on ICA document. Generally relates to the invoicing currency of the Performing country';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.IMAP_NUM IS
'System Use-IBM Master Application Portfolio.  The IMAP number from the BTMT application.All IMAP numbers are kept on BMSIW.IMAP_REF';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.INDSOL_AREA_CD IS
'Commercial-Industry Solution Area Code.  Also known as ISA Code.  If non-blank, must be in INDSOL_AREA_REF with open status.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.INDUSTRY_CLASS IS
'Commercial-The Industry Class';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.LBR_GROUP_ID IS
'Charge Details-The labor group id identifies a logical group of CLAIM users.  Most country / companies will use one Labor Group (Labor Group Id is known as Group Id in CLAIM).  Labor groups are used to determine the default set of work items that an employee may charge time to.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.LBR_SYS_ID IS
'System Use-Labor System ID. Identifies the CLAIM system supporting a department. The labor system id identifies a physical installation of CLAIM.  Most geographies will use one labor system. This value must exist in the LBR_SYS_USAGE table for the country / company being entered.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.LEDGER_FG IS
'Charge Details-Indicates whether the records are sent to the ledger:N-Not sent to the ledger/I-May be sent to the ledger by a manual (ICA) process/Y-Automatically sent to the ledger/C-Records are processed via CIAS.They will show CIAS''s ledger source.The charge and relief records are the ''net result'' of CIAS and BMS secondary transactions./B-BH to BH Represents Blue Harmony to Blue Harmony transactions./A-Accrual Base record for the ODA Accrual process, which is reversed the following month.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.LEDGER_LOAD_SEQ IS
'System Use-Sequence Number of the Month End costing cycle - Can be used to join with CHRG_LCLXX and CHRG_LADXX to pull further record information.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.LEDGER_MONTH_NUM IS
'System Use-The month of the of the costing cycle - Can be used to join with CHRG_LCLXX and CHRG_LADXX to pull further record information.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.LEDGER_PROJECT_ID IS
'System Use-Ledger Project Ids are projects as defined in the ledger, the Ledger Project Identifier (LPID) is used to tag cost  and revenue entries in the ledger. Field is no longer in use.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.LEDGER_YEAR_NUM IS
'System Use-The year of the of the costing cycle for the item.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.LEGAL_CONTRACT_ID IS
'Project Info-The legal contract Id. Populated based on the company''s request.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.MON_HRS IS
'Charge Details-Hours charged for Monday.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.NODE_ID IS
'System Use-The Computer System ID assigned by ISSC to uniquely identify the system that the system usage is consumed on.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.OFFERING_CD IS
'Commercial-An Offering Code is a description code used to further classify the services being performed for the charge. It is also known as the Offering Comp Code in PACT. If non-blank, must be in BMSIW.OFFERING_COMP_REF with open status.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.OFFERING_LOB_ID IS
'Commercial-Line of Business assigned to Offering Category. An opportunity linked to an Account_ID would be found on table BDWDM.DPCHARGE_V';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.OPPORTUNITY_ID IS
'Commercial-The id for a potential contract. Opportunity Ids are assigned by OMSYS(OMSYSNO) to potential contracts where marketing is active but a contract has not been initiated. The Opportunity ID must be valid on the BMSIW.EIW_OPPTNY_ICA_V table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_ACCT_TYP_CD IS
'Project Info-The original type of account as received by SSC from the service Provider';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_BUS_TYP_CD IS
'Charge Details-The business type of the Account_ID being processed.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_CIAS_CTRY_CD IS
'Inter-Company-CIAS Performing/Exporting/Charging out country number.  The listing of MCOs is maintained on WWIA''s website, https://apps.na.collabserv.com/wikis/home?lang=en-us#!/wiki/W66a6350063a5_4a4b_9196_cf55c8b7445a/page/IPB%27s%20-%20Country%20listing';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_CIAS_LOC_CD IS
'Inter-Company-CIAS Perfoming/Exporting/Charging out location code. Value is assigned based on ICA location code or the default location code listed on BDWDM.COMPANY_REF_V if ICAless activity. The location in CIAS drives the ledger code of the activty. Field will be left blank if activity is not CIAS activity.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_CMPTNCYSEG_CD IS
'Charge out Info-Originating Competency Segment Code. Competency code is used  to group employees by Business Competencies.  If non-blank, must be in BDWDB.CMPTNCY_REF with open status.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_COMPANY_CD IS
'Charge out Info-The performing/exporting/charging out company being charged for the transaction. A table containing Country Numbers and their descriptions can be found in BDWDM.COMPANY_REF_V';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_COUNTRY_CD IS
'Charge out Info-The performing/exporting/charging out country number of the record. A table containing Country Numbers and their descriptions can be found in BDWDM.COUNTRY_REF_V.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_CURRENCY_CD IS
'Charge out Info-BMS costing currency code of originating country / company. This identifies the currency used for TOT_CHRG_AMT or UNIT_PRICE_AMT. The currency code must be listed on the BMSIW.CURRENCY_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_DIV_CD IS
'Charge out Info-The HR division associated with the service provider.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_DIVDPT_ID IS
'Charge out Info-The concatenation of ORIG_DIV_CD and ORIG_DPT_ID';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_DPT_ID IS
'Charge out Info-The HR division associated with the service provider.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_DPT_LOCTYP_CD IS
'Charge out Info-The type of ORIG_DEPT_ID. The code used to identify the type of  charge from department. For example, GP = geoplex and SC = service center. "Cost Center/Profit Center". *character (A - Z, 0 - 9) values.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_DPT_XFER_CD IS
'Charge out Info-An attribute of the relief department. A way to group locations and utilized in the FCR process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_EMP_NUM IS
'Employee Info-The employee serial number originally sent to BMS. This column applies to labor charges only.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_FA_CD IS
'Charge out Info-Financial Area code of the originating country. Another level of organizing departmnets. It is at the FA code level where labor rates for specific charge groups are determined. Must exist in NFTV.FA_CODE_REF for the Employee’s Country, Company and Div in open status.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_ICA_NUM IS
'Inter-Company-Intercompany agreement number of the Perfoming/Exporting/Charging out country. Blank when registered ICA not required or used.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_INITS_NAME IS
'Employee Info-The first or first & middle initials of the employee originating the charges. This column applies to labor charges only.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_LAST_NAME IS
'Employee Info-The last name of the employee originating the charges. This column applies to labor charges only.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_LOC_CD IS
'Charge out Info-The elementary business unit of the Charge from/Performing/Exporting country. Valid locations are defined on the BMSIW.LOC_REF_V table. Populated based on the relief department.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_LOC_TYP_CD IS
'Charge out Info-The type of ORIG_LOC_CD. The code used to identify the type of  originating location. For example, GP = geoplex and SC = service center. "Cost Center/Profit Center". *character (A - Z, 0 - 9) values.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_LOC_XFER_CD IS
'Charge out Info-An attribute of the LOC_CD. A way to group locations and utilized in the FCR process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_LOC_XFER_PCT IS
'Charge out Info-It’s the percentage used to uplift labor when FCR is applicable, based on the ORIG_LOC_CD';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_LVL1_CD IS
'Charge out Info-Level 1 code-Represents consolidation of Geographies and HQ org. into a worldwide group. The top level of service provider hierarchy - Level 5 in the BMS Business Model.*character (A - Z, 0 - 9) values. Values can be found on BMSIW.ORIG_LVL1_REF';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_LVL2_CD IS
'Charge out Info-Level 2 code-represents consolidation of a group of countries such as NA, EMEA, LA.   The second level of service provider hierarchy - Level 4 in the BMS Business Model corresponding to a geography.*character (A - Z, 0 - 9) values Values can be found on BMSIW.ORIG_LVL2_REF';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_LVL3_CD IS
'Charge out Info-Level 3 code representing a single country or group of countries as a single entity. The third level of service provider hierarchy - Level 3 in the BMS Business Model corresponding to a country.*character (A - Z, 0 - 9) value. Values can be found on BMSIW.OIG_LVL3_REF.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_ORG_CD IS
'Charge out Info-This is the Organization Code that the CHRG_LOC_CD belongs to. It is a grouping of LOC_CDs.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_ORG_TYP_CD IS
'Charge out Info-The type of CHRG_ORG_CD. The code used to identify the type of organization the CHRG_LOC_CD belongs to.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_ORG_XFER_CD IS
'Charge out Info-An attribute of the ORG_CD. A way to group organizations, which is utilized in the FCR process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_ORG_XFER_PCT IS
'Charge out Info-It’s the percentage used to uplift labor when FCR is applicable, based on the ORIG_ORG_CD.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_PRACTICE_CD IS
'Employee Info-The employee practice code. Practices are designations that Country/Companies can use to group people and/or Contracts. Practices are sometimes used to group people by a skill type/set.  Most Practices will be intended for use by a particular Country/Company.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIGINAL_USAGE_QTY IS
'Charge Details-Shows volume of usage of the original transaction. Source key identifies which records were created by the same original transaction. The original record will show Original_Usage_Qty and Usage_Qty. Any secondary transactions for the same source key will retain the Original_Usage_qty, however the Usage_Qty will be 0.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.OVRTM_HRS_IND IS
'Charge Details-Overtime hours indicator. N = No / Y = Yes / Blank = charges do not relate to work hours.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.OWNG_GEO_CD IS
'Project Info-The geography (GEO) of the country/company which owns the ACCOUNT_ID';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.OWNG_LOB_CD IS
'Project Info-The Line Of Business (LOB) which owns the ACCOUNT_ID';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.OWNG_RGN_CD IS
'Project Info-The region (a sub-category of a GEO) owning the ACCOUNT_ID. Valid values are on BMSIW.REGION_REF_V';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.OWNING_COMPANY_CD IS
'Project Info-The company owning the Account_Id. Must be in BDWDM.COMPANY_REF with open status.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.OWNING_COUNTRY_CD IS
'Project Info-The country that owns the Account ID. Must be valid on BDWDM.COUNTRY_REF';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.OWNING_CUSTOMER_NO IS
'Project Info-Owning Customer Number. The CMR Number. Represents the customer that owns an ACCOUNT_ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.OWNING_DIV_CD IS
'Project Info-The Division code which owns the Account ID. For values, see BMSIW.DIVISION_REF.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.OWNING_DPT_ID IS
'Project Info-The department within the Division code which owns the Account ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.PLAN_EXCHG_RATE IS
'Charge Details-The Plan Exchange Rate. Rate used to convert non-U.S. currency to U.S. dollars. Used to calculate the STD_TOT_CHRG_AMT and the STD_UNIT_PRICE_AMT.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.POC_INDICATOR IS
'Charge Details-Percent Of Completion Indicator (a type of revenue recognition).  Indicates whether revenue should be recognized based on completion of work as opposed to recognizing revenue at the time billing occurs. Values: N  =  Revenue should be recognized at the time it is billed. / Y  =  Revenue should be recognized on completion of work.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.PRCSS_WK_ENDING_DT IS
'Charge Details-The Friday date prior to when the transaction was Sent to SSC';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.PRFRMNG_GEO_CD IS
'Employee Info-Employee''s geography code, only populated on Labor costing.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.PRFRMNG_LOB_CD IS
'Employee Info-The line of business of the employee charged for the usage or performing the work';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.PRFRMNG_RGN_CD IS
'Employee Info-Employee''s region. Used for labor charges only';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.PRFRMNG_SCTR_CD IS
'Employee Info-Performing Sector Code. For labor charges, based on the originating department''s Loc_Cat_Cd.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.PRICELST_ID IS
'Charge Details-The PRICELST_ID represents the price list being used and therefore determines the rates to be charged. This value must be in the BDWDB.PRICE_LIST_REF table. Generally based on the ACCOUNT_GROUP_ID';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.PROD_SYS_ID IS
'System Use-The producing system ID. Used by SSC to track service inputs and identify the system/application originating the charge.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.PROD_TYP_ID IS
'System Use-The type of system that produced the item. Used by SSC to track service inputs.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.PROFESSION_CD IS
'Employee Info-The profession of the employee being charged on behalf of.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RATECLAS_CD IS
'Charge Details-Rate Class Code indicates the period or the longevity of the service rendered. Example of valid values - OFF - CPU Off shift - PRIME - CPU prime shift. A full list of valid values can be found on BMSIW.SYS_PERIOD_REF by using the longevity code.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RECORD_TYPE IS
'Charge Details-The Record type - UTL=Utililization only; DET=Costing and utilization; BKR=broker process; ACR - Accruals';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.REF_ACCOUNT_ID IS
'Project Info-The associated CFTs work number of the delivery project (CFT_WORK_NUM in PACT). Can be blank if there is no delivery project.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.REF_CNTL_GROUP_CD IS
'Project Info-The associated control group of the delivery project (CFT_WRKNUM_CTRLGRP field in PACT). Can be blank if there is no delivery project.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ROW_SEQNO IS
'System Use-A unique number in the table for each row within the costing cycle. - Can be used to join with CHRG_LCLXX and CHRG_LADXX to pull further record information.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RPT_KEY IS
'Charge Details-The transaction key which identifies the charge sent by the upstream system. Possible values are; for Project Expense transactions the Report Key from WWER/Concur, for RBA transactions the transaction key from RBA. The field can also be blank. The field provides more information about the expense in BMSIW.PROJ_EXP_DTL and BMSIW.PROJ_EXP_SUM.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RPTGRP_CONTROL_CD IS
'Project Info-Reporting group control code. Supplied for ACCOUNT_IDs that support the IBM Account. The value ''IBM-ACCT'' is used for the Worldwide Business Process for financial reporting purposes (IBM Account). Valid values on BDWDM.CONTROL_GROUP_REF Table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RPTGRP_ID IS
'Project Info-The IPP number from BTMT, which is the value that used to be required for Internal accounts.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RPTGRP_LVL1_ID IS
'Project Info-Report Group Level 1 which represents the IBM Account initiative. (the first rollup above the ACCOUNT_ID)';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RPTGRP_LVL2_ID IS
'Project Info-Report Group Level 2 which represents the IBM Account program.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RPTGRP_LVL3_ID IS
'Project Info-Report Group Level 3 which represents the IBM Account Major Project.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RQST_LEDGER_LVL_CD IS
'Project Info-The requested charge to accounting information. VALID VALUES: A - Accounting was used from the account record. G - Accounting was used off the Account Group record or escalated to Account Group level because valid Accounting information was not found at the account level.  N - Account Level, but was not escalated to Account Group level. Populated based on the Account ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SAT_HRS IS
'Charge Details-Hours charged for Saturday.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SCRTYSYS_ID IS
'Charge Details-The Security System ID of the system the usage charge originates from. Usually the cluster on which the system resides.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SERVICE_ADDER_CD IS
'Charge Details-A qualifier of service sent by CLAIM along with the transaction. It can be used to indicate a variation to the unit price. For example, OFF-SITE, ON-SITE. Full listing of valid values can be found on BMSIW.SERVICE_ADDER_REF.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SERVICE_CD IS
'Charge Details-Service Code. Further describes the type of activity being charged for.   Examples can be:TRV, CPU, DASD, DATA. Full listing of valid values can be found on BMSIW.SERVICE_REF based on SERVICE_TYP_ID and SERVICE_ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SERVICE_CLASS_CD IS
'Charge Details-Used to group service types in SSC. Used to further classify the service.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SERVICE_DESC IS
'Charge Details-Description of the service being provided. Generally derived by the Rate list or the Price List. It is sent by WWER for WWER transactions.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SERVICE_ENV_CD IS
'Charge Details-Service Environment Code. For Example: VM, MVS, MIX, MISC, etc. Full listing of valid values can be found on BMSIW.SERVICE_ENV_REF based on SERVICE_ENV_ID. For labor this is derived by the environment element of the activity code.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SERVICE_ENV_ID IS
'Charge Details-One character code representing the environment. Generally sent along with the original transaction. For example, 2 = VM, 3 = MVS, etc. Full listing can be found on BMSIW.SERVICE_ENV_REF with an Open Status,';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SERVICE_GROUP_ID IS
'Charge Details-One of the elements used for rate assignment. Valid values can be found on BMSIW.SERVICE_GROUP_REF';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SERVICE_GROUP_ID2 IS
'Charge Details-One of the elements used for rate assignment. Valid values can be found on BMSIW.SERVICE_GROUP_REF. This is the field used to populate SERVICE_GROUP_ID in the table views.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SERVICE_ID IS
'Charge Details-Sub-Category of Service, for labor it is part of the activity code. This field translates into the SERVICE_CD based on the BMSIW.SERVICE_REF table using  the SERVICE_TYP_ID AND SERVICE_ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SERVICE_RESTYP_CD IS
'Charge Details-Service Resource Type. Represents the skill family associated with a labor record. Currently there are several different skill families that can be found on the JOB_FAMILY_REF  table. This is derived based on the employee''s job family, employee''s status and the employee''s skill family code from CLAIM. Some examples are REG-PGMR, REG-OPS, REG-CNSL, CUSTENG, CONTRACT, ETC.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SERVICE_SEG_CD IS
'Charge Details-Service Segment Code. Used to group contracts by Service Segment in combination with Competency Code and Competency Segment Code';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SERVICE_TYP_CD IS
'Charge Details-The Service Type Code represents the type of service associated to the activity.  For example, MVS, VM, LBR, OOP, ETC. For labor it is derived from the SERVICE_TYP_ID within the ACTIVTY_CD. Further descriptions can found on the table BMSIW.SERVICE_TYP_REF.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SERVICE_TYP_ID IS
'Charge Details-The identifier for the second level service classification. It is included in the Activity Code. Valid Values are on the BMSIW.SERVICE_TYP_REF. It is use to dervice the SERVICE_TYP_CD';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SERVICE_WORKTYP_CD IS
'Charge Details-Identifies the type of work being provided by this service. Further describes the type of activity being charged for.   Examples can be: DEV - Development ENH - Enhancement FIX - Maintenence For example: REQ - Requirements SUPT - Support. Full listing of valid values can be found on BMSIW.SERVICE_REF based on SERVICE_TYP_ID and SERVICE_ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SOURCE_KEY IS
'Charge Details-The unique BMS reconciling number. This is what ties all the like records together in BMS.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SOW_TYP_CD IS
'Commercial-Invoicing Type If non-blank, must be one of the following values: HR = Hourly / RC = Recurring Charge / BE = Best Estimate / IC = Incidental Charge / FP = Fixed Price / DR = Daily Rate';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SRC_ID IS
'System Use-Source of the employee information 1=CLAIM / 2 = EMF / 0 = Non-Labor source.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.STD_TOT_CHRG_AMT IS
'Charge Details-This is the USD amount calculated using the TOT_CHRG_AMT and the plan exchange rate. For countries that do not have a plan rate the monthly I/E average exchange rate is used.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.STD_UNIT_PRICE_AMT IS
'Charge Details-This is the USD amount calculated using the UNIT_PRICE_AMT and the plan exchange rate. For countries that do not have a plan rate the monthly I/E average exchange rate is used.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SUN_HRS IS
'Charge Details-Hours charged for Sunday.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SYS_PERIOD_CD IS
'System Use-Indicates time period of system usage consumption or category for labor rate application that is being charged (ex. prime, offshift, etc.) Some examples are; P01, P02, L2, LN, etc.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.THU_HRS IS
'Charge Details-Hours charged for Thursday.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.TOT_CHRG_AMT IS
'Charge Details-The Total Charge Amount is the complete amount being charged for the transaction in the originating country''s costing currency.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.TUE_HRS IS
'Charge Details-Hours charged for Tuesday.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.UM_DESC IS
'Charge Details-The description of a unit of measure id being chaged for, such as hours, GIGS, months.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.UNIT_PRICE_AMT IS
'Charge Details-Pricelist Unit Price used in determining amount to be charged for the transaction in the originating country''s costing currency.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.UNIT_PRICE_SRCE IS
'Charge Details-Indicates where the Unit Price was derived from. Some expamples are OOP/CTP/SAP/BCS FCR/Blank. Blank generally means the PACT RATELIST was used.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.USAGE_MONTH_NUM IS
'Charge Details-Only the ''month'' portion of the date that the charge is being claimed for.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.USAGE_QTY IS
'Charge Details-Shows volume of usage of the original transaction. Source key identifies which records were created by the same original transaction. The original record will show Original_Usage_Qty and Usage_Qty. Any secondary transactions for the same source key will retain the Original_Usage_qty, however the Usage_Qty will be 0.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.USAGE_YEAR_NUM IS
'Charge Details-Only the ''year'' portion of the date that the charge is being claimed for.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.USER_ID IS
'Employee Info-For DASD, may also be a RACF group name, an HLQ, or Owner. Field can be alphanumeric with wildcards.  Wildcard entries must be at least 4 characters long with a ‘*’ suffix.  The use of  the following special characters are allowed:  @ , $. If the  SERVICE_CD is not ‘CPU’ or “*”, a USER_ID value of other than ‘*” is required.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.UTIL_DMN_CD IS
'Employee Info-Utilization Domain code. Used in Utilization reporting. The utilization domain code is assigned to segment labor based on the geographical relationship between the practitioner performing the labor and the organization that owns the contract/work item for which the labor is being performed.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.UTIL_TYP_CD IS
'Employee Info-Utilization Type code. Used in the Utilization reporting. The utilization type code is assigned to segment labor based primarily on the PACT account type code associated with the claimed labor.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.VIEW_ID IS
'System Use-An id which causes this row/record to appear in a particular view. (LBR, MISC, NET, HOST, DASD, TAPE, etc). Field is no longer applicable.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.VIEW_SET_CD IS
'System Use-This code was used to subdivide a physical table into logical customer views (LOB, etc.) Field no longer applicable.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.WED_HRS IS
'Charge Details-Hours charged to Wednesday.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.WEEK_ENDING_DATE IS
'Charge Details-Week Ending date for the period that the transaction was for.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.WORK_ITEM_ID IS
'Charge Details-Value directly from CLAIM - the work item against which labor is being claimed. Used for measurment purposed under the ACCOUNT_ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.XFER_TYP_CD IS
'Charge Details-This code is used for the FCR process. Can be populated with G meaning it went through the FCR process. All other values (N or blank) means it did not go through the FCR process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_CTRY_CMPNY_CD IS
'Charge To Info-The concatenation of the BMS requesting/importing/to be charged country number and company code. A table containing Country Numbers and their descriptions can be found in BDWDM.COMPANY_REF_V.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_CTRY_CMPNY_CD IS
'Charge out Info-The concatenation of the BMS performing/exporting/charging out country number and company code. A table containing Country Numbers and their descriptions can be found in BDWDM.COMPANY_REF_V.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.LEDGER_DT IS
'System Use-The first day of the ledger month and ledger year assigned to the record.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.BASE_RATE_AMT IS
'Charge Details-The Base Rate Amount identifies the rate, without adders, associated with a given service label/group. This rate is generated through SSC.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.BURDEN_ADDER_AMT IS
'Charge Details-The Burden Adder  Rate Amount identifies the rate, associated with a given service type code. Valid values are zero (0) or any positive or negative number. This is part of the final rate calculation.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SERVCD_ADDER_AMT IS
'Charge Details-The service adder amount. Could be added based on the employee and the activity code being claimed for.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SERVENV_ADDER_AMT IS
'Charge Details-The Service environment adder amount. Could be added based on the service environment within the activity code.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SERVTYP_ADDER_AMT IS
'Charge Details-Service type adder amount. This is the adder rate added due to the service type being billed for.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CONTR_RATE IS
'Charge Details-The rate assigned to the employee from the Employee Master File record.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.DELIVERY_TAG IS
'Charge Details-Delivery tag. For non-US it’s the concatenation of ORIG_COUNTRY_CD||  ';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_SAP_CMPNY_CD IS
'iERP-The SAP company code being charged. Will be populated even if not an iERP country.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_LGR_FD_SYS_CD IS
'iERP-The Ledger Feed system code where the record was sent for the charge to side of the entry. Field can be populated with CLS (Ledger), BH (iERP), or blank (not sent).';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_ISO_CNTRY_CD IS
'Charge To Info-This is the two character ISO code for the country being charged';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.TOA_ID IS
'Charge Details-Type of Activity id. The purpose of a TOA is to provide a link between actual contract revenue and cost with the plan revenue and cost. The linkage is at a project/worknumber level by TOA. Valid codes are located on BMSIW.TOA_REF.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_COST_CENTER IS
'Charge To Info-The cost center being charged. This is an iERP specific field.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_SAP_CMPNY_CD IS
'iERP-The SAP company code of the originating country. Will be populated even if not an iERP country.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_ISO_CNTRY_CD IS
'Charge out Info-This is the two character ISO code of the originating country. Ex. Country 866 is UK, country 641 is CN.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_ISO_CURR_CD IS
'Charge To Info-The ISO equivalent curency code for ORIG_CURRENCY_CD. The worldwide accepted three character currency code equivalent to the BMS currency code. Must be ISO-defined and listed on the BMSIW.CURRENCY_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_CMP_ISO_CR_CD IS
'Charge out Info-This is the two character ISO code of the originating currency code.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_LGR_FD_SYS_CD IS
'iERP-The Ledger Feed system code where the record was sent for the originating side of the entry.. Field can be populated with CLS (Ledger), BH (iERP), or blank (Not Sent).';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_COST_CENTER IS
'Charge out Info-The cost center charging out. This is an iERP specific field.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_SAP_ACCT_NO IS
'iERP-This field is no longer used. The SAP Charge to Account number, if the charge to country is a BH country.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.REL_SAP_ACCT_NO IS
'iERP-This field is no longer used. The relief (recovery) SAP Account number, if the originating country is a BH country.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_PROFIT_CENTER IS
'iERP-This field is no longer used. The originating profit center, if the originating country is a BH country.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_PROFIT_CENTER IS
'iERP-This field is no longer used. The charge to profit center, if the charge to country is a BH country.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_WBS_ELEMENT IS
'iERP-This field is no longer used. The Charge to WBS element for SAP entries, if the charge to country is a BH country.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.REL_WBS_ELEMENT IS
'iERP-This field is no longer used. The Relief (recovery) WBS element for SAP entries, if the originating country is a BH country.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.EMP_SAP_COMPANY IS
'Employee Info-Employee''s SAP company.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.EMP_SAP_CST_CNTR IS
'Employee Info-Employee''s SAP Cost Center.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.LEDGER_REF_KEY IS
'System Use-The Ledger Reference Key. Field is no longer in use.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_LOC_CC_DPT_ID IS
'Charge out Info-Originating location cost centers department code';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SAP_LOGICAL_SYSTEM IS
'iERP-This field is no longer used. SAP logical system.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SAP_CSTACCT_TYP_CD IS
'iERP-This field is no longer used. The Sap Cost Account Type Code. If the Sap Cost Account Type is a GL Account or a Secndary Cost Element. Required for SAP Enabled Countries. Valid values are GL or CE.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SAP_CSTACCT_NO IS
'iERP-This field is no longer used. The SAP Cost Accouant. Must be a valid Account on the BMSIW.GL_ACCOUNT_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_SAP_ACCT_TYP IS
'iERP-This field is no longer used. The type of SAP Account being charged, if the charge to country is a BH country.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.REL_SAP_ACCT_TYP IS
'iERP-This field is no longer used. The type of SAP Account being recovered from, if the originating country is a BH country.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.LEDGER_ITEM_KEY IS
'System Use-The Ledger Reference Key of the item. Currently not used.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.TEAM_ID IS
'Employee Info-A code used at some locations to describe the employee''s team affiliation. Associated with AP (mainly India) as another way to categorize labor charges.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CIAS_NEC_CD IS
'Inter-Company-CIAS Nature Expense Code, sent to CIAS by BMS. Must be used with a valid CIAS TOS.  Valid combinations that can be used in BMS are listed on BMSIW.CIAS_NEC_CODE_REF_V';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CIAS_INV_EXCHG_RATE IS
'Inter-Company-The exchange rate used by CIAS to calculate from the country''s local currency to the invoicing currency. BMS only sends local currency to CIAS, therefore the USD and invoicing currency is derived in CIAS based on their settings.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CIAS_INV_TOT_CHRG_AMT IS
'Inter-Company-The CIAS invoiced total charged amount for the record in USD.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CIAS_INV_UNIT_PRICE_AMT IS
'Inter-Company-The CIAS invoiced unit price amount in USD for the items billed in the record.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CIAS_INV_CURR_CD IS
'Inter-Company-The two digit CIAS currency code of the amounts posted in CIAS_INV_COST_AMT_LC and CIAS_INV_NET_AMT_LC.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHANNEL_CD IS
'Commercial-The Channel Code represents a method through which a solution is sold.*character (A - Z, 0 - 9) value. If Channel Code is non-blank, must be in CHANNEL_REF with open status. Current combinations based on the Account ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ICA_PROJECT IS
'Inter-Company-The Project number (ACCOUNT_ID) on the charge and ICA. For iERP items this will be the short ID of the level 2 WBS Element.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_ISO_CURR_CD IS
'Charge out Info-The ISO equivalent curency code for CHRG_CURRENCY_CD. The worldwide accepted three character currency code equivalent to the BMS currency code. Must be ISO-defined and listed on the BMSIW.CURRENCY_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_DFLT_LEDG_CD IS
'SOP Import/Export-LEDGER CD TO USE FOR SOP MEMO ENTRY in the S&D country';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_DFLT_CMPNY_CD IS
'SOP Import/Export-The default company code of the charge to country. Dictates what company to use for the MEMO transaction.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_ID IS
'SOP Import/Export-Contract Hub ID. Must exist in the BMSIW.SOP_HUB_REF table as a valid SOP_HUB_ID with a SOP_HUB_TYP_CD of ‘C’ in open status.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_COUNTRY_CD IS
'SOP Import/Export-CONTRACT Hub country number.  This is the Hub MCO (605 Singapore Hub or 606 Ireland Hub) that the contract belongs to.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_COMPANY_CD IS
'SOP Import/Export-The contract HUB company. This is the HUB company that the contract belongs to.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_DIV_CD IS
'SOP Import/Export-Will identify the Contract Division hosting cost charges from the GR/GDCs. Required if CHUB_ID is not blank. Must exist in the BMSIW.DIVISION_REF table for the given Contract Hub Country/Company in open status.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_DEPT_ID IS
'SOP Import/Export-The Contract Hub Department hosting the charges from the GR/GDCs. Required if CHUB_ID is not blank. Must exist in the BDWDB.DEPT_REF table for the given Contract hub’s Country/Company/Div in open status.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_FINDIV_CD IS
'SOP Import/Export-Contract HUB Financial Division. The financial charge financial division is the ledger division of the Contract HUB country. VALID VALUES: Fin Chg division-part of financial charge division.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_FIN_MAJ_NUM IS
'SOP Import/Export-Contract HUB Financial Major. The financial major used for the contract HUB entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_FIN_MIN_NUM IS
'SOP Import/Export-Contract HUB Financial Minor. The financial minor used for the Contract HUB entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_LERU_ID IS
'SOP Import/Export-Contract HUB Financial Leru. The Financial Leru used for the booking of the Contract HUB entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_CURRENCY_CD IS
'SOP Import/Export-The charge currency code of the CHUB. Currency code must be valid on the BMSIW.CURRENCY_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_LCL_CURR_CD IS
'SOP Import/Export-The local ledger currency of the CHUB country. Currency code must be listed on the BMSIW.CURRENCY_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_LEDGER_CD IS
'SOP Import/Export-Contract HUB Ledger Code. The ledger code to be used for the booking of the Contract Hub entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_LGR_FEED_SYS_CD IS
'SOP Import/Export-Contract HUB Ledger Feed System. The Ledger Feed system code where the CHUB record was sent for the charge to side of the entry. Field can be populated with CLS (ledger), BH (iERP), or blank (not sent).';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_SAP_CMPNY_CD IS
'SOP Import/Export-The SAP Company Code of the Contract HUB country/company.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_ISO_CURR_CD IS
'SOP Import/Export-The ISO equivalent curency code for CHUB_CURRENCY_CD. The worldwide accepted three character currency code equivalent to the BMS currency code. Must be ISO-defined and listed on the BMSIW.CURRENCY_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_INTRACO_CHRG_IND IS
'SOP Import/Export-This is used as the CHRG_INTRACO_CHRG_IND when the CHUB is being charged. See CHRG_INTRACO_CHRG_IND for usage';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_LOC_CD IS
'SOP Import/Export-The Contract HUB department LOC CD. The LOC CD used for the Contract HUB Entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_ORG_CD IS
'SOP Import/Export-Contract HUB department ORG CD. The Org CD is another level of grouping of LOC CDs.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_ORIG_LVL1_CD IS
'SOP Import/Export-CONTRACT HUB department ORIG LVL1. A roll up used within BMS. Level 1 is the top level.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_ORIG_LVL2_CD IS
'SOP Import/Export-CONTRACT HUB department ORIG LVL2. A roll up used within BMS. Level 2 is below level 1.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_ORIG_LVL3_CD IS
'SOP Import/Export-CONTRACT HUB department ORIG LVL3. A roll up used within BMS. Level 3 is below level 2.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_FA_CD IS
'SOP Import/Export-The contract HUB Financial Area code.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_ORDREF_NUM IS
'SOP Import/Export-Contract HUB Order Reference. The Order Reference related to the Contract HUB department. This field can be found in the ledger.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_LEDGER_DEST_CD IS
'SOP Import/Export-Contract HUB Ledger Destination. The instance of ledger transaction was sent to for the booking of the Contract HUB entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_LOC_TYP_CD IS
'SOP Import/Export-Contract HUB department LOC Typ CD. The LOC Typ CD gives you the ability to group transactions by LOC CDs.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_ORG_TYP_CD IS
'SOP Import/Export-Contract HUB department Orig Typ CD. The Orig Typ CD gives you the ability to group transactions by ORG CDs';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_LOC_XFER_CD IS
'SOP Import/Export-Contract HUB department LOC XFER CD. This is a grouping of LOC CDs, used within the FCR process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_ORG_XFER_CD IS
'SOP Import/Export-Contract HUB department Org Xfer CD. This is a grouping of ORG Cds, used within the FCR process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_LOB_ID IS
'SOP Import/Export-Contract HUB department LOB ID. The LOB ID of the Contract HUB entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_LCL_CURR_ISO_CD IS
'SOP Import/Export-The ISO equivalent curency code for CHUB_LCL_CURR_CD. The worldwide accepted three character currency code equivalent to the BMS currency code. Must be ISO-defined and listed on the BMSIW.CURRENCY_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_EXCH_RT_IND IS
'SOP Import/Export-No longer a used field.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_LCL_CURR_ISO_CD IS
'SOP Import/Export-The ISO equivalent curency code for RHUB_LCL_CURR_CD. The worldwide accepted three character currency code equivalent to the BMS currency code. Must be ISO-defined and listed on the BMSIW.CURRENCY_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_EXCH_RT_IND IS
'SOP Import/Export-No longer a used field.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_ISO_CURR_CD IS
'SOP Import/Export-The ISO equivalent curency code for RHUB_CURRENCY_CD. The worldwide accepted three character currency code equivalent to the BMS currency code. Must be ISO-defined and listed on the BMSIW.CURRENCY_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_INTRACO_CHRG_IND IS
'SOP Import/Export-This is used as the CHRG_INTRACO_CHRG_IND when the RHUB is being charged. See CHRG_INTRACO_CHRG_IND for usage';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.REC_COUNTRY_CD IS
'Commercial-BMS Receiving country code.  Directly related to the Account ID. This is the country receiving the benefit of the service. For more information regarding the Account ID see BDWDM.DPCHARGE_V';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.REC_CUSTOMER_NO IS
'Commercial-The receiving customer number associated with the transaction.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SOP_TX_TYPE IS
'SOP Import/Export-SOP Transaction type. This field will be populated if the transaction flowed through SOP. The possible values are G2R: GDC GR country to the Rhub / R2C: Rhub to the Chub / C2F: Chub to the Final (Final = account id charged) / R2F: RHUB to Final (Final = account charged) / MEM: Memo Entry to S&D country (for in Scope)';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.EXPORT_CURRENCY_CD IS
'Inter-Company-This is the currency code of the amount represented in the EXPORT_AMT field. This is for information purposes only';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.EXPORT_CIAS_CURR_CD IS
'Inter-Company-The CIAS two digit equivalent of the EXPORT_CURRENCY_CD';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.EXPORT_AMT IS
'Inter-Company-This is the local amount sent to CIAS based on the TOT_CHRG_AMT field for the transaction. The currency code can be found in the EXPORT_CURRENCY_CD field. This is for information purposes only';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SPOT_EXCH_RATE IS
'Charge Details-The exchange rate used to convert the originating currency to USD on the day the record was processed.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SPOT_RATE_USD_AMT IS
'Charge Details-The amount calculated using the TOT_CHRG_AMT and the SPOT_EXCH_RATE.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_LCL_CURR_CD IS
'Charge out Info-The ledger currency code of the originating country/company.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_LCL_CURR_ISO_CD IS
'Charge To Info-The ISO equivalent curency code for ORIG_LCL_CURR_CD. The worldwide accepted three character currency code equivalent to the BMS currency code. Must be ISO-defined and listed on the BMSIW.CURRENCY_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.HUB_LOCAL_AMT IS
'SOP Import/Export-The HUB local currency amount. Calculated using TOT_CHRG_AMT divided by C2C_LOCAL_EXCH_RT or R2R_LOCAL_EXCH_RT.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.G2R_CHRG_EXCH_RT IS
'SOP Import/Export-GR/GDC to Resource HUB exchange rate. The daily rate for the currency''s exchange between the provider and the project for non-SOP charges. For SOP transactions it is the currency''s exchange between the provider and the HUB.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.R2R_LOCAL_EXCH_RT IS
'SOP Import/Export-Resource HUB cost to ledger LCL exchange rate. Used to calculate the HUB_LOCAL_AMT using the TOT_CHRG_AMT if record is for resource HUB related.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.R2F_CHRG_EXCH_RT IS
'SOP Import/Export-CHUB to S&D exchange rate. Rate used to calculate the TOT_CHRG_AMT of the Memo entry for the S&D country based on the Landed amount of the HUB. (Resource HUB and Contract HUB are the same)';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.C2C_LOCAL_EXCH_RT IS
'SOP Import/Export-CHUB cost to ledger LC exchange rate. Rate used to calculate the HUB_LOCAL_AMT from the charge to local cu. If record is contract hub related.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.C2F_CHRG_EXCH_RT IS
'SOP Import/Export-CHUB to S&D exchange rate. Rate used to calculate the TOT_CHRG_AMT of the Memo entry for the S&D country based on the Landed amount of the HUB.(Resource HUB and Contract HUB are different)';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_CURRENCY_CD IS
'Charge To Info-BMS Currency code of charge to country / company. The currency code must be listed on the BMSIW.CURRENCY_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_SOP_ICALESS_CD IS
'SOP Import/Export-Charge to country/company''s internal ICAless Indicator. Field can be populated with a Y, N, I, E, B, or a blank. Valid Values: I - ICA Required for ImportTransactions Only, E - ICA Required for Export Transactions Only, B - ICA Required for Both Import and Export transactions, N - Transaction not eligible, would not be sent to CIAS Y - No ICA required for any transaction. Populated on all records, however only comes into use for SOP G2R or R2C transactions.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_SOP_ICALESS_CD IS
'SOP Import/Export-Originating country/company''s internal ICAless Indicator. Field can be populated with a Y, N, I, E, B, or a blank. Valid Values: I - ICA Required for ImportTransactions Only, E - ICA Required for Export Transactions Only, B - ICA Required for Both Import and Export transactions, N - Transaction not eligible, would not be sent to CIAS Y - No ICA required for any transaction. Populated on all records, however only comes into use for SOP G2R or R2C transactions.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_SOP_ENABLE_IND IS
'SOP Import/Export-The SOP ENABLED INDICATOR. The originating practitioner''s SOP elegibility based on their EBU. However the SOP_IND may be different and is the field that is actually used for the SOP process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_SOP_LOB IS
'SOP Import/Export-ORIG SOP LINE OF BUSINESS - Based on the practitioner''s (originating country) EBU. Used for the SIH brokering process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_SOP_OVR_CHRGGRP_CD IS
'SOP Import/Export-Charge group code used for the transaction in the SIH brokering process. This field is optional and only populated if the records is part of the rerate process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_SOP_OVR_RATELST_ID IS
'SOP Import/Export-The rate list used for the transaction in the SIH brokering process. This field is optional and only populated if the records is part of the rerate process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_SOP_OVR_UPLIFT_AMT IS
'SOP Import/Export-Uplift amount used for the transaction in the SIH brokering process. This field is optional and only populated if the records is part of the rerate process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_SOP_OVR_UPLIFT_PCT IS
'SOP Import/Export-Uplift percentage used for the transaction in the SIH brokering process. This field is optional and only populated if the records is part of the rerate process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.PROJ_SOP_IND IS
'SOP Import/Export-Project SOP Indicator. Indicates with a Y or N if the ACCOUNT_ID is HUB managed.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_BASELBR_RATE_AMT IS
'SOP Import/Export-Resource HUB Base Labor Rate Amount. This is the rerate amount from the pricelist used in the SIH rerate process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_CHRG_GROUP_CD IS
'SOP Import/Export-The RHUB''s charge group code used for the transaction in the SIH brokering process. This field is optional and only populated if the records is part of the rerate process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_CHRG_GRP_OVR_IND IS
'SOP Import/Export-The charge group override indicator. This is a Y or N indicator which specifies if the charge group of the practioner should be overrided.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_COMPANY_CD IS
'SOP Import/Export-The Resource HUB company. This is the HUB company that the resource belongs to.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_COUNTRY_CD IS
'SOP Import/Export-Resource Hub country number.  This is the Hub MCO (605 Singapore Hub or 606 Ireland Hub) that the resource belongs to.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_CURRENCY_CD IS
'SOP Import/Export-The charge currency code of the RHUB. Currency code must be valid on the BMSIW.CURRENCY_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_DEPT_ID IS
'SOP Import/Export-The Resource Hub Department hosting the charges from the GR/GDCs. Required if RHUB_ID is not blank. Must exist in the BDWDB.DEPT_REF table for the given Contract hub’s Country/Company/Div in open status.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_DEPT_LOC_TYP IS
'SOP Import/Export-Resource HUB department LOC Typ CD. The LOC Typ CD gives you the ability to group transactions by LOC CDs.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_DEPT_PROJECT_ID IS
'SOP Import/Export-Resource HUB Department Project ID. Currently not used.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_DEPT_XFER_TYP IS
'SOP Import/Export-Resource HUB department Org Xfer CD. This is a grouping of ORG Cds, used within the FCR process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_DIV_CD IS
'SOP Import/Export-The SOP resource hub division code. Required when RHUB_ID is not blank. Must be a valid division in BDWDB.DIVISION_REF based on it’s SOP_HUB_ID/RHUB_ID in BMSIW.SOP_HUB_REF_V';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_DPT_MAJ_NUM IS
'SOP Import/Export-Resource HUB Financial Major. The financial major used for the resource HUB entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_DPT_MIN_NUM IS
'SOP Import/Export-Resource HUB Financial Minor. The financial minor used for the resource HUB entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_FA_CD IS
'SOP Import/Export-The resource HUB financial Area code.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_FINCHG_ORDREF_NUM IS
'SOP Import/Export-Resource HUB Order Reference. The Order Reference related to the Resource HUB department. This field can be found in the ledger.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_FINDIV_CD IS
'SOP Import/Export-Resource HUB Financial Division. The financial charge financial division is the ledger division of the Resource HUB country. VALID VALUES: Fin Chg division-part of financial charge division.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_ID IS
'SOP Import/Export-The SOP resource hub ID.  Required when SOP Indicator = Y, must be a valid value in BMSIW.SOP_HUB_REF with a SOP_HUB_TYP_CD = R.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_LCL_CURR_CD IS
'SOP Import/Export-The local ledger currency of the RHUB country. Currency code must be listed on the BMSIW.CURRENCY_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_LGR_FEED_SYS_CD IS
'SOP Import/Export-Resource HUB Ledger Feed System. The Ledger Feed system code where the RHUB record was sent for the charge to side of the entry. Field can be populated with CLS (ledger), BH (iERP), or blank (not sent).';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_LERU_ID IS
'SOP Import/Export-Resource HUB Financial Leru. The Financial Leru used for the booking of the Resource HUB entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_LGR_DEST_CD IS
'SOP Import/Export-Resource HUB Ledger Destination. The instance of ledger transaction was sent to for the booking of the Resource HUB entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_LGR_LOC_CD IS
'SOP Import/Export-Resource HUB Ledger Location Code. The Ledger Code used for the Resource HUB transaction.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_LOB_ID IS
'SOP Import/Export-Resource HUB department LOB ID. The LOB ID of the Contract HUB entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_LOC_XFER_CD IS
'SOP Import/Export-Resource HUB department LOC XFER CD. This is a grouping of LOC CDs, used within the FCR process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_ORIG_LOC_CD IS
'SOP Import/Export-The Resource HUB department LOC CD. The LOC CD used for the Resource HUB Entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_ORIG_LOC_TYP_CD IS
'SOP Import/Export-Resource HUB department LOC Typ CD. The LOC Typ CD gives you the ability to group transactions by LOC CDs.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_ORIG_LVL1_CD IS
'SOP Import/Export-Resource HUB department ORIG LVL1. A roll up used within BMS. Level 1 is the top level.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_ORIG_LVL2_CD IS
'SOP Import/Export-Resource HUB department ORIG LVL2. A roll up used within BMS. Level 2 is below level 1.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_ORIG_LVL3_CD IS
'SOP Import/Export-Resource HUB department ORIG LVL3. A roll up used within BMS. Level 3 is below level 2.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_ORIG_ORG_CD IS
'SOP Import/Export-Resource HUB department ORG CD. The Org CD is another level of grouping of LOC CDs.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_ORIG_ORG_TYP_CD IS
'SOP Import/Export-Resource HUB department Orig Typ CD. The Orig Typ CD gives you the ability to group transactions by ORG CDs';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_ORIG_ORG_XFER_CD IS
'SOP Import/Export-Resource HUB department Org Xfer CD. This is a grouping of ORG Cds, used within the FCR process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_PRICELST_ID IS
'SOP Import/Export-RESOURCE HUB PRICE LIST ID. If the item went through the SIH rerate process, this is the price list ID''d as the correct list used to determine the new rate amount.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_PRICELST_USED_ID IS
'SOP Import/Export-RESOURCE HUB PRICE LIST USED. If the item went through the SIH rerate process, this is the price list actually used to determine the new rate amount.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_SAP_COMPANY_CD IS
'SOP Import/Export-The SAP Company Code of the Resource HUB country.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_SERVCD_ADDER_AMT IS
'SOP Import/Export-Resource HUB Service Code Adder Amount. Resource HUB adder Amount. This is the adder amount based on the service code used in the SIH rerate process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_SERVTYP_RATE_AMT IS
'SOP Import/Export-Resource HUB Service Type Adder Amount. Resource HUB adder Amount. This is the adder amount based on the service type used in the SIH rerate process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SOP_IND IS
'SOP Import/Export-SOP Indicator. Valid Values Y = Yes, SOP Eligible Record or Blank or N = No, Not SOP Eligible Record. X = The employees department was targeted to use the COVERAGE_ID model, however the EBU that the department is designated to roll up to has not bee set up in PACT. C = The iERP account is being charged and the Account is SOP enabled, however the target ledger is not iERP or the sender of the charge has indicated that the charge is SOP but SSC determines the charge is not SOP. U = Updated via mass SSCLB udpate.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.TOT_RHUB_AMT IS
'SOP Import/Export-Total RHUB Amount. This is the rate used to calculate the total amount to be charged for the RHUB export transaction if this transaction is part of the SIH rerate process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.INTERCO_SUMMARY_KEY IS
'Inter-Company-Inter-company summarization key. This is the BMS/CIAS reconciling number. You can use this number to find the record in CIAS by locating this number in the LOCAL_DATA field of the invoice line item that this record resides on.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.PROJECT_COUNTRY_CD IS
'Project Info-BMS Country Code being charged for the project. Must be valid on BDWDM.COUNTRY_REF_V.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.PRFRMNG_CTRY_CD IS
'Charge out Info-The country code of who originated the transaction.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.PRFRMNG_CMPNY_CD IS
'Charge out Info-The company code of who originated the transaction.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.LANDED_IND IS
'SOP Import/Export-LANDED INDICATOR - Location of the employee peforming the service billed for. Y = The employee was on assignment within the country during the period of the assignment. N = The employee was not in the country being charged during the period of the assignment. If employee is SOP and the project is SOP managed and the field = Y, then the transactions is billed to the S&D country rather than staying within the HUB.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.GR_STATUS IS
'SOP Import/Export-Status from Labor feed  that indicates if an employee is HUB Managed  GR = HUB managed,NGR = Non Hub Managed';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_GR_STATUS IS
'Employee Info & SOP-Status from Labor feed  that indicates if an   employee is HUB Managed  GR = HUB managed,NGR = Non Hub Managed';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_SOP_HUB_IND IS
'SOP Import/Export-Original Status from original feed that indicates  if employee is HUB Managed Y=yes N=No';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.SOP_HUB_IND IS
'SOP Import/Export-Identifies the type of Hub: R (Resource) or C (Contract) Both (B) or No participation (N)';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.BH_FINGL15_IND IS
'iERP-Designates whether the entry was sent to BH via the fingl015 interface. Field can be populated with Y (Yes), N (No) or blank (No).';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_BH_DEPLOYED_FG IS
'Charge out Info-Indicates that the originating country/company is a Blue Harmony deployed country.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_INTRACO_CHRG_IND IS
'Commercial-Intracompany code charging indicator for charged country/company. Can be populated with a Y, N or blank. This identifies if the transaction is within the same country but different companies, if the brokering and/or delivery project would BMS to create the final entries for the record. For BMS to create the entries both the CHRG_INTRACO_CHRG_IND and ORIG_INTRACO_CHRG_IND must be Y.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHUB_CIAS_CTRY_CD IS
'Inter-Company-CIAS Contract Hub country number.  This is the CIAS Hub country (605 Singapore Hub or 606 Ireland Hub) that the contract belongs to.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.FINCHG_MIN_CD IS
'Charge To Info-This is the code used to pull the valid minor combination for the transaction off the Ledger Minor Table in Pact.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_INTRACO_CHRG_IND IS
'Commercial-Intracompany code charging indicator for originating country/company. Can be populated with a Y, N or blank. This identifies if the transaction is within the same country but different companies, if the brokering and/or delivery project would BMS to create the final entries for the record. For BMS to create the entries both the CHRG_INTRACO_CHRG_IND and ORIG_INTRACO_CHRG_IND must be Y.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.RHUB_CIAS_CTRY_CD IS
'Inter-Company-CIAS Resource Hub country number.  This is the CIAS Hub MCO (605 Singapore Hub or 606 Ireland Hub) that the resource belongs to.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.LCNS_RQRD_IND IS
'ATTAC-Indicates a license code is required for the  employee';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.LCNS_RQRD_START_DT IS
'ATTAC-The start date of when the license code is required';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.LCNS_CD IS
'ATTAC-The license code covering the employee''s work location';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ECNMC_LCTN_ID IS
'ATTAC-The economic location code of the employee''s work location';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ASSGNMT_STAT_CD IS
'ATTAC-Assignment Status Code';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ASSGNMT_STAT_TYPE_CD IS
'ATTAC-Assignment Status Type Code';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.TAX_CD IS
'ATTAC-The tax code for the Account  coming from the ICA_MASTER_REF. Valid combinations can be found on BMSIW.TAX_CATEGORY_REF_V';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.PRFRMG_PROJ_ID IS
'ATTAC-The local global distribution center''s project ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.DOU_NUM IS
'ATTAC-The DOU number';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_CONTROL_GROUP_CD IS
'Charge out Info-The original control group code as received by SSC from the service Provider. Identifies the domain in which the Account ID and Account Group Id are defined by. Allows the ACCOUNT_IDs to be organized by Geography. Current values are available on the table BDWDB.CONTROL_GRP_REF_V';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.DSTRBTN_CONTROL_CD IS
'Project Info-The distribution control group is the control group value of the account ID that this account activity is being distributed to.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_ACCOUNT_ID IS
'Charge Details-The original Account Id  as received by SSC from the service Provider';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CHRG_CATEGORY_CD IS
'ATTAC-Charge category per CHARGE_CATEGORY_REF table. A further catagorization of charges for countries using licenses. One of the factors that drives what NEC to use.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.LCNS_SCHEME_CD IS
'ATTAC-License Scheme Code for NEC determination';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.ORIG_CIAS_NEC_CD IS
'Inter-Company-CIAS Nature Expense Code as it relates to India License transactions. This is original NEC BMS would have used for a non-India transaction. Due to the license requirements, BMS uses this field to derive a license scheme code which is then utilzed as part of the criteria to derive the correct NEC based on the BMSIW.LICENSE_NEC_REF_V for the transaction. Must be used with a valid CIAS TOS.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CIAS_INV_UPLIFT_PCT IS
'Inter-Company-The percentage of uplift CIAS has put on the charge. Uplift is determined based on the NEC and the countries involved.The listing is held on the WWIA website https://apps.na.collabserv.com/wikis/home?lang=en-us#!/wiki/W66a6350063a5_4a4b_9196_cf55c8b7445a/page/IPB%20%23194%20-%20WT%20INTERCOMPANY%20SERVICE%20CHARGE%20UPLIFT';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CIAS_INV_COST_AMT_LC IS
'Inter-Company-CIAS Invoice Line Amount in Local Currency without Uplift (If Required) of the originating country on the record';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CIAS_INV_COST_AMT_US IS
'Inter-Company-CIAS Invoice Line Amount in USD Currency without Uplift (If Required)';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CIAS_INV_NET_AMT_LC IS
'Inter-Company-CIAS Invoice Line Amount in Local Currency with Uplift (If Required) of the originating country on the record';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CIAS_INV_NET_AMT_US IS
'Inter-Company-CIAS Invoice Line Amount in USD Currency with Uplift (If Required)';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CIAS_INV_CIAS_CURR_CD IS
'Inter-Company-The 2 digit currency code of the local CIAS currency of the ORIG_COUNTRY_CD';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.TAX_CTGRY_CD IS
'ATTAC-The tax category that the tax code faulls into. Valid combinations can be found on BMSIW.TAX_CATEGORY_REF_V';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.CIAS_INV_LINE_NUM IS
'Inter-Company-The CIAS invoice line item number the record relates to.';

COMMENT ON COLUMN BDWDB.CHRG_DTL17.LST_UPDT_TMS IS
'System Use-The time stamp of when the record was loaded into BDW';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ABC_CODE_ID IS
'Charge Details-A finance code used to specify a task within a data point. This identifier is represented as the last two characters of the Activity code. For example, the support data point may include market support, local I/S support or warranty fixes.  The services data point may include usability, consulting, or info dev.*character(A-Z, 0 - 9). It is associated with labor claiming.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ACCOUNT_DIV_CD IS
'Project Info-The code that uniquely identifies the IBM division charged for the charges associated with the Account ID (The Charge_div_code field in PACT). Alphanumeric characters (A-Z, 0-9). Valid divisions are defined on the BMSIW.DIV_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ACCOUNT_DIVDPT_ID IS
'Project Info-The concatenation of ACCOUNT_DIV_CD and ACCOUNT_DPT_ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ACCOUNT_DPT_ID IS
'Project Info-The department number that is charged for the charges assigned to Account_ID (The Charge_dept_ID field in PACT). Alphanumeric characters (A-Z, 0-9). Populated based on the Account ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ACCOUNT_ID IS
'Project Info-The unique identifier for a Project, aka CFT/S worknumber. In iERP this is called the WBS short ID. The labor charge number assigned to each customer for chargeback purposes. It is used to track and report on labor expended on contracts, opportunities and internal projects. Can be tied to the BMS project number on the ICA or in CIAS. The accounting information is specific for the Requestor/Importer/Charge To on the ACCOUNT_ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ACCT_PRACTICE_CD IS
'Commercial-Account practice code. Practices are designations that Country/Companies can use to group people and/or Contracts. Practices are sometimes used to group people by a skill type/set.  Most Practices will be intended for use by a particular Country/Company.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ACCT_TYP_CD IS
'Project Info-The account type code based on the Account_ID. VALID VALUES: C-Contract Account I-Internal Account O-Opportunity Account T-Internal/Transfer Price Account.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ACCTGRP_ID IS
'Project Info-The Unique identifier of an account group/contract. For example, all work numbers (accounts) belong to a contract (account group). Must be within the valid range as defined in the BMSIW.ACCT_GRP_RNG table. Assigned based on the ACCOUNT_ID';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ACT_LEDGER_LVL_CD IS
'Project Info-Actual charge to accounting information. VALID VALUES: A - Accounting was used from the account record. G - Accounting was used off the Account Group record or escalated to Account Group level because valid Accounting information was not found at the account level.  N - Account Level, but was not escalated to Account Group level. Populated based on the Account ID. It can also be blank.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ACTIVITY_CD IS
'Charge Details-The concatenation of SERVICE_TYPE_ID, SERVICE_ID, SERVICE_ENV_ID, DATA_POINT_ID and ABC_CODE_ID. It is associated with labor claiming.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ADJUSTMENT_ID IS
'System Use-An identifier used to hold the Mass Update or Incident Number of a change';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.APPL_CD IS
'System Use-Field is always populated and relates to the service provider. If sent blank it defaults to the ORIG_LOC_CD. Valid codes can be found on BMSIW.APPLICATION_CODE_V';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.APPLICATION_ID IS
'System Use-Used in the EMEA interface to BDW, no longer used.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.BDW_LOAD_SEQ IS
'System Use-The sequence number of the BDW LOAD the item was inserted into BDW.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.BUS_TYP_CD IS
'Charge Details-Business type code from the Contract Management System (CFT/S). A country-specific code that identifies the main portion of work charged to the account. It is a classification of the service IBM will provide to a customer and is used to help derive charge to accounting for commerical Account IDs. Valid combinations are based on the Account ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CAL_MONTH_NUM IS
'Charge Details-Calendar number (1-12) of the month in the year. This field is in the CHAGRP_CALM_XXX and CHAGRP_CAyy_XXX tables only. Used for measurment purposes.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHARGABLE_FG IS
'Charge Details-Usage is chargeable. If Chargeback feeds ledger for this provider, charges will be sent. Y or N is valid.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_CIAS_CTRY_CD IS
'Inter-Company-The CIAS Requesting/Importing/to be charged country number.  The complete listing of CIAS MCOs is maintained on WWIA''s website, https://apps.na.collabserv.com/wikis/home?lang=en-us#!/wiki/W66a6350063a5_4a4b_9196_cf55c8b7445a/page/IPB%27s%20-%20Country%20listing';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_CIAS_CURR_CD IS
'Inter-Company-The two digit CIAS Currency code used as the local currency for the CIAS Requesting/Importing/to be charged country on the record.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_CIAS_LOC_CD IS
'Inter-Company-CIAS Requesting/Importing/Receiving location code. Value is assigned based on ICA location code or the default location code listed on BDWDM.COMPANY_REF_V if ICAless activity. The location in CIAS drives the ledger code of the activty. Field will be left blank if activity is not CIAS activity.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_CIAS_PRCS_IND IS
'Inter-Company-Indicator which denotes if the Requesting/Importing/to be charged Country/Company  should be part of CIAS processing. Valid Values: I - ICA Required for ImportTransactions Only, E - ICA Required for Export Transactions Only, B - ICA Required for Both Import and Export transactions, N - ICA is required for Imports Y - No ICA required for any transaction';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_COMPANY_CD IS
'Charge To Info-The Requesting/Importing/to be charged company being charged for the transaction. A table containing Country Numbers and their descriptions can be found in BDWDM.COMPANY_REF_v';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_COUNTRY_CD IS
'Charge To Info-The Requesting/Importing/to be charged country number of the transaction. A table containing Country Numbers and their descriptions can be found in BDWDM.COUNTRY_REF_V.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_CTRY_CURR_CD IS
'Charge To Info-BMS Currency code of charge to country / company. The currency code must be listed on the BMSIW.CURRENCY_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_DIST_PCT IS
'Charge Details-Charge distribution percentage from dpAM share. Part of the distribution rule in PACT. If it is distributed this is the percentage that this record received for the transaction.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_GROUP_CD IS
'Charge To Info-The CHRG_GROUP_CD represents an organization that provides services and has a common set of labor rates. The rates are used for charge back of employee labor. There should be at least one set of charge groups for each country / company. Valid values must be in the CHRG_GROUP_REF table for the country / company being entered.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_ICA_NUM IS
'Inter-Company-Intercompany agreement number of the Requesting/Importing/Receiving country. Blank when registered ICA not required.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_LOC_CD IS
'Charge To Info-The elementary business unit of the Charged/Requesting/Importing country. Valid locations are defined on the BMSIW.LOC_REF_V table. Populated based on the charge to Country/Company/Department of the Account ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_LOC_TYP_CD IS
'Charge To Info-The type of CHRG_LOC_CD. The code used to identify the type of  charge from location. For example, GP = geoplex and SC = service center. "Cost Center/Profit Center". *character (A - Z, 0 - 9) values.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_LOC_XFER_CD IS
'Charge To Info-An attribute of the LOC_CD. A way to group locations and utilized in the FCR process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_METHOD_CD IS
'Charge Details-Charge method code. VALID VALUES: CBM - Chargeable, but via manual process CTA - Charge to Actual - charge based on actual hours CTP - Charge to Plan - charge based on planned hours NON - Non Chargeable TBD - used for CIF NCA - Non Chargeable Actual (used for labor charges that were charged to plan).  Current combinations can be located on the table BDWDB.ACCOUNT';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_ORG_CD IS
'Charge To Info-This is the Organization Code that the CHRG_LOC_CD belongs to. It is a grouping of LOC_CDs.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_ORG_TYP_CD IS
'Charge To Info-The type of CHRG_ORG_CD. The code used to identify the type of organization the CHRG_LOC_CD belongs to.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_ORG_XFER_CD IS
'Charge To Info-An attribute of the ORG_CD. A way to group organizations, which is utilized in the FCR process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_TYP_CD IS
'Charge Details-Charge Type Code, identifies the type of record. Possible VALUES: 1 - Adjustment/2-Ad-hoc/6-Normal Charge/R-Import secondary transaction(EMEA if no registered ICA or non-EMEA)/I-Import secondary transaction(EMEA if registered ICA)/P-Export secondary transaction(EMEA if no registered ICA or non-EMEA)/E-Export secondary transaction(EMEA if registered ICA)//B-Global Resource to Broker/U-Broker to Broker(uplift + broker burden + broker environment)/F-Broker to Customer(global resource+broker adders)/D–End transaction for delivery projects, credits the Delivery Project department and debits COR for CFT/s Worknumber/SAP';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CIAS_CURRENCY_CD IS
'Inter-Company-The two digit CIAS Currency code of the invoicing currency used to bill out the invoice. This is the amount that will appear on the CIAS invoice copies and the currency the records will be paid in.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CIAS_DEST_CD IS
'Inter-Company-CIAS destination code. Field can be populated with US, BH or blank. Details if the activity went to CIAS (US), iERP (BH) or did not flow to the intercompany system (blank).';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CIAS_INVOICE_DATE IS
'Inter-Company-The CIAS invoice date';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CIAS_INVOICE_NUM IS
'Inter-Company-The CIAS invoice number. This can be used to search for data in FDW.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CIAS_PROCESS_IND IS
'Inter-Company-Indicator which denotes if the Performing/Exporting/Charging out Country/Company  should be part of CIAS processing. Valid Values: I - ICA Required for ImportTransactions Only, E - ICA Required for Export Transactions Only, B - ICA Required for Both Import and Export transactions, N - Transaction not eligible, would not be sent to CIAS Y - No ICA required for any transaction';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CIAS_TOS_CD IS
'Inter-Company-CIAS Type of Service Code (TOS) - Must be used with a valid CIAS NEC.  Valid combinations that can be used in BMS are listed on the table BMSIW.CIAS_NEC_CODE_REF_V.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CMPTNCY_CD IS
'Charge Details-Competency code is used  to group contracts by Business Competencies.  If non-blank, must be in BDWDB.CMPTNCY_REF with open status.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CMPTNCY_SEG_CD IS
'Commercial-The competency segment code is used to group contracts by Business Competency Segments.  This value must exist in the BDWDB.CMPTNCY_SEG_REF Table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CMPTRJOB_NAME IS
'Charge Details-Computer job name of the program using the services, exists only for MVS batch jobs. Must be a alphanumeric string, blank, ‘*’, or  4-7 alphanumeric string with ‘*’ suffix. The Job Name will trigger a Distribution Rule if applicable';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CMPTRSYS_ID IS
'Charge Details-Computer System ID assigned by Service Delivery Center to uniquely identify the system that the charges originated from.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CONTROL_GROUP_CD IS
'Project Info-Identifies the domain in which the Account ID and Account Group Id are defined by. Allows the ACCOUNT_IDs to be organized by Geography. Current values are available on the table BDWDB.CONTROL_GRP_REF_V';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CUST_CONTRACT_ID IS
'Commercial-Contract number used in ledger. PACT contract number or legal contract based on Company Reference ledger contract code.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CUST_ISU_CD IS
'Commercial-ISU from RDH customer table';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CUST_ISU_SCTR_CD IS
'Commercial-Customer Sector Code based on mapping of ISU. Used for non-SMB.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CUST_REFERENCE_ID IS
'Charge Details-The customer reference ID. The original Account Id  as received by SSC from the service Provider';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CUST_SBIND_CD IS
'Commercial-Sub-industry from RDH customer table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CUST_SBIND_ISU_CD IS
'Commercial-ISU based on mapping customer number''s sub-industry to ISU';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CUST_SBIND_SCTR_CD IS
'Commercial-Customer Sector Code based on mapping of Sub-Industry. Used for SMB.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CUST_TYP_CD IS
'Commercial-Type of customer.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CUSTGRP_LVL1_ID IS
'Commercial-The Customer Level 1 is traditionally defined as a company, such as IBM or IGS. The value must exist in the Customer Group Level 1 Table. *CHARACTER (A - Z, 0 - 9) VALUES. Value must exist on the BMSIW.CUSTGRP_LVL1_ID';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CUSTGRP_LVL2_ID IS
'Commercial-The Customer Level 2 is traditionally defined as either a Line of Business (for IBM), an industry vertical type (for IGS commercial structures), or Geoplex application (for IGS internal structures).*CHARACTER (A - Z, 0 - 9) VALUES. Value must exist on the BMSIW.CUSTGRP_LVL2_ID';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CUSTGRP_LVL3_ID IS
'Commercial-This is the identifier for the level 3 Customer Group the account group corresponds to. Customer Group Level 3 is a contract name for commercial structures (for example General Electric), a service category or application for IGS internal structures (for example HELPDSK, VMPRINT), or a division for IBM structures.. *CHARACTER (A - Z, 0 - 9) VALUES. Value must exist on the BMSIW.CUSTGRP_LVL3_ID';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CUSTOMER_NO IS
'Commercial-It is the Customer Master Record number associated with the account.*character (A - Z, 0 - 9) values.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.DATA_POINT_ID IS
'Charge Details-1 character code representing a different activity for a service type. For example, 1 - Deployment for NWS, Management for ADM. This is one of the elements that makes up the activity code.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.DIST_ACCT_IND IS
'Charge Details-Distribution Account Indicator.Valid values are Y, N, and blank, which indicates if this transaction was distributed or not. Associated with the ORIG_ACCOUNT_ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.DIST_RULE_ID IS
'Charge Details-The Distribution Rule ID is used when distributing charges.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.EMP_COMPANY_CD IS
'Employee Info-The company code representing where the employee resides. Must be a valid Company_Cd in the NFTDB.COMPANY_REF table in open status for the given Country_Cd.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.EMP_COUNTRY_CD IS
'Employee Info-The country code representing where the employee resides. Must be a valid Country_Cd in the NFTDB.COUNTRY_REF table in Open status.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.EMP_DIV_CD IS
'Employee Info-The Division of the employee whose usage or expense is being charged. Must be blank or a valid Div_Cd in the NFTDB.DIV_REF table in open status.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.EMP_DIVDPT_ID IS
'Employee Info-The concatenation of the Division and Department of the employee whose usage or expense is being charged.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.EMP_DPT_ID IS
'Employee Info-The Department of the employee whose usage or expense is being charged.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.EMP_EFF_DT IS
'Employee Info-The employee''s effective work date for the project being billed. Used for labor and travel expense';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.EMP_INITS_NAME IS
'Employee Info-Employee''s first or first & middle initial.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.EMP_LAST_NAME IS
'Employee Info-Employee''s last name';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.EMP_NUM IS
'Employee Info-Serial number of the employee that incurred the charges. Used for all costing besides labor.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ENTPROC_CD IS
'System Use-Enterprise process code which groups APPL_CD to enterprise processes.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.EXP_KEY IS
'Charge Details-Expense key - The line item of the charge within the RPT_KEY from WWER that relates to this charge.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.FIN_DIST_PCT IS
'Charge Details-Financial distribution percentage. The US uses this from the NDT table, to distribute charges over several lerus. Represents what percentage this transaction was from the full charge for the accounting entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.FINCHG_ACCT_NUM IS
'Charge To Info-The financial charge to (requesting side) ledger account. Division, Major and Minor.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.FINCHG_CHRGDIV_CD IS
'Charge To Info-The financial charge to division number is the HR division of the ACCOUNT_ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.FINCHG_CHRGDPT_ID IS
'Charge To Info-The financial charge to department number is the HR department of the ACCOUNT_ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.FINCHG_DIVDPT_ID IS
'Charge To Info-The concatenation of FINCHG_CHRGDIV_CD and FINCHG_CHRGDPT_ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.FINCHG_FINDIV_CD IS
'Charge To Info-The financial charge to division is the ledger division of the charge to entity.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.FINCHG_FINDPT_ID IS
'Charge To Info-The financial charge to department is the ledger department of the charge to entity.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.FINCHG_FINDVDPT_ID IS
'Charge To Info-The concatenation of Financial charge division and department, FINCHG_FINDIV_CD and FINCHG_FINDPT_CD';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.FINCHG_LERU_ID IS
'Charge To Info-The financial charge to Ledger Reporting Unit (LERU) for the requesting/charge to ledger entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.FINCHG_LGR_DEST_CD IS
'Charge To Info-The destination code for the charge to entry. Indicates the ledger instance the transaction was sent to.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.FINCHG_LGR_LOC_CD IS
'Charge To Info-Indiates the ledger code used for the charge to entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.FINCHG_LOB_ID IS
'Charge To Info-Line of business where the division is charged. Must exist for the given Charge To Country/Company in the NFTV.Lob_Ref table in open status.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.FINCHG_ORDREF_NUM IS
'Charge To Info-Financial charge to order reference number sent to the ledger.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.FINCHG_PROJ_NUM IS
'Charge To Info-This is the project number which BMS sends to ledger for the transaction.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.FINCHG_SRC_CD IS
'Charge To Info-Financial charge source code used for ledger process. This is the key used (along with FINCHG_SRCTYP_CD) in finding the accounting information for the transaction from the BDWDM.GFT_V.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.FINCHG_SRCDVDPT_ID IS
'Charge To Info-No longer a used field.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.FINCHG_SRCTYP_CD IS
'Charge To Info-Financial charge source code used for ledger process. This is the key used (along with FINCHG_SRC_CD) in finding the accounting information for the transaction from the BDWDM.GFT_V. Values: A - PACT ACCOUNT TABLE, ACCOUNT WITH OVERRIDE ACCOUNTING, G - PACT ACCOUNT GROUP TABLE, ACCTGRP ID WITH OVERRIDE ACCOUNTING, D - PACT DEPT REF HR DEPT WITH OVERRIDE ACCOUNTING, F - PACT DEPT REF FIN DPT (NON-US), U.S.NDT FILE, B - PACT BUS TYP REF TABLE, S - iERP BUILT ACCOUNTING';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.FINCHG_SUBMIN_NUM IS
'Charge To Info-The subminor of the charge to country used to charge for the transaction.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.FINREL_ACCT_NUM IS
'Charge out Info-The financial relief (performing side) ledger account. Division, Major and Minor.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.FINREL_CHRGDPT_ID IS
'Charge out Info-The financial relief department is the ledger department of the charging out entity.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.FINREL_FINDIV_CD IS
'Charge out Info-The financial relief division is the ledger division of the charging out entity.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.FINREL_LERU_ID IS
'Charge out Info-The financial charge from Ledger Reporting Unit (LERU) for the performing/charge from ledger entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.FINREL_LGR_DEST_CD IS
'Charge out Info-The destination code for the charge from entry. Indicates the ledger instance the transaction was sent to.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.FINREL_LGR_LOC_CD IS
'Charge out Info-Indiates the ledger code used for the charge from entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.FINREL_ORDREF_NUM IS
'Charge out Info-Financial ledger relief order reference number. On export records (CHRG_TYP_CD E or P) CHRG_CIAS_CTRY_CD || ACCOUNT_ID_';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.FINREL_PROJ_NUM IS
'Charge out Info-This is the project number which BMS sends to ledger for the transaction.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.FINREL_SUBMIN_NUM IS
'Charge out Info-The subminor of the charge from country used to charge for the transaction.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.FINREL_WORKDPT_ID IS
'Charge out Info-Financial ledger relief department associated with the recovery transaction.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.FRI_HRS IS
'Charge Details-Hours charged for Friday.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ICA_CURRENCY_CD IS
'Inter-Company-The two digit CIAS Currency code on ICA document. Generally relates to the invoicing currency of the Performing country';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.IMAP_NUM IS
'System Use-IBM Master Application Portfolio.  The IMAP number from the BTMT application.All IMAP numbers are kept on BMSIW.IMAP_REF';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.INDSOL_AREA_CD IS
'Commercial-Industry Solution Area Code.  Also known as ISA Code.  If non-blank, must be in INDSOL_AREA_REF with open status.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.INDUSTRY_CLASS IS
'Commercial-The Industry Class';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.LBR_GROUP_ID IS
'Charge Details-The labor group id identifies a logical group of CLAIM users.  Most country / companies will use one Labor Group (Labor Group Id is known as Group Id in CLAIM).  Labor groups are used to determine the default set of work items that an employee may charge time to.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.LBR_SYS_ID IS
'System Use-Labor System ID. Identifies the CLAIM system supporting a department. The labor system id identifies a physical installation of CLAIM.  Most geographies will use one labor system. This value must exist in the LBR_SYS_USAGE table for the country / company being entered.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.LEDGER_FG IS
'Charge Details-Indicates whether the records are sent to the ledger:N-Not sent to the ledger/I-May be sent to the ledger by a manual (ICA) process/Y-Automatically sent to the ledger/C-Records are processed via CIAS.They will show CIAS''s ledger source.The charge and relief records are the ''net result'' of CIAS and BMS secondary transactions./B-BH to BH Represents Blue Harmony to Blue Harmony transactions./A-Accrual Base record for the ODA Accrual process, which is reversed the following month.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.LEDGER_LOAD_SEQ IS
'System Use-Sequence Number of the Month End costing cycle - Can be used to join with CHRG_LCLXX and CHRG_LADXX to pull further record information.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.LEDGER_MONTH_NUM IS
'System Use-The month of the of the costing cycle - Can be used to join with CHRG_LCLXX and CHRG_LADXX to pull further record information.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.LEDGER_PROJECT_ID IS
'System Use-Ledger Project Ids are projects as defined in the ledger, the Ledger Project Identifier (LPID) is used to tag cost  and revenue entries in the ledger. Field is no longer in use.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.LEDGER_YEAR_NUM IS
'System Use-The year of the of the costing cycle for the item.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.LEGAL_CONTRACT_ID IS
'Project Info-The legal contract Id. Populated based on the company''s request.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.MON_HRS IS
'Charge Details-Hours charged for Monday.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.NODE_ID IS
'System Use-The Computer System ID assigned by ISSC to uniquely identify the system that the system usage is consumed on.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.OFFERING_CD IS
'Commercial-An Offering Code is a description code used to further classify the services being performed for the charge. It is also known as the Offering Comp Code in PACT. If non-blank, must be in BMSIW.OFFERING_COMP_REF with open status.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.OFFERING_LOB_ID IS
'Commercial-Line of Business assigned to Offering Category. An opportunity linked to an Account_ID would be found on table BDWDM.DPCHARGE_V';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.OPPORTUNITY_ID IS
'Commercial-The id for a potential contract. Opportunity Ids are assigned by OMSYS(OMSYSNO) to potential contracts where marketing is active but a contract has not been initiated. The Opportunity ID must be valid on the BMSIW.EIW_OPPTNY_ICA_V table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_ACCT_TYP_CD IS
'Project Info-The original type of account as received by SSC from the service Provider';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_BUS_TYP_CD IS
'Charge Details-The business type of the Account_ID being processed.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_CIAS_CTRY_CD IS
'Inter-Company-CIAS Performing/Exporting/Charging out country number.  The listing of MCOs is maintained on WWIA''s website, https://apps.na.collabserv.com/wikis/home?lang=en-us#!/wiki/W66a6350063a5_4a4b_9196_cf55c8b7445a/page/IPB%27s%20-%20Country%20listing';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_CIAS_LOC_CD IS
'Inter-Company-CIAS Perfoming/Exporting/Charging out location code. Value is assigned based on ICA location code or the default location code listed on BDWDM.COMPANY_REF_V if ICAless activity. The location in CIAS drives the ledger code of the activty. Field will be left blank if activity is not CIAS activity.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_CMPTNCYSEG_CD IS
'Charge out Info-Originating Competency Segment Code. Competency code is used  to group employees by Business Competencies.  If non-blank, must be in BDWDB.CMPTNCY_REF with open status.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_COMPANY_CD IS
'Charge out Info-The performing/exporting/charging out company being charged for the transaction. A table containing Country Numbers and their descriptions can be found in BDWDM.COMPANY_REF_V';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_COUNTRY_CD IS
'Charge out Info-The performing/exporting/charging out country number of the record. A table containing Country Numbers and their descriptions can be found in BDWDM.COUNTRY_REF_V.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_CURRENCY_CD IS
'Charge out Info-BMS costing currency code of originating country / company. This identifies the currency used for TOT_CHRG_AMT or UNIT_PRICE_AMT. The currency code must be listed on the BMSIW.CURRENCY_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_DIV_CD IS
'Charge out Info-The HR division associated with the service provider.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_DIVDPT_ID IS
'Charge out Info-The concatenation of ORIG_DIV_CD and ORIG_DPT_ID';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_DPT_ID IS
'Charge out Info-The HR division associated with the service provider.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_DPT_LOCTYP_CD IS
'Charge out Info-The type of ORIG_DEPT_ID. The code used to identify the type of  charge from department. For example, GP = geoplex and SC = service center. "Cost Center/Profit Center". *character (A - Z, 0 - 9) values.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_DPT_XFER_CD IS
'Charge out Info-An attribute of the relief department. A way to group locations and utilized in the FCR process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_EMP_NUM IS
'Employee Info-The employee serial number originally sent to BMS. This column applies to labor charges only.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_FA_CD IS
'Charge out Info-Financial Area code of the originating country. Another level of organizing departmnets. It is at the FA code level where labor rates for specific charge groups are determined. Must exist in NFTV.FA_CODE_REF for the Employee’s Country, Company and Div in open status.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_ICA_NUM IS
'Inter-Company-Intercompany agreement number of the Perfoming/Exporting/Charging out country. Blank when registered ICA not required or used.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_INITS_NAME IS
'Employee Info-The first or first & middle initials of the employee originating the charges. This column applies to labor charges only.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_LAST_NAME IS
'Employee Info-The last name of the employee originating the charges. This column applies to labor charges only.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_LOC_CD IS
'Charge out Info-The elementary business unit of the Charge from/Performing/Exporting country. Valid locations are defined on the BMSIW.LOC_REF_V table. Populated based on the relief department.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_LOC_TYP_CD IS
'Charge out Info-The type of ORIG_LOC_CD. The code used to identify the type of  originating location. For example, GP = geoplex and SC = service center. "Cost Center/Profit Center". *character (A - Z, 0 - 9) values.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_LOC_XFER_CD IS
'Charge out Info-An attribute of the LOC_CD. A way to group locations and utilized in the FCR process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_LOC_XFER_PCT IS
'Charge out Info-It’s the percentage used to uplift labor when FCR is applicable, based on the ORIG_LOC_CD';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_LVL1_CD IS
'Charge out Info-Level 1 code-Represents consolidation of Geographies and HQ org. into a worldwide group. The top level of service provider hierarchy - Level 5 in the BMS Business Model.*character (A - Z, 0 - 9) values. Values can be found on BMSIW.ORIG_LVL1_REF';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_LVL2_CD IS
'Charge out Info-Level 2 code-represents consolidation of a group of countries such as NA, EMEA, LA.   The second level of service provider hierarchy - Level 4 in the BMS Business Model corresponding to a geography.*character (A - Z, 0 - 9) values Values can be found on BMSIW.ORIG_LVL2_REF';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_LVL3_CD IS
'Charge out Info-Level 3 code representing a single country or group of countries as a single entity. The third level of service provider hierarchy - Level 3 in the BMS Business Model corresponding to a country.*character (A - Z, 0 - 9) value. Values can be found on BMSIW.OIG_LVL3_REF.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_ORG_CD IS
'Charge out Info-This is the Organization Code that the CHRG_LOC_CD belongs to. It is a grouping of LOC_CDs.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_ORG_TYP_CD IS
'Charge out Info-The type of CHRG_ORG_CD. The code used to identify the type of organization the CHRG_LOC_CD belongs to.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_ORG_XFER_CD IS
'Charge out Info-An attribute of the ORG_CD. A way to group organizations, which is utilized in the FCR process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_ORG_XFER_PCT IS
'Charge out Info-It’s the percentage used to uplift labor when FCR is applicable, based on the ORIG_ORG_CD.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_PRACTICE_CD IS
'Employee Info-The employee practice code. Practices are designations that Country/Companies can use to group people and/or Contracts. Practices are sometimes used to group people by a skill type/set.  Most Practices will be intended for use by a particular Country/Company.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIGINAL_USAGE_QTY IS
'Charge Details-Shows volume of usage of the original transaction. Source key identifies which records were created by the same original transaction. The original record will show Original_Usage_Qty and Usage_Qty. Any secondary transactions for the same source key will retain the Original_Usage_qty, however the Usage_Qty will be 0.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.OVRTM_HRS_IND IS
'Charge Details-Overtime hours indicator. N = No / Y = Yes / Blank = charges do not relate to work hours.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.OWNG_GEO_CD IS
'Project Info-The geography (GEO) of the country/company which owns the ACCOUNT_ID';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.OWNG_LOB_CD IS
'Project Info-The Line Of Business (LOB) which owns the ACCOUNT_ID';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.OWNG_RGN_CD IS
'Project Info-The region (a sub-category of a GEO) owning the ACCOUNT_ID. Valid values are on BMSIW.REGION_REF_V';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.OWNING_COMPANY_CD IS
'Project Info-The company owning the Account_Id. Must be in BDWDM.COMPANY_REF with open status.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.OWNING_COUNTRY_CD IS
'Project Info-The country that owns the Account ID. Must be valid on BDWDM.COUNTRY_REF';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.OWNING_CUSTOMER_NO IS
'Project Info-Owning Customer Number. The CMR Number. Represents the customer that owns an ACCOUNT_ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.OWNING_DIV_CD IS
'Project Info-The Division code which owns the Account ID. For values, see BMSIW.DIVISION_REF.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.OWNING_DPT_ID IS
'Project Info-The department within the Division code which owns the Account ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.PLAN_EXCHG_RATE IS
'Charge Details-The Plan Exchange Rate. Rate used to convert non-U.S. currency to U.S. dollars. Used to calculate the STD_TOT_CHRG_AMT and the STD_UNIT_PRICE_AMT.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.POC_INDICATOR IS
'Charge Details-Percent Of Completion Indicator (a type of revenue recognition).  Indicates whether revenue should be recognized based on completion of work as opposed to recognizing revenue at the time billing occurs. Values: N  =  Revenue should be recognized at the time it is billed. / Y  =  Revenue should be recognized on completion of work.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.PRCSS_WK_ENDING_DT IS
'Charge Details-The Friday date prior to when the transaction was Sent to SSC';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.PRFRMNG_GEO_CD IS
'Employee Info-Employee''s geography code, only populated on Labor costing.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.PRFRMNG_LOB_CD IS
'Employee Info-The line of business of the employee charged for the usage or performing the work';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.PRFRMNG_RGN_CD IS
'Employee Info-Employee''s region. Used for labor charges only';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.PRFRMNG_SCTR_CD IS
'Employee Info-Performing Sector Code. For labor charges, based on the originating department''s Loc_Cat_Cd.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.PRICELST_ID IS
'Charge Details-The PRICELST_ID represents the price list being used and therefore determines the rates to be charged. This value must be in the BDWDB.PRICE_LIST_REF table. Generally based on the ACCOUNT_GROUP_ID';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.PROD_SYS_ID IS
'System Use-The producing system ID. Used by SSC to track service inputs and identify the system/application originating the charge.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.PROD_TYP_ID IS
'System Use-The type of system that produced the item. Used by SSC to track service inputs.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.PROFESSION_CD IS
'Employee Info-The profession of the employee being charged on behalf of.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RATECLAS_CD IS
'Charge Details-Rate Class Code indicates the period or the longevity of the service rendered. Example of valid values - OFF - CPU Off shift - PRIME - CPU prime shift. A full list of valid values can be found on BMSIW.SYS_PERIOD_REF by using the longevity code.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RECORD_TYPE IS
'Charge Details-The Record type - UTL=Utililization only; DET=Costing and utilization; BKR=broker process; ACR - Accruals';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.REF_ACCOUNT_ID IS
'Project Info-The associated CFTs work number of the delivery project (CFT_WORK_NUM in PACT). Can be blank if there is no delivery project.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.REF_CNTL_GROUP_CD IS
'Project Info-The associated control group of the delivery project (CFT_WRKNUM_CTRLGRP field in PACT). Can be blank if there is no delivery project.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ROW_SEQNO IS
'System Use-A unique number in the table for each row within the costing cycle. - Can be used to join with CHRG_LCLXX and CHRG_LADXX to pull further record information.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RPT_KEY IS
'Charge Details-The transaction key which identifies the charge sent by the upstream system. Possible values are; for Project Expense transactions the Report Key from WWER/Concur, for RBA transactions the transaction key from RBA. The field can also be blank. The field provides more information about the expense in BMSIW.PROJ_EXP_DTL and BMSIW.PROJ_EXP_SUM.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RPTGRP_CONTROL_CD IS
'Project Info-Reporting group control code. Supplied for ACCOUNT_IDs that support the IBM Account. The value ''IBM-ACCT'' is used for the Worldwide Business Process for financial reporting purposes (IBM Account). Valid values on BDWDM.CONTROL_GROUP_REF Table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RPTGRP_ID IS
'Project Info-The IPP number from BTMT, which is the value that used to be required for Internal accounts.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RPTGRP_LVL1_ID IS
'Project Info-Report Group Level 1 which represents the IBM Account initiative. (the first rollup above the ACCOUNT_ID)';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RPTGRP_LVL2_ID IS
'Project Info-Report Group Level 2 which represents the IBM Account program.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RPTGRP_LVL3_ID IS
'Project Info-Report Group Level 3 which represents the IBM Account Major Project.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RQST_LEDGER_LVL_CD IS
'Project Info-The requested charge to accounting information. VALID VALUES: A - Accounting was used from the account record. G - Accounting was used off the Account Group record or escalated to Account Group level because valid Accounting information was not found at the account level.  N - Account Level, but was not escalated to Account Group level. Populated based on the Account ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SAT_HRS IS
'Charge Details-Hours charged for Saturday.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SCRTYSYS_ID IS
'Charge Details-The Security System ID of the system the usage charge originates from. Usually the cluster on which the system resides.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SERVICE_ADDER_CD IS
'Charge Details-A qualifier of service sent by CLAIM along with the transaction. It can be used to indicate a variation to the unit price. For example, OFF-SITE, ON-SITE. Full listing of valid values can be found on BMSIW.SERVICE_ADDER_REF.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SERVICE_CD IS
'Charge Details-Service Code. Further describes the type of activity being charged for.   Examples can be:TRV, CPU, DASD, DATA. Full listing of valid values can be found on BMSIW.SERVICE_REF based on SERVICE_TYP_ID and SERVICE_ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SERVICE_CLASS_CD IS
'Charge Details-Used to group service types in SSC. Used to further classify the service.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SERVICE_DESC IS
'Charge Details-Description of the service being provided. Generally derived by the Rate list or the Price List. It is sent by WWER for WWER transactions.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SERVICE_ENV_CD IS
'Charge Details-Service Environment Code. For Example: VM, MVS, MIX, MISC, etc. Full listing of valid values can be found on BMSIW.SERVICE_ENV_REF based on SERVICE_ENV_ID. For labor this is derived by the environment element of the activity code.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SERVICE_ENV_ID IS
'Charge Details-One character code representing the environment. Generally sent along with the original transaction. For example, 2 = VM, 3 = MVS, etc. Full listing can be found on BMSIW.SERVICE_ENV_REF with an Open Status,';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SERVICE_GROUP_ID IS
'Charge Details-One of the elements used for rate assignment. Valid values can be found on BMSIW.SERVICE_GROUP_REF';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SERVICE_GROUP_ID2 IS
'Charge Details-One of the elements used for rate assignment. Valid values can be found on BMSIW.SERVICE_GROUP_REF. This is the field used to populate SERVICE_GROUP_ID in the table views.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SERVICE_ID IS
'Charge Details-Sub-Category of Service, for labor it is part of the activity code. This field translates into the SERVICE_CD based on the BMSIW.SERVICE_REF table using  the SERVICE_TYP_ID AND SERVICE_ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SERVICE_RESTYP_CD IS
'Charge Details-Service Resource Type. Represents the skill family associated with a labor record. Currently there are several different skill families that can be found on the JOB_FAMILY_REF  table. This is derived based on the employee''s job family, employee''s status and the employee''s skill family code from CLAIM. Some examples are REG-PGMR, REG-OPS, REG-CNSL, CUSTENG, CONTRACT, ETC.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SERVICE_SEG_CD IS
'Charge Details-Service Segment Code. Used to group contracts by Service Segment in combination with Competency Code and Competency Segment Code';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SERVICE_TYP_CD IS
'Charge Details-The Service Type Code represents the type of service associated to the activity.  For example, MVS, VM, LBR, OOP, ETC. For labor it is derived from the SERVICE_TYP_ID within the ACTIVTY_CD. Further descriptions can found on the table BMSIW.SERVICE_TYP_REF.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SERVICE_TYP_ID IS
'Charge Details-The identifier for the second level service classification. It is included in the Activity Code. Valid Values are on the BMSIW.SERVICE_TYP_REF. It is use to dervice the SERVICE_TYP_CD';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SERVICE_WORKTYP_CD IS
'Charge Details-Identifies the type of work being provided by this service. Further describes the type of activity being charged for.   Examples can be: DEV - Development ENH - Enhancement FIX - Maintenence For example: REQ - Requirements SUPT - Support. Full listing of valid values can be found on BMSIW.SERVICE_REF based on SERVICE_TYP_ID and SERVICE_ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SOURCE_KEY IS
'Charge Details-The unique BMS reconciling number. This is what ties all the like records together in BMS.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SOW_TYP_CD IS
'Commercial-Invoicing Type If non-blank, must be one of the following values: HR = Hourly / RC = Recurring Charge / BE = Best Estimate / IC = Incidental Charge / FP = Fixed Price / DR = Daily Rate';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SRC_ID IS
'System Use-Source of the employee information 1=CLAIM / 2 = EMF / 0 = Non-Labor source.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.STD_TOT_CHRG_AMT IS
'Charge Details-This is the USD amount calculated using the TOT_CHRG_AMT and the plan exchange rate. For countries that do not have a plan rate the monthly I/E average exchange rate is used.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.STD_UNIT_PRICE_AMT IS
'Charge Details-This is the USD amount calculated using the UNIT_PRICE_AMT and the plan exchange rate. For countries that do not have a plan rate the monthly I/E average exchange rate is used.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SUN_HRS IS
'Charge Details-Hours charged for Sunday.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SYS_PERIOD_CD IS
'System Use-Indicates time period of system usage consumption or category for labor rate application that is being charged (ex. prime, offshift, etc.) Some examples are; P01, P02, L2, LN, etc.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.THU_HRS IS
'Charge Details-Hours charged for Thursday.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.TOT_CHRG_AMT IS
'Charge Details-The Total Charge Amount is the complete amount being charged for the transaction in the originating country''s costing currency.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.TUE_HRS IS
'Charge Details-Hours charged for Tuesday.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.UM_DESC IS
'Charge Details-The description of a unit of measure id being chaged for, such as hours, GIGS, months.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.UNIT_PRICE_AMT IS
'Charge Details-Pricelist Unit Price used in determining amount to be charged for the transaction in the originating country''s costing currency.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.UNIT_PRICE_SRCE IS
'Charge Details-Indicates where the Unit Price was derived from. Some expamples are OOP/CTP/SAP/BCS FCR/Blank. Blank generally means the PACT RATELIST was used.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.USAGE_MONTH_NUM IS
'Charge Details-Only the ''month'' portion of the date that the charge is being claimed for.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.USAGE_QTY IS
'Charge Details-Shows volume of usage of the original transaction. Source key identifies which records were created by the same original transaction. The original record will show Original_Usage_Qty and Usage_Qty. Any secondary transactions for the same source key will retain the Original_Usage_qty, however the Usage_Qty will be 0.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.USAGE_YEAR_NUM IS
'Charge Details-Only the ''year'' portion of the date that the charge is being claimed for.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.USER_ID IS
'Employee Info-For DASD, may also be a RACF group name, an HLQ, or Owner. Field can be alphanumeric with wildcards.  Wildcard entries must be at least 4 characters long with a ‘*’ suffix.  The use of  the following special characters are allowed:  @ , $. If the  SERVICE_CD is not ‘CPU’ or “*”, a USER_ID value of other than ‘*” is required.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.UTIL_DMN_CD IS
'Employee Info-Utilization Domain code. Used in Utilization reporting. The utilization domain code is assigned to segment labor based on the geographical relationship between the practitioner performing the labor and the organization that owns the contract/work item for which the labor is being performed.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.UTIL_TYP_CD IS
'Employee Info-Utilization Type code. Used in the Utilization reporting. The utilization type code is assigned to segment labor based primarily on the PACT account type code associated with the claimed labor.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.VIEW_ID IS
'System Use-An id which causes this row/record to appear in a particular view. (LBR, MISC, NET, HOST, DASD, TAPE, etc). Field is no longer applicable.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.VIEW_SET_CD IS
'System Use-This code was used to subdivide a physical table into logical customer views (LOB, etc.) Field no longer applicable.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.WED_HRS IS
'Charge Details-Hours charged to Wednesday.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.WEEK_ENDING_DATE IS
'Charge Details-Week Ending date for the period that the transaction was for.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.WORK_ITEM_ID IS
'Charge Details-Value directly from CLAIM - the work item against which labor is being claimed. Used for measurment purposed under the ACCOUNT_ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.XFER_TYP_CD IS
'Charge Details-This code is used for the FCR process. Can be populated with G meaning it went through the FCR process. All other values (N or blank) means it did not go through the FCR process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_CTRY_CMPNY_CD IS
'Charge To Info-The concatenation of the BMS requesting/importing/to be charged country number and company code. A table containing Country Numbers and their descriptions can be found in BDWDM.COMPANY_REF_V.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_CTRY_CMPNY_CD IS
'Charge out Info-The concatenation of the BMS performing/exporting/charging out country number and company code. A table containing Country Numbers and their descriptions can be found in BDWDM.COMPANY_REF_V.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.LEDGER_DT IS
'System Use-The first day of the ledger month and ledger year assigned to the record.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.BASE_RATE_AMT IS
'Charge Details-The Base Rate Amount identifies the rate, without adders, associated with a given service label/group. This rate is generated through SSC.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.BURDEN_ADDER_AMT IS
'Charge Details-The Burden Adder  Rate Amount identifies the rate, associated with a given service type code. Valid values are zero (0) or any positive or negative number. This is part of the final rate calculation.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SERVCD_ADDER_AMT IS
'Charge Details-The service adder amount. Could be added based on the employee and the activity code being claimed for.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SERVENV_ADDER_AMT IS
'Charge Details-The Service environment adder amount. Could be added based on the service environment within the activity code.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SERVTYP_ADDER_AMT IS
'Charge Details-Service type adder amount. This is the adder rate added due to the service type being billed for.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CONTR_RATE IS
'Charge Details-The rate assigned to the employee from the Employee Master File record.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.DELIVERY_TAG IS
'Charge Details-Delivery tag. For non-US it’s the concatenation of ORIG_COUNTRY_CD||  ';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_SAP_CMPNY_CD IS
'iERP-The SAP company code being charged. Will be populated even if not an iERP country.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_LGR_FD_SYS_CD IS
'iERP-The Ledger Feed system code where the record was sent for the charge to side of the entry. Field can be populated with CLS (Ledger), BH (iERP), or blank (not sent).';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_ISO_CNTRY_CD IS
'Charge To Info-This is the two character ISO code for the country being charged';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.TOA_ID IS
'Charge Details-Type of Activity id. The purpose of a TOA is to provide a link between actual contract revenue and cost with the plan revenue and cost. The linkage is at a project/worknumber level by TOA. Valid codes are located on BMSIW.TOA_REF.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_COST_CENTER IS
'Charge To Info-The cost center being charged. This is an iERP specific field.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_SAP_CMPNY_CD IS
'iERP-The SAP company code of the originating country. Will be populated even if not an iERP country.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_ISO_CNTRY_CD IS
'Charge out Info-This is the two character ISO code of the originating country. Ex. Country 866 is UK, country 641 is CN.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_ISO_CURR_CD IS
'Charge To Info-The ISO equivalent curency code for ORIG_CURRENCY_CD. The worldwide accepted three character currency code equivalent to the BMS currency code. Must be ISO-defined and listed on the BMSIW.CURRENCY_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_CMP_ISO_CR_CD IS
'Charge out Info-This is the two character ISO code of the originating currency code.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_LGR_FD_SYS_CD IS
'iERP-The Ledger Feed system code where the record was sent for the originating side of the entry.. Field can be populated with CLS (Ledger), BH (iERP), or blank (Not Sent).';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_COST_CENTER IS
'Charge out Info-The cost center charging out. This is an iERP specific field.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_SAP_ACCT_NO IS
'iERP-This field is no longer used. The SAP Charge to Account number, if the charge to country is a BH country.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.REL_SAP_ACCT_NO IS
'iERP-This field is no longer used. The relief (recovery) SAP Account number, if the originating country is a BH country.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_PROFIT_CENTER IS
'iERP-This field is no longer used. The originating profit center, if the originating country is a BH country.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_PROFIT_CENTER IS
'iERP-This field is no longer used. The charge to profit center, if the charge to country is a BH country.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_WBS_ELEMENT IS
'iERP-This field is no longer used. The Charge to WBS element for SAP entries, if the charge to country is a BH country.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.REL_WBS_ELEMENT IS
'iERP-This field is no longer used. The Relief (recovery) WBS element for SAP entries, if the originating country is a BH country.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.EMP_SAP_COMPANY IS
'Employee Info-Employee''s SAP company.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.EMP_SAP_CST_CNTR IS
'Employee Info-Employee''s SAP Cost Center.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.LEDGER_REF_KEY IS
'System Use-The Ledger Reference Key. Field is no longer in use.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_LOC_CC_DPT_ID IS
'Charge out Info-Originating location cost centers department code';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SAP_LOGICAL_SYSTEM IS
'iERP-This field is no longer used. SAP logical system.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SAP_CSTACCT_TYP_CD IS
'iERP-This field is no longer used. The Sap Cost Account Type Code. If the Sap Cost Account Type is a GL Account or a Secndary Cost Element. Required for SAP Enabled Countries. Valid values are GL or CE.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SAP_CSTACCT_NO IS
'iERP-This field is no longer used. The SAP Cost Accouant. Must be a valid Account on the BMSIW.GL_ACCOUNT_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_SAP_ACCT_TYP IS
'iERP-This field is no longer used. The type of SAP Account being charged, if the charge to country is a BH country.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.REL_SAP_ACCT_TYP IS
'iERP-This field is no longer used. The type of SAP Account being recovered from, if the originating country is a BH country.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.LEDGER_ITEM_KEY IS
'System Use-The Ledger Reference Key of the item. Currently not used.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.TEAM_ID IS
'Employee Info-A code used at some locations to describe the employee''s team affiliation. Associated with AP (mainly India) as another way to categorize labor charges.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CIAS_NEC_CD IS
'Inter-Company-CIAS Nature Expense Code, sent to CIAS by BMS. Must be used with a valid CIAS TOS.  Valid combinations that can be used in BMS are listed on BMSIW.CIAS_NEC_CODE_REF_V';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CIAS_INV_EXCHG_RATE IS
'Inter-Company-The exchange rate used by CIAS to calculate from the country''s local currency to the invoicing currency. BMS only sends local currency to CIAS, therefore the USD and invoicing currency is derived in CIAS based on their settings.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CIAS_INV_TOT_CHRG_AMT IS
'Inter-Company-The CIAS invoiced total charged amount for the record in USD.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CIAS_INV_UNIT_PRICE_AMT IS
'Inter-Company-The CIAS invoiced unit price amount in USD for the items billed in the record.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CIAS_INV_CURR_CD IS
'Inter-Company-The two digit CIAS currency code of the amounts posted in CIAS_INV_COST_AMT_LC and CIAS_INV_NET_AMT_LC.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHANNEL_CD IS
'Commercial-The Channel Code represents a method through which a solution is sold.*character (A - Z, 0 - 9) value. If Channel Code is non-blank, must be in CHANNEL_REF with open status. Current combinations based on the Account ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ICA_PROJECT IS
'Inter-Company-The Project number (ACCOUNT_ID) on the charge and ICA. For iERP items this will be the short ID of the level 2 WBS Element.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_ISO_CURR_CD IS
'Charge out Info-The ISO equivalent curency code for CHRG_CURRENCY_CD. The worldwide accepted three character currency code equivalent to the BMS currency code. Must be ISO-defined and listed on the BMSIW.CURRENCY_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_DFLT_LEDG_CD IS
'SOP Import/Export-LEDGER CD TO USE FOR SOP MEMO ENTRY in the S&D country';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_DFLT_CMPNY_CD IS
'SOP Import/Export-The default company code of the charge to country. Dictates what company to use for the MEMO transaction.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_ID IS
'SOP Import/Export-Contract Hub ID. Must exist in the BMSIW.SOP_HUB_REF table as a valid SOP_HUB_ID with a SOP_HUB_TYP_CD of ‘C’ in open status.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_COUNTRY_CD IS
'SOP Import/Export-CONTRACT Hub country number.  This is the Hub MCO (605 Singapore Hub or 606 Ireland Hub) that the contract belongs to.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_COMPANY_CD IS
'SOP Import/Export-The contract HUB company. This is the HUB company that the contract belongs to.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_DIV_CD IS
'SOP Import/Export-Will identify the Contract Division hosting cost charges from the GR/GDCs. Required if CHUB_ID is not blank. Must exist in the BMSIW.DIVISION_REF table for the given Contract Hub Country/Company in open status.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_DEPT_ID IS
'SOP Import/Export-The Contract Hub Department hosting the charges from the GR/GDCs. Required if CHUB_ID is not blank. Must exist in the BDWDB.DEPT_REF table for the given Contract hub’s Country/Company/Div in open status.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_FINDIV_CD IS
'SOP Import/Export-Contract HUB Financial Division. The financial charge financial division is the ledger division of the Contract HUB country. VALID VALUES: Fin Chg division-part of financial charge division.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_FIN_MAJ_NUM IS
'SOP Import/Export-Contract HUB Financial Major. The financial major used for the contract HUB entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_FIN_MIN_NUM IS
'SOP Import/Export-Contract HUB Financial Minor. The financial minor used for the Contract HUB entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_LERU_ID IS
'SOP Import/Export-Contract HUB Financial Leru. The Financial Leru used for the booking of the Contract HUB entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_CURRENCY_CD IS
'SOP Import/Export-The charge currency code of the CHUB. Currency code must be valid on the BMSIW.CURRENCY_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_LCL_CURR_CD IS
'SOP Import/Export-The local ledger currency of the CHUB country. Currency code must be listed on the BMSIW.CURRENCY_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_LEDGER_CD IS
'SOP Import/Export-Contract HUB Ledger Code. The ledger code to be used for the booking of the Contract Hub entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_LGR_FEED_SYS_CD IS
'SOP Import/Export-Contract HUB Ledger Feed System. The Ledger Feed system code where the CHUB record was sent for the charge to side of the entry. Field can be populated with CLS (ledger), BH (iERP), or blank (not sent).';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_SAP_CMPNY_CD IS
'SOP Import/Export-The SAP Company Code of the Contract HUB country/company.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_ISO_CURR_CD IS
'SOP Import/Export-The ISO equivalent curency code for CHUB_CURRENCY_CD. The worldwide accepted three character currency code equivalent to the BMS currency code. Must be ISO-defined and listed on the BMSIW.CURRENCY_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_INTRACO_CHRG_IND IS
'SOP Import/Export-This is used as the CHRG_INTRACO_CHRG_IND when the CHUB is being charged. See CHRG_INTRACO_CHRG_IND for usage';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_LOC_CD IS
'SOP Import/Export-The Contract HUB department LOC CD. The LOC CD used for the Contract HUB Entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_ORG_CD IS
'SOP Import/Export-Contract HUB department ORG CD. The Org CD is another level of grouping of LOC CDs.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_ORIG_LVL1_CD IS
'SOP Import/Export-CONTRACT HUB department ORIG LVL1. A roll up used within BMS. Level 1 is the top level.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_ORIG_LVL2_CD IS
'SOP Import/Export-CONTRACT HUB department ORIG LVL2. A roll up used within BMS. Level 2 is below level 1.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_ORIG_LVL3_CD IS
'SOP Import/Export-CONTRACT HUB department ORIG LVL3. A roll up used within BMS. Level 3 is below level 2.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_FA_CD IS
'SOP Import/Export-The contract HUB Financial Area code.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_ORDREF_NUM IS
'SOP Import/Export-Contract HUB Order Reference. The Order Reference related to the Contract HUB department. This field can be found in the ledger.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_LEDGER_DEST_CD IS
'SOP Import/Export-Contract HUB Ledger Destination. The instance of ledger transaction was sent to for the booking of the Contract HUB entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_LOC_TYP_CD IS
'SOP Import/Export-Contract HUB department LOC Typ CD. The LOC Typ CD gives you the ability to group transactions by LOC CDs.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_ORG_TYP_CD IS
'SOP Import/Export-Contract HUB department Orig Typ CD. The Orig Typ CD gives you the ability to group transactions by ORG CDs';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_LOC_XFER_CD IS
'SOP Import/Export-Contract HUB department LOC XFER CD. This is a grouping of LOC CDs, used within the FCR process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_ORG_XFER_CD IS
'SOP Import/Export-Contract HUB department Org Xfer CD. This is a grouping of ORG Cds, used within the FCR process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_LOB_ID IS
'SOP Import/Export-Contract HUB department LOB ID. The LOB ID of the Contract HUB entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_LCL_CURR_ISO_CD IS
'SOP Import/Export-The ISO equivalent curency code for CHUB_LCL_CURR_CD. The worldwide accepted three character currency code equivalent to the BMS currency code. Must be ISO-defined and listed on the BMSIW.CURRENCY_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_EXCH_RT_IND IS
'SOP Import/Export-No longer a used field.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_LCL_CURR_ISO_CD IS
'SOP Import/Export-The ISO equivalent curency code for RHUB_LCL_CURR_CD. The worldwide accepted three character currency code equivalent to the BMS currency code. Must be ISO-defined and listed on the BMSIW.CURRENCY_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_EXCH_RT_IND IS
'SOP Import/Export-No longer a used field.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_ISO_CURR_CD IS
'SOP Import/Export-The ISO equivalent curency code for RHUB_CURRENCY_CD. The worldwide accepted three character currency code equivalent to the BMS currency code. Must be ISO-defined and listed on the BMSIW.CURRENCY_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_INTRACO_CHRG_IND IS
'SOP Import/Export-This is used as the CHRG_INTRACO_CHRG_IND when the RHUB is being charged. See CHRG_INTRACO_CHRG_IND for usage';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.REC_COUNTRY_CD IS
'Commercial-BMS Receiving country code.  Directly related to the Account ID. This is the country receiving the benefit of the service. For more information regarding the Account ID see BDWDM.DPCHARGE_V';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.REC_CUSTOMER_NO IS
'Commercial-The receiving customer number associated with the transaction.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SOP_TX_TYPE IS
'SOP Import/Export-SOP Transaction type. This field will be populated if the transaction flowed through SOP. The possible values are G2R: GDC GR country to the Rhub / R2C: Rhub to the Chub / C2F: Chub to the Final (Final = account id charged) / R2F: RHUB to Final (Final = account charged) / MEM: Memo Entry to S&D country (for in Scope)';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.EXPORT_CURRENCY_CD IS
'Inter-Company-This is the currency code of the amount represented in the EXPORT_AMT field. This is for information purposes only';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.EXPORT_CIAS_CURR_CD IS
'Inter-Company-The CIAS two digit equivalent of the EXPORT_CURRENCY_CD';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.EXPORT_AMT IS
'Inter-Company-This is the local amount sent to CIAS based on the TOT_CHRG_AMT field for the transaction. The currency code can be found in the EXPORT_CURRENCY_CD field. This is for information purposes only';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SPOT_EXCH_RATE IS
'Charge Details-The exchange rate used to convert the originating currency to USD on the day the record was processed.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SPOT_RATE_USD_AMT IS
'Charge Details-The amount calculated using the TOT_CHRG_AMT and the SPOT_EXCH_RATE.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_LCL_CURR_CD IS
'Charge out Info-The ledger currency code of the originating country/company.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_LCL_CURR_ISO_CD IS
'Charge To Info-The ISO equivalent curency code for ORIG_LCL_CURR_CD. The worldwide accepted three character currency code equivalent to the BMS currency code. Must be ISO-defined and listed on the BMSIW.CURRENCY_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.HUB_LOCAL_AMT IS
'SOP Import/Export-The HUB local currency amount. Calculated using TOT_CHRG_AMT divided by C2C_LOCAL_EXCH_RT or R2R_LOCAL_EXCH_RT.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.G2R_CHRG_EXCH_RT IS
'SOP Import/Export-GR/GDC to Resource HUB exchange rate. The daily rate for the currency''s exchange between the provider and the project for non-SOP charges. For SOP transactions it is the currency''s exchange between the provider and the HUB.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.R2R_LOCAL_EXCH_RT IS
'SOP Import/Export-Resource HUB cost to ledger LCL exchange rate. Used to calculate the HUB_LOCAL_AMT using the TOT_CHRG_AMT if record is for resource HUB related.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.R2F_CHRG_EXCH_RT IS
'SOP Import/Export-CHUB to S&D exchange rate. Rate used to calculate the TOT_CHRG_AMT of the Memo entry for the S&D country based on the Landed amount of the HUB. (Resource HUB and Contract HUB are the same)';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.C2C_LOCAL_EXCH_RT IS
'SOP Import/Export-CHUB cost to ledger LC exchange rate. Rate used to calculate the HUB_LOCAL_AMT from the charge to local cu. If record is contract hub related.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.C2F_CHRG_EXCH_RT IS
'SOP Import/Export-CHUB to S&D exchange rate. Rate used to calculate the TOT_CHRG_AMT of the Memo entry for the S&D country based on the Landed amount of the HUB.(Resource HUB and Contract HUB are different)';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_CURRENCY_CD IS
'Charge To Info-BMS Currency code of charge to country / company. The currency code must be listed on the BMSIW.CURRENCY_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_SOP_ICALESS_CD IS
'SOP Import/Export-Charge to country/company''s internal ICAless Indicator. Field can be populated with a Y, N, I, E, B, or a blank. Valid Values: I - ICA Required for ImportTransactions Only, E - ICA Required for Export Transactions Only, B - ICA Required for Both Import and Export transactions, N - Transaction not eligible, would not be sent to CIAS Y - No ICA required for any transaction. Populated on all records, however only comes into use for SOP G2R or R2C transactions.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_SOP_ICALESS_CD IS
'SOP Import/Export-Originating country/company''s internal ICAless Indicator. Field can be populated with a Y, N, I, E, B, or a blank. Valid Values: I - ICA Required for ImportTransactions Only, E - ICA Required for Export Transactions Only, B - ICA Required for Both Import and Export transactions, N - Transaction not eligible, would not be sent to CIAS Y - No ICA required for any transaction. Populated on all records, however only comes into use for SOP G2R or R2C transactions.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_SOP_ENABLE_IND IS
'SOP Import/Export-The SOP ENABLED INDICATOR. The originating practitioner''s SOP elegibility based on their EBU. However the SOP_IND may be different and is the field that is actually used for the SOP process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_SOP_LOB IS
'SOP Import/Export-ORIG SOP LINE OF BUSINESS - Based on the practitioner''s (originating country) EBU. Used for the SIH brokering process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_SOP_OVR_CHRGGRP_CD IS
'SOP Import/Export-Charge group code used for the transaction in the SIH brokering process. This field is optional and only populated if the records is part of the rerate process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_SOP_OVR_RATELST_ID IS
'SOP Import/Export-The rate list used for the transaction in the SIH brokering process. This field is optional and only populated if the records is part of the rerate process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_SOP_OVR_UPLIFT_AMT IS
'SOP Import/Export-Uplift amount used for the transaction in the SIH brokering process. This field is optional and only populated if the records is part of the rerate process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_SOP_OVR_UPLIFT_PCT IS
'SOP Import/Export-Uplift percentage used for the transaction in the SIH brokering process. This field is optional and only populated if the records is part of the rerate process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.PROJ_SOP_IND IS
'SOP Import/Export-Project SOP Indicator. Indicates with a Y or N if the ACCOUNT_ID is HUB managed.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_BASELBR_RATE_AMT IS
'SOP Import/Export-Resource HUB Base Labor Rate Amount. This is the rerate amount from the pricelist used in the SIH rerate process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_CHRG_GROUP_CD IS
'SOP Import/Export-The RHUB''s charge group code used for the transaction in the SIH brokering process. This field is optional and only populated if the records is part of the rerate process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_CHRG_GRP_OVR_IND IS
'SOP Import/Export-The charge group override indicator. This is a Y or N indicator which specifies if the charge group of the practioner should be overrided.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_COMPANY_CD IS
'SOP Import/Export-The Resource HUB company. This is the HUB company that the resource belongs to.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_COUNTRY_CD IS
'SOP Import/Export-Resource Hub country number.  This is the Hub MCO (605 Singapore Hub or 606 Ireland Hub) that the resource belongs to.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_CURRENCY_CD IS
'SOP Import/Export-The charge currency code of the RHUB. Currency code must be valid on the BMSIW.CURRENCY_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_DEPT_ID IS
'SOP Import/Export-The Resource Hub Department hosting the charges from the GR/GDCs. Required if RHUB_ID is not blank. Must exist in the BDWDB.DEPT_REF table for the given Contract hub’s Country/Company/Div in open status.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_DEPT_LOC_TYP IS
'SOP Import/Export-Resource HUB department LOC Typ CD. The LOC Typ CD gives you the ability to group transactions by LOC CDs.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_DEPT_PROJECT_ID IS
'SOP Import/Export-Resource HUB Department Project ID. Currently not used.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_DEPT_XFER_TYP IS
'SOP Import/Export-Resource HUB department Org Xfer CD. This is a grouping of ORG Cds, used within the FCR process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_DIV_CD IS
'SOP Import/Export-The SOP resource hub division code. Required when RHUB_ID is not blank. Must be a valid division in BDWDB.DIVISION_REF based on it’s SOP_HUB_ID/RHUB_ID in BMSIW.SOP_HUB_REF_V';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_DPT_MAJ_NUM IS
'SOP Import/Export-Resource HUB Financial Major. The financial major used for the resource HUB entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_DPT_MIN_NUM IS
'SOP Import/Export-Resource HUB Financial Minor. The financial minor used for the resource HUB entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_FA_CD IS
'SOP Import/Export-The resource HUB financial Area code.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_FINCHG_ORDREF_NUM IS
'SOP Import/Export-Resource HUB Order Reference. The Order Reference related to the Resource HUB department. This field can be found in the ledger.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_FINDIV_CD IS
'SOP Import/Export-Resource HUB Financial Division. The financial charge financial division is the ledger division of the Resource HUB country. VALID VALUES: Fin Chg division-part of financial charge division.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_ID IS
'SOP Import/Export-The SOP resource hub ID.  Required when SOP Indicator = Y, must be a valid value in BMSIW.SOP_HUB_REF with a SOP_HUB_TYP_CD = R.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_LCL_CURR_CD IS
'SOP Import/Export-The local ledger currency of the RHUB country. Currency code must be listed on the BMSIW.CURRENCY_REF table.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_LGR_FEED_SYS_CD IS
'SOP Import/Export-Resource HUB Ledger Feed System. The Ledger Feed system code where the RHUB record was sent for the charge to side of the entry. Field can be populated with CLS (ledger), BH (iERP), or blank (not sent).';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_LERU_ID IS
'SOP Import/Export-Resource HUB Financial Leru. The Financial Leru used for the booking of the Resource HUB entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_LGR_DEST_CD IS
'SOP Import/Export-Resource HUB Ledger Destination. The instance of ledger transaction was sent to for the booking of the Resource HUB entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_LGR_LOC_CD IS
'SOP Import/Export-Resource HUB Ledger Location Code. The Ledger Code used for the Resource HUB transaction.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_LOB_ID IS
'SOP Import/Export-Resource HUB department LOB ID. The LOB ID of the Contract HUB entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_LOC_XFER_CD IS
'SOP Import/Export-Resource HUB department LOC XFER CD. This is a grouping of LOC CDs, used within the FCR process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_ORIG_LOC_CD IS
'SOP Import/Export-The Resource HUB department LOC CD. The LOC CD used for the Resource HUB Entry.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_ORIG_LOC_TYP_CD IS
'SOP Import/Export-Resource HUB department LOC Typ CD. The LOC Typ CD gives you the ability to group transactions by LOC CDs.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_ORIG_LVL1_CD IS
'SOP Import/Export-Resource HUB department ORIG LVL1. A roll up used within BMS. Level 1 is the top level.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_ORIG_LVL2_CD IS
'SOP Import/Export-Resource HUB department ORIG LVL2. A roll up used within BMS. Level 2 is below level 1.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_ORIG_LVL3_CD IS
'SOP Import/Export-Resource HUB department ORIG LVL3. A roll up used within BMS. Level 3 is below level 2.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_ORIG_ORG_CD IS
'SOP Import/Export-Resource HUB department ORG CD. The Org CD is another level of grouping of LOC CDs.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_ORIG_ORG_TYP_CD IS
'SOP Import/Export-Resource HUB department Orig Typ CD. The Orig Typ CD gives you the ability to group transactions by ORG CDs';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_ORIG_ORG_XFER_CD IS
'SOP Import/Export-Resource HUB department Org Xfer CD. This is a grouping of ORG Cds, used within the FCR process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_PRICELST_ID IS
'SOP Import/Export-RESOURCE HUB PRICE LIST ID. If the item went through the SIH rerate process, this is the price list ID''d as the correct list used to determine the new rate amount.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_PRICELST_USED_ID IS
'SOP Import/Export-RESOURCE HUB PRICE LIST USED. If the item went through the SIH rerate process, this is the price list actually used to determine the new rate amount.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_SAP_COMPANY_CD IS
'SOP Import/Export-The SAP Company Code of the Resource HUB country.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_SERVCD_ADDER_AMT IS
'SOP Import/Export-Resource HUB Service Code Adder Amount. Resource HUB adder Amount. This is the adder amount based on the service code used in the SIH rerate process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_SERVTYP_RATE_AMT IS
'SOP Import/Export-Resource HUB Service Type Adder Amount. Resource HUB adder Amount. This is the adder amount based on the service type used in the SIH rerate process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SOP_IND IS
'SOP Import/Export-SOP Indicator. Valid Values Y = Yes, SOP Eligible Record or Blank or N = No, Not SOP Eligible Record. X = The employees department was targeted to use the COVERAGE_ID model, however the EBU that the department is designated to roll up to has not bee set up in PACT. C = The iERP account is being charged and the Account is SOP enabled, however the target ledger is not iERP or the sender of the charge has indicated that the charge is SOP but SSC determines the charge is not SOP. U = Updated via mass SSCLB udpate.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.TOT_RHUB_AMT IS
'SOP Import/Export-Total RHUB Amount. This is the rate used to calculate the total amount to be charged for the RHUB export transaction if this transaction is part of the SIH rerate process.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.INTERCO_SUMMARY_KEY IS
'Inter-Company-Inter-company summarization key. This is the BMS/CIAS reconciling number. You can use this number to find the record in CIAS by locating this number in the LOCAL_DATA field of the invoice line item that this record resides on.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.PROJECT_COUNTRY_CD IS
'Project Info-BMS Country Code being charged for the project. Must be valid on BDWDM.COUNTRY_REF_V.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.PRFRMNG_CTRY_CD IS
'Charge out Info-The country code of who originated the transaction.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.PRFRMNG_CMPNY_CD IS
'Charge out Info-The company code of who originated the transaction.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.LANDED_IND IS
'SOP Import/Export-LANDED INDICATOR - Location of the employee peforming the service billed for. Y = The employee was on assignment within the country during the period of the assignment. N = The employee was not in the country being charged during the period of the assignment. If employee is SOP and the project is SOP managed and the field = Y, then the transactions is billed to the S&D country rather than staying within the HUB.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.GR_STATUS IS
'SOP Import/Export-Status from Labor feed  that indicates if an employee is HUB Managed  GR = HUB managed,NGR = Non Hub Managed';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_GR_STATUS IS
'Employee Info & SOP-Status from Labor feed  that indicates if an   employee is HUB Managed  GR = HUB managed,NGR = Non Hub Managed';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_SOP_HUB_IND IS
'SOP Import/Export-Original Status from original feed that indicates  if employee is HUB Managed Y=yes N=No';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.SOP_HUB_IND IS
'SOP Import/Export-Identifies the type of Hub: R (Resource) or C (Contract) Both (B) or No participation (N)';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.BH_FINGL15_IND IS
'iERP-Designates whether the entry was sent to BH via the fingl015 interface. Field can be populated with Y (Yes), N (No) or blank (No).';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_BH_DEPLOYED_FG IS
'Charge out Info-Indicates that the originating country/company is a Blue Harmony deployed country.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_INTRACO_CHRG_IND IS
'Commercial-Intracompany code charging indicator for charged country/company. Can be populated with a Y, N or blank. This identifies if the transaction is within the same country but different companies, if the brokering and/or delivery project would BMS to create the final entries for the record. For BMS to create the entries both the CHRG_INTRACO_CHRG_IND and ORIG_INTRACO_CHRG_IND must be Y.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHUB_CIAS_CTRY_CD IS
'Inter-Company-CIAS Contract Hub country number.  This is the CIAS Hub country (605 Singapore Hub or 606 Ireland Hub) that the contract belongs to.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.FINCHG_MIN_CD IS
'Charge To Info-This is the code used to pull the valid minor combination for the transaction off the Ledger Minor Table in Pact.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_INTRACO_CHRG_IND IS
'Commercial-Intracompany code charging indicator for originating country/company. Can be populated with a Y, N or blank. This identifies if the transaction is within the same country but different companies, if the brokering and/or delivery project would BMS to create the final entries for the record. For BMS to create the entries both the CHRG_INTRACO_CHRG_IND and ORIG_INTRACO_CHRG_IND must be Y.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.RHUB_CIAS_CTRY_CD IS
'Inter-Company-CIAS Resource Hub country number.  This is the CIAS Hub MCO (605 Singapore Hub or 606 Ireland Hub) that the resource belongs to.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.LCNS_RQRD_IND IS
'ATTAC-Indicates a license code is required for the  employee';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.LCNS_RQRD_START_DT IS
'ATTAC-The start date of when the license code is required';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.LCNS_CD IS
'ATTAC-The license code covering the employee''s work location';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ECNMC_LCTN_ID IS
'ATTAC-The economic location code of the employee''s work location';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ASSGNMT_STAT_CD IS
'ATTAC-Assignment Status Code';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ASSGNMT_STAT_TYPE_CD IS
'ATTAC-Assignment Status Type Code';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.TAX_CD IS
'ATTAC-The tax code for the Account  coming from the ICA_MASTER_REF. Valid combinations can be found on BMSIW.TAX_CATEGORY_REF_V';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.PRFRMG_PROJ_ID IS
'ATTAC-The local global distribution center''s project ID.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.DOU_NUM IS
'ATTAC-The DOU number';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_CONTROL_GROUP_CD IS
'Charge out Info-The original control group code as received by SSC from the service Provider. Identifies the domain in which the Account ID and Account Group Id are defined by. Allows the ACCOUNT_IDs to be organized by Geography. Current values are available on the table BDWDB.CONTROL_GRP_REF_V';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.DSTRBTN_CONTROL_CD IS
'Project Info-The distribution control group is the control group value of the account ID that this account activity is being distributed to.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_ACCOUNT_ID IS
'Charge Details-The original Account Id  as received by SSC from the service Provider';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CHRG_CATEGORY_CD IS
'ATTAC-Charge category per CHARGE_CATEGORY_REF table. A further catagorization of charges for countries using licenses. One of the factors that drives what NEC to use.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.LCNS_SCHEME_CD IS
'ATTAC-License Scheme Code for NEC determination';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.ORIG_CIAS_NEC_CD IS
'Inter-Company-CIAS Nature Expense Code as it relates to India License transactions. This is original NEC BMS would have used for a non-India transaction. Due to the license requirements, BMS uses this field to derive a license scheme code which is then utilzed as part of the criteria to derive the correct NEC based on the BMSIW.LICENSE_NEC_REF_V for the transaction. Must be used with a valid CIAS TOS.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CIAS_INV_UPLIFT_PCT IS
'Inter-Company-The percentage of uplift CIAS has put on the charge. Uplift is determined based on the NEC and the countries involved.The listing is held on the WWIA website https://apps.na.collabserv.com/wikis/home?lang=en-us#!/wiki/W66a6350063a5_4a4b_9196_cf55c8b7445a/page/IPB%20%23194%20-%20WT%20INTERCOMPANY%20SERVICE%20CHARGE%20UPLIFT';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CIAS_INV_COST_AMT_LC IS
'Inter-Company-CIAS Invoice Line Amount in Local Currency without Uplift (If Required) of the originating country on the record';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CIAS_INV_COST_AMT_US IS
'Inter-Company-CIAS Invoice Line Amount in USD Currency without Uplift (If Required)';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CIAS_INV_NET_AMT_LC IS
'Inter-Company-CIAS Invoice Line Amount in Local Currency with Uplift (If Required) of the originating country on the record';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CIAS_INV_NET_AMT_US IS
'Inter-Company-CIAS Invoice Line Amount in USD Currency with Uplift (If Required)';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CIAS_INV_CIAS_CURR_CD IS
'Inter-Company-The 2 digit currency code of the local CIAS currency of the ORIG_COUNTRY_CD';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.TAX_CTGRY_CD IS
'ATTAC-The tax category that the tax code faulls into. Valid combinations can be found on BMSIW.TAX_CATEGORY_REF_V';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.CIAS_INV_LINE_NUM IS
'Inter-Company-The CIAS invoice line item number the record relates to.';

COMMENT ON COLUMN BDWDB.CHRG_DTL18.LST_UPDT_TMS IS
'System Use-The time stamp of when the record was loaded into BDW';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.LEDGER_MONTH_NUM IS
'System Use-The month of the of the costing cycle - Can be used to join with CHRG_DTLXX and CHRG_LCLXX to pull further record information.';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.LEDGER_LOAD_SEQ IS
'System Use-Sequence Number of the Month End costing cycle - Can be used to join with CHRG_DTLXX and CHRG_LCLXX to pull further record information.';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.ROW_SEQNO IS
'System Use-A unique number in the table for each row within the costing cycle. - Can be used to join with CHRG_DTLXX and CHRG_LCLXX to pull further record information.';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.SKILL_ADDER_FG IS
'Premium Skills-Indicator of whether labor cost rate includes a skill adder component. Field can be populated with Y, N, or blank (non-labor).';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.PRI_JOB_ROLE_ID IS
'Premium Skills-Primary job role ID for the Employee from EATOOL from UTILDM.EMF_UTIL Valid combinations can be found on BMSIW.SKILL_CLASS_REF_V';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.PRI_SKL_SET_ID IS
'Premium Skills-Primary skill set ID for the employee from EATOOL from UTILDM.EMF_UTIL. Valid combinations can be found on BMSIW.SKILL_CLASS_REF_V';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.SKILL_ADD_GRP_CD IS
'Premium Skills-Used to group employee''s based on their EBU''s that are in scope for the skill adder rule defined with the same SKILL_ADD_GRP_CD. Valid combinations can be found on BMSIW.SKILL_CLASS_REF_V';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.SKILL_ADD_TYP_CD IS
'Premium Skills-Used to indicate the type of premium skill adder that is applicable to this charge. Expected values can be; ';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.SKILL_ADDER_PCT IS
'Premium Skills-If SKILL_ADD_TYP_CD = "PR" then this field will contain the percent';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.SKILL_ADD_BRKR_IND IS
'Premium Skills-If the transaction is brokered, and the CHRG_GRP_OVR_IND = ''Y'' this field will have data.';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.BROKER_DIV_CD IS
'Brokering-If the transaction is brokered this field will have data.  ';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.BROKER_DPT_CD IS
'Brokering-If the transaction is brokered this field will have data. ';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.BROKER_UPLIFT_AMT IS
'Brokering-If the transaction is brokered, and the CHRG_GRP_OVR_IND = ''N'' this field will have data. ';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.CHRG_GRP_OVR_IND IS
'Premium Skills-If the transaction is brokered this field will have data.  ';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.BROKER_CHRG_GRP_CD IS
'Brokering-If the transaction is brokered, and the CHRG_GRP_OVR_IND = ''Y'' this field will have data. ';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.BROKER_BURDEN_CD IS
'Brokering-If the transaction is brokered, and the CHRG_GRP_OVR_IND = ''Y'' this field will have data.';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.BROKER_UNIT_PRICE_AMT IS
'Brokering-If the transaction is brokered, and the CHRG_GRP_OVR_IND = ''Y'' this field will have data.';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.COVERAGE_EBU IS
'Charge Details-The coverage enterprise business unit (Loc Code) a department rolls up to. The valid EBU''s can be reviewed on BMSIW.COVERAGE_REF_V';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.PRSNL_SYS_ID IS
'Employee Info-Personnel system identifier of the employee. Generally corresponds with the employee''s country code, unless the employee is not registered with a country yet.';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.TRANSACTION_CD IS
'ATTAC-The RBA transaction code';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.TRANSACTION_NAME IS
'ATTAC-The RBA transaction name';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.SUBMISSION_DTS IS
'ATTAC-The RBA transaction submission timestamp';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.APPROVER_EMP_NO IS
'ATTAC-The serial number of the approver of the RBA transaction';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.RBA_UNIT_OF_MEASURE IS
'ATTAC-The RBA unit of measure (may be able to reuse BMS)';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.RBA_CHARGE_METHOD IS
'ATTAC-The RBA charge method code';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.REF_CIAS_INVOICE_NUMBER IS
'ATTAC-Original CIAS invoice number';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.REF_CIAS_INVOICE_DATE IS
'ATTAC-Original CIAS invoice date ''YYMMDD''';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.BILLABLE_CHARGE_CD IS
'Charge Details-A Charge Code, sometimes called a "BCC". Similar to a Business Type.  Whereas a Business Type is assigned by Work Number and generally categorizes the work number, the Charge Code is assigned to a specific item under the work number. The Charge Code, as well as the Business Type, are used to assign the ledger account (division, major, minor, subminor) for both cost and revenue. In some countries, they also use to assign additional attributes for billing purposes, such as the sales tax classification.';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.PRODUCT_ID IS
'Charge Details-This value represents the Product Identifier. Field is sent to SSC and must exist on the PACT Table PRODUCT_TYP_REF (a.k.a. T510PRD).';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.LCNS_DOU_NUM IS
'ATTAC-The DOU number for the specific license';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.DOU_SOP_IND IS
'ATTAC-RBA provided - Indicates if the DOU is Hub managed (Y/N)';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.ASSGNMT_STATE_CD IS
'ATTAC-RBA provided - This is the employee''s state';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.ASSGNMT_CITY_NM IS
'ATTAC-RBA provided - This is the employee''s city';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.PRFRMNG_LBU_ID IS
'ATTAC-RBA provided for ATTAC only - Employee''s local business unit';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.ACCT_START_DT IS
'ATTAC-The start date of the Account_ID being used for the charge as identified in the BMSIW.GDC_PROJECT_ALL_V';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.ACCT_END_DT IS
'ATTAC-The end date of the Account_ID being used for the charge as identified in the BMSIW.GDC_PROJECT_ALL_V';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.LOCAL_DLVR_SRVC_FG IS
'ATTAC-Local Delivery Service Flag indicator will only have Y or N/ Establishes whether the project is locally held by India (Y) or held externally (N).';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.DOU_BILLG_START_DT IS
'ATTAC-The valid start date in which the ACCOUNT_ID can be billed against based on the LOCAL_PROJECT_ID, valid combinations can be found on BMSIW.GDC_PROJECT_ALL_V';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.DOU_BILLG_END_DT IS
'ATTAC-The valid end date in which the ACCOUNT_ID can be billed against based on the LOCAL_PROJECT_ID, valid combinations can be found on BMSIW.GDC_PROJECT_ALL_V';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.LCNS_DOU_START_DT IS
'ATTAC-The start date of the DOU for the specific license';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.LCNS_DOU_END_DT IS
'ATTAC-The end date of the DOU for the specific license';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.LOCAL_PROJECT_ID IS
'ATTAC-Performing project ID. Unique ID assigned to every project registered in project repositories like Project database (PDB), Intercompany DoU Application(IDA) etc.';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.SOP_SVC_PAYMT_PRJ_TYP_CD IS
'SOP Import/Export-Project type code participating in the SOP Services Payment process. This dictates where to send the end charge to for SOP out of scope or the where to send the memo entry for SOP in scope transations. Current values are N=Not Applicable, O=Opportunities, I=Internal, C=Commercial, A=All, D=Commercial and Opportunity or blank.';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.SOP_SVC_PAYMT_CTRY_CD IS
'SOP Import/Export-Country code where where the end charge for SOP out of scope is sent or the where to the memo entry for SOP in scope transations is sent.';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.SOP_SVC_PAYMT_CMPNY_CD IS
'SOP Import/Export-Company code within the country where the end charge for SOP out of scope is sent.';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.COST_INIT_SER_NUM IS
'System Use-Cost Initiator Serial Number(CNUM). RBA specific field. This is the serial number of the employee submitting the cost along with the HR system ID that the submitter''semployee record came from.';

COMMENT ON COLUMN BDWDB.CHRG_LAD17.COST_REF_NUM IS
'Charge Details-Cost Reference Number - RBA specific field. A field used by the user to reconcile the charges. The field is optional and does not have a set of standard values.';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.LEDGER_MONTH_NUM IS
'System Use-The month of the of the costing cycle - Can be used to join with CHRG_DTLXX and CHRG_LCLXX to pull further record information.';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.LEDGER_LOAD_SEQ IS
'System Use-Sequence Number of the Month End costing cycle - Can be used to join with CHRG_DTLXX and CHRG_LCLXX to pull further record information.';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.ROW_SEQNO IS
'System Use-A unique number in the table for each row within the costing cycle. - Can be used to join with CHRG_DTLXX and CHRG_LCLXX to pull further record information.';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.SKILL_ADDER_FG IS
'Premium Skills-Indicator of whether labor cost rate includes a skill adder component. Field can be populated with Y, N, or blank (non-labor).';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.PRI_JOB_ROLE_ID IS
'Premium Skills-Primary job role ID for the Employee from EATOOL from UTILDM.EMF_UTIL Valid combinations can be found on BMSIW.SKILL_CLASS_REF_V';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.PRI_SKL_SET_ID IS
'Premium Skills-Primary skill set ID for the employee from EATOOL from UTILDM.EMF_UTIL. Valid combinations can be found on BMSIW.SKILL_CLASS_REF_V';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.SKILL_ADD_GRP_CD IS
'Premium Skills-Used to group employee''s based on their EBU''s that are in scope for the skill adder rule defined with the same SKILL_ADD_GRP_CD. Valid combinations can be found on BMSIW.SKILL_CLASS_REF_V';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.SKILL_ADD_TYP_CD IS
'Premium Skills-Used to indicate the type of premium skill adder that is applicable to this charge. Expected values can be; ';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.SKILL_ADDER_PCT IS
'Premium Skills-If SKILL_ADD_TYP_CD = "PR" then this field will contain the percent';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.SKILL_ADD_BRKR_IND IS
'Premium Skills-If the transaction is brokered, and the CHRG_GRP_OVR_IND = ''Y'' this field will have data.';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.BROKER_DIV_CD IS
'Brokering-If the transaction is brokered this field will have data.  ';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.BROKER_DPT_CD IS
'Brokering-If the transaction is brokered this field will have data. ';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.BROKER_UPLIFT_AMT IS
'Brokering-If the transaction is brokered, and the CHRG_GRP_OVR_IND = ''N'' this field will have data. ';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.CHRG_GRP_OVR_IND IS
'Premium Skills-If the transaction is brokered this field will have data.  ';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.BROKER_CHRG_GRP_CD IS
'Brokering-If the transaction is brokered, and the CHRG_GRP_OVR_IND = ''Y'' this field will have data. ';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.BROKER_BURDEN_CD IS
'Brokering-If the transaction is brokered, and the CHRG_GRP_OVR_IND = ''Y'' this field will have data.';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.BROKER_UNIT_PRICE_AMT IS
'Brokering-If the transaction is brokered, and the CHRG_GRP_OVR_IND = ''Y'' this field will have data.';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.COVERAGE_EBU IS
'Charge Details-The coverage enterprise business unit (Loc Code) a department rolls up to. The valid EBU''s can be reviewed on BMSIW.COVERAGE_REF_V';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.PRSNL_SYS_ID IS
'Employee Info-Personnel system identifier of the employee. Generally corresponds with the employee''s country code, unless the employee is not registered with a country yet.';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.TRANSACTION_CD IS
'ATTAC-The RBA transaction code';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.TRANSACTION_NAME IS
'ATTAC-The RBA transaction name';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.SUBMISSION_DTS IS
'ATTAC-The RBA transaction submission timestamp';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.APPROVER_EMP_NO IS
'ATTAC-The serial number of the approver of the RBA transaction';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.RBA_UNIT_OF_MEASURE IS
'ATTAC-The RBA unit of measure (may be able to reuse BMS)';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.RBA_CHARGE_METHOD IS
'ATTAC-The RBA charge method code';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.REF_CIAS_INVOICE_NUMBER IS
'ATTAC-Original CIAS invoice number';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.REF_CIAS_INVOICE_DATE IS
'ATTAC-Original CIAS invoice date ''YYMMDD''';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.BILLABLE_CHARGE_CD IS
'Charge Details-A Charge Code, sometimes called a "BCC". Similar to a Business Type.  Whereas a Business Type is assigned by Work Number and generally categorizes the work number, the Charge Code is assigned to a specific item under the work number. The Charge Code, as well as the Business Type, are used to assign the ledger account (division, major, minor, subminor) for both cost and revenue. In some countries, they also use to assign additional attributes for billing purposes, such as the sales tax classification.';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.PRODUCT_ID IS
'Charge Details-This value represents the Product Identifier. Field is sent to SSC and must exist on the PACT Table PRODUCT_TYP_REF (a.k.a. T510PRD).';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.LCNS_DOU_NUM IS
'ATTAC-The DOU number for the specific license';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.DOU_SOP_IND IS
'ATTAC-RBA provided - Indicates if the DOU is Hub managed (Y/N)';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.ASSGNMT_STATE_CD IS
'ATTAC-RBA provided - This is the employee''s state';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.ASSGNMT_CITY_NM IS
'ATTAC-RBA provided - This is the employee''s city';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.PRFRMNG_LBU_ID IS
'ATTAC-RBA provided for ATTAC only - Employee''s local business unit';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.ACCT_START_DT IS
'ATTAC-The start date of the Account_ID being used for the charge as identified in the BMSIW.GDC_PROJECT_ALL_V';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.ACCT_END_DT IS
'ATTAC-The end date of the Account_ID being used for the charge as identified in the BMSIW.GDC_PROJECT_ALL_V';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.LOCAL_DLVR_SRVC_FG IS
'ATTAC-Local Delivery Service Flag indicator will only have Y or N/ Establishes whether the project is locally held by India (Y) or held externally (N).';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.DOU_BILLG_START_DT IS
'ATTAC-The valid start date in which the ACCOUNT_ID can be billed against based on the LOCAL_PROJECT_ID, valid combinations can be found on BMSIW.GDC_PROJECT_ALL_V';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.DOU_BILLG_END_DT IS
'ATTAC-The valid end date in which the ACCOUNT_ID can be billed against based on the LOCAL_PROJECT_ID, valid combinations can be found on BMSIW.GDC_PROJECT_ALL_V';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.LCNS_DOU_START_DT IS
'ATTAC-The start date of the DOU for the specific license';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.LCNS_DOU_END_DT IS
'ATTAC-The end date of the DOU for the specific license';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.LOCAL_PROJECT_ID IS
'ATTAC-Performing project ID. Unique ID assigned to every project registered in project repositories like Project database (PDB), Intercompany DoU Application(IDA) etc.';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.SOP_SVC_PAYMT_PRJ_TYP_CD IS
'SOP Import/Export-Project type code participating in the SOP Services Payment process. This dictates where to send the end charge to for SOP out of scope or the where to send the memo entry for SOP in scope transations. Current values are N=Not Applicable, O=Opportunities, I=Internal, C=Commercial, A=All, D=Commercial and Opportunity or blank.';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.SOP_SVC_PAYMT_CTRY_CD IS
'SOP Import/Export-Country code where where the end charge for SOP out of scope is sent or the where to the memo entry for SOP in scope transations is sent.';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.SOP_SVC_PAYMT_CMPNY_CD IS
'SOP Import/Export-Company code within the country where the end charge for SOP out of scope is sent.';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.COST_INIT_SER_NUM IS
'System Use-Cost Initiator Serial Number(CNUM). RBA specific field. This is the serial number of the employee submitting the cost along with the HR system ID that the submitter''semployee record came from.';

COMMENT ON COLUMN BDWDB.CHRG_LAD18.COST_REF_NUM IS
'Charge Details-Cost Reference Number - RBA specific field. A field used by the user to reconcile the charges. The field is optional and does not have a set of standard values.';

COMMENT ON COLUMN BDWDB.CHRG_LCL17.LEDGER_LOAD_SEQ IS
'System Use-Sequence Number of the Month End costing cycle - Can be used to join with CHRG_DTLXX and CHRG_LADXX to pull further record information.';

COMMENT ON COLUMN BDWDB.CHRG_LCL17.ROW_SEQNO IS
'System Use-A unique number in the table for each row within the costing cycle. - Can be used to join with CHRG_DTLXX and CHRG_LADXX to pull further record information.';

COMMENT ON COLUMN BDWDB.CHRG_LCL17.LOCAL_FIELD_1 IS
'Local Data-Description of the LOCAL_FIELD_2 field';

COMMENT ON COLUMN BDWDB.CHRG_LCL17.LOCAL_FIELD_2 IS
'Local Data-Local use fields vary depending on the type of file sent to BMS, however the description in LOCAL_FIELD_2 Should assist in explaining what is populating the field.';

COMMENT ON COLUMN BDWDB.CHRG_LCL17.LOCAL_FIELD_3 IS
'Local Data-Description of the LOCAL_FIELD_4 field';

COMMENT ON COLUMN BDWDB.CHRG_LCL17.LOCAL_FIELD_4 IS
'Local Data-Local use fields vary depending on the type of file sent to BMS, however the description in LOCAL_FIELD_3 Should assist in explaining what is populating the field.';

COMMENT ON COLUMN BDWDB.CHRG_LCL17.LOCAL_FIELD_5 IS
'Local Data-Description of the LOCAL_FIELD_6 field';

COMMENT ON COLUMN BDWDB.CHRG_LCL17.LOCAL_FIELD_6 IS
'Local Data-Local use fields vary depending on the type of file sent to BMS, however the description in LOCAL_FIELD_5 Should assist in explaining what is populating the field.';

COMMENT ON COLUMN BDWDB.CHRG_LCL17.LEDGER_MONTH_NUM IS
'System Use-The month of the of the costing cycle - Can be used to join with CHRG_DTLXX and CHRG_LADXX to pull further record information.';

COMMENT ON COLUMN BDWDB.CHRG_LCL18.LEDGER_LOAD_SEQ IS
'System Use-Sequence Number of the Month End costing cycle - Can be used to join with CHRG_DTLXX and CHRG_LADXX to pull further record information.';

COMMENT ON COLUMN BDWDB.CHRG_LCL18.ROW_SEQNO IS
'System Use-A unique number in the table for each row within the costing cycle. - Can be used to join with CHRG_DTLXX and CHRG_LADXX to pull further record information.';

COMMENT ON COLUMN BDWDB.CHRG_LCL18.LOCAL_FIELD_1 IS
'Local Data-Description of the LOCAL_FIELD_2 field';

COMMENT ON COLUMN BDWDB.CHRG_LCL18.LOCAL_FIELD_2 IS
'Local Data-Local use fields vary depending on the type of file sent to BMS, however the description in LOCAL_FIELD_2 Should assist in explaining what is populating the field.';

COMMENT ON COLUMN BDWDB.CHRG_LCL18.LOCAL_FIELD_3 IS
'Local Data-Description of the LOCAL_FIELD_4 field';

COMMENT ON COLUMN BDWDB.CHRG_LCL18.LOCAL_FIELD_4 IS
'Local Data-Local use fields vary depending on the type of file sent to BMS, however the description in LOCAL_FIELD_3 Should assist in explaining what is populating the field.';

COMMENT ON COLUMN BDWDB.CHRG_LCL18.LOCAL_FIELD_5 IS
'Local Data-Description of the LOCAL_FIELD_6 field';

COMMENT ON COLUMN BDWDB.CHRG_LCL18.LOCAL_FIELD_6 IS
'Local Data-Local use fields vary depending on the type of file sent to BMS, however the description in LOCAL_FIELD_5 Should assist in explaining what is populating the field.';

COMMENT ON COLUMN BDWDB.CHRG_LCL18.LEDGER_MONTH_NUM IS
'System Use-The month of the of the costing cycle - Can be used to join with CHRG_DTLXX and CHRG_LADXX to pull further record information.';

