SELECT OFFERING, OWNERSHIP, PLAN_DETAIL, sum("MER") AS REVENUE
FROM
  (SELECT "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."SBSCRN_ACTVTY_KEY" AS "SBSCRN_ACTVTY_KEY",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."SBSCRN_ID" AS "SBSCRN_ID",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."AGN_KEY" AS "AGN_KEY",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."USED_ACTVTY_TYPE_ID" AS "USED_ACTVTY_TYPE_ID",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."ACTVTY_DT" AS "ACTVTY_DT",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."ACTVTY_TS" AS "ACTVTY_TS",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."HHLD_ID" AS "HHLD_ID",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."PRTY_KEY" AS "PRTY_KEY",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."PRTY_ID" AS "PRTY_ID",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."PARNT_ACCT_KEY" AS "PARNT_ACCT_KEY",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."PARNT_ACCT_ID" AS "PARNT_ACCT_ID",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."PARNT_ACCT_NUM" AS "PARNT_ACCT_NUM",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."CHILD_ACCT_KEY" AS "CHILD_ACCT_KEY",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."CHILD_ACCT_ID" AS "CHILD_ACCT_ID",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."CHILD_ACCT_NUM" AS "CHILD_ACCT_NUM",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."VEH_KEY" AS "VEH_KEY",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."DVC_KEY" AS "DVC_KEY",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."DVC_ID" AS "DVC_ID",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."EQMNT_KEY" AS "EQMNT_KEY",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."EQMNT_ID" AS "EQMNT_ID",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."PLAN_KEY" AS "PLAN_KEY",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."PLAN_ID" AS "PLAN_ID",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."OFR_ID" AS "OFR_ID",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."FROM_PLAN_KEY" AS "FROM_PLAN_KEY",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."FROM_PLAN_ID" AS "FROM_PLAN_ID",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."FROM_OFR_ID" AS "FROM_OFR_ID",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."PROD_KEY" AS "PROD_KEY",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."PROD_ID" AS "PROD_ID",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."FROM_PROD_KEY" AS "FROM_PROD_KEY",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."FROM_PROD_ID" AS "FROM_PROD_ID",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."PKG_ID" AS "OFFERING",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."FROM_PKG_ID" AS "FROM_PKG_ID",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."FEAT_ID" AS "FEAT_ID",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."AGN_KEY2" AS "AGN_KEY2",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."CSR_ID" AS "CSR_ID",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."PTNR_ID" AS "PTNR_ID",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."LNKD_INET_FL" AS "LNKD_INET_FL",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."MRD_TYPE_CD" AS "OWNERSHIP",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."SBSCR_LIFCYC_KEY" AS "SBSCR_LIFCYC_KEY",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."CONV_REP_OWN_SEGMT_KEY" AS "CONV_REP_OWN_SEGMT_KEY",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."OWNR_TYPE2_KEY" AS "OWNR_TYPE2_KEY",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."DEACTIVATION_REASON_CODE" AS "DEACTIVATION_REASON_CODE",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."TRIAL_ID" AS "TRIAL_ID",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."SRVC_ID" AS "SRVC_ID",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."RENW_ID" AS "RENW_ID",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."FROM_RENW_ID" AS "FROM_RENW_ID",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."COLL_SCNRO_ID" AS "COLL_SCNRO_ID",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."SRVC_LVL_PMT_KEY" AS "SRVC_LVL_PMT_KEY",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."NONPAY_SRVC_KEY" AS "NONPAY_SRVC_KEY",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."BILLING_METHOD" AS "BILLING_METHOD",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."FROM_BILLING_METHOD" AS "FROM_BILLING_METHOD",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."SLFPAY_TURNOVER_RSN" AS "SLFPAY_TURNOVER_RSN",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."SLFPAY_TURNOVER_DT" AS "SLFPAY_TURNOVER_DT",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."FUTURE_DEACTVN_DT" AS "FUTURE_DEACTVN_DT",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."SCHD_SEASONAL_SUSP_REACTVN_DT" AS "SCHD_SEASONAL_SUSP_REACTVN_DT",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."CALL_REASON" AS "CALL_REASON",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."CALL_DISPOSITION" AS "CALL_DISPOSITION",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."INSE_USER_ID" AS "INSE_USER_ID",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."INSE_TS" AS "INSE_TS",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."UPDT_USER_ID" AS "UPDT_USER_ID",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."UPDT_TS" AS "UPDT_TS",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."SAVE_ACTIVITY" AS "SAVE_ACTIVITY",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."DEACT_ACTIVITY_BY_SAVE_AGENT" AS "DEACT_ACTIVITY_BY_SAVE_AGENT",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."CONV_ACTIVITY_BY_SAVE_AGENT" AS "CONV_ACTIVITY_BY_SAVE_AGENT",
          "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."SAVE_OPPORTUNITY_ACTIVITY" AS "SAVE_OPPORTUNITY_ACTIVITY",
          "snowflake"."SCHEMA_INFO"."MASTER_PLAN_TABLE_WDATES"."PLAN_ID" AS "PLAN_ID2",
          "snowflake"."SCHEMA_INFO"."MASTER_PLAN_TABLE_WDATES"."PLAN_NAME" AS "PLAN_NAME",
          "snowflake"."SCHEMA_INFO"."MASTER_PLAN_TABLE_WDATES"."MER" AS "MER",
          "snowflake"."SCHEMA_INFO"."MASTER_PLAN_TABLE_WDATES"."DISC" AS "DISC",
          "snowflake"."SCHEMA_INFO"."MASTER_PLAN_TABLE_WDATES"."PACKAGE" AS "PACKAGE",
          "snowflake"."SCHEMA_INFO"."MASTER_PLAN_TABLE_WDATES"."LEN" AS "LEN",
          "snowflake"."SCHEMA_INFO"."MASTER_PLAN_TABLE_WDATES"."ROLLUP1" AS "PLAN_DETAIL",
          "snowflake"."SCHEMA_INFO"."MASTER_PLAN_TABLE_WDATES"."ASP" AS "ASP",
          "snowflake"."SCHEMA_INFO"."MASTER_PLAN_TABLE_WDATES"."STARTDATE" AS "STARTDATE",
          "snowflake"."SCHEMA_INFO"."MASTER_PLAN_TABLE_WDATES"."ENDDATE" AS "ENDDATE",
          "snowflake"."SCHEMA_INFO"."DIM_AGENT"."AGENT_RECORD_KEY" AS "AGENT_RECORD_KEY",
          "snowflake"."SCHEMA_INFO"."DIM_AGENT"."AGENT_ID" AS "AGENT_ID",
          "snowflake"."SCHEMA_INFO"."DIM_AGENT"."CSR_ID" AS "CSR_ID2",
          "snowflake"."SCHEMA_INFO"."DIM_AGENT"."AGENT_SUPERVISOR_RECORD_KEY" AS "AGENT_SUPERVISOR_RECORD_KEY",
          "snowflake"."SCHEMA_INFO"."DIM_AGENT"."AGENT_SUPERVISOR_CSR_ID" AS "AGENT_SUPERVISOR_CSR_ID",
          "snowflake"."SCHEMA_INFO"."DIM_AGENT"."AGENT_STATUS" AS "AGENT_STATUS",
          "snowflake"."SCHEMA_INFO"."DIM_AGENT"."AGENT_ROLE_START_DATE" AS "AGENT_ROLE_START_DATE",
          "snowflake"."SCHEMA_INFO"."DIM_AGENT"."AGENT_ROLE_END_DATE" AS "AGENT_ROLE_END_DATE",
          "snowflake"."SCHEMA_INFO"."DIM_AGENT"."AGENT_ROLE_SMS" AS "AGENT_ROLE_SMS",
          "snowflake"."SCHEMA_INFO"."DIM_AGENT"."AGENT_ROLE_MARKETING" AS "AGENT_ROLE_MARKETING",
          "snowflake"."SCHEMA_INFO"."DIM_AGENT"."AGENT_LOCATION" AS "AGENT_LOCATION",
          "snowflake"."SCHEMA_INFO"."DIM_AGENT"."AGENT_VENDOR" AS "AGENT_VENDOR",
          "snowflake"."SCHEMA_INFO"."DIM_AGENT"."AGENT_SITE" AS "AGENT_SITE",
          "snowflake"."SCHEMA_INFO"."DIM_AGENT"."AGENT_LOB" AS "AGENT_LOB",
          "snowflake"."SCHEMA_INFO"."DIM_AGENT"."ACTIVATION_SOURCE" AS "ACTIVATION_SOURCE",
          "snowflake"."SCHEMA_INFO"."DIM_AGENT"."CURRENT_RECORD_FLAG" AS "CURRENT_RECORD_FLAG",
          "snowflake"."SCHEMA_INFO"."DIM_AGENT"."DELETED_RECORD_FLAG" AS "DELETED_RECORD_FLAG",
          "snowflake"."SCHEMA_INFO"."DIM_AGENT"."COLUMN17" AS "COLUMN17",
          "snowflake"."SCHEMA_INFO"."DIM_FEATURE"."FEATURE_ID" AS "FEATURE_ID",
          "snowflake"."SCHEMA_INFO"."DIM_FEATURE"."FEATURE_NAME" AS "FEATURE_NAME",
          "snowflake"."SCHEMA_INFO"."DIM_REASONCODE"."REASONCODETYPE" AS "REASONCODETYPE",
          "snowflake"."SCHEMA_INFO"."DIM_REASONCODE"."REASONCODE" AS "REASONCODE",
          "snowflake"."SCHEMA_INFO"."DIM_REASONCODE"."REASONNAME" AS "REASONNAME",
          "snowflake"."SCHEMA_INFO"."DIM_REASONCODE"."REACTIVATION_INTERVAL" AS "REACTIVATION_INTERVAL",
          "snowflake"."SCHEMA_INFO"."DIM_REASONCODE"."TEMP_DEACTIVATION_IND" AS "TEMP_DEACTIVATION_IND",
          "snowflake"."SCHEMA_INFO"."DIM_REASONCODE"."TEMP_DEACTIVATION_INTERVAL" AS "TEMP_DEACTIVATION_INTERVAL",
          "snowflake"."SCHEMA_INFO"."DIM_REASONCODE"."REASONNAMEROLLUP" AS "REASONNAMEROLLUP",
          "snowflake"."SCHEMA_INFO"."DIM_REASONCODE"."REASON_CODE_GROUP" AS "REASON_CODE_GROUP"
   FROM "oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"
   LEFT OUTER JOIN "snowflake"."SCHEMA_INFO"."MASTER_PLAN_TABLE_WDATES" ON ("oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."PLAN_ID" = "snowflake"."SCHEMA_INFO"."MASTER_PLAN_TABLE_WDATES"."PLAN_ID")
   LEFT OUTER JOIN "snowflake"."SCHEMA_INFO"."DIM_AGENT" ON ("oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."AGN_KEY" = "snowflake"."SCHEMA_INFO"."DIM_AGENT"."AGENT_RECORD_KEY")
   LEFT OUTER JOIN "snowflake"."SCHEMA_INFO"."DIM_FEATURE" ON ("oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."FEAT_ID" = "snowflake"."SCHEMA_INFO"."DIM_FEATURE"."FEATURE_ID")
   LEFT OUTER JOIN "snowflake"."SCHEMA_INFO"."DIM_REASONCODE" ON ("oracle"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."CALL_REASON" = "snowflake"."SCHEMA_INFO"."DIM_REASONCODE"."REASONCODE"))
GROUP BY OFFERING,OWNERSHIP,PLAN_DETAIL
LIMIT 10000