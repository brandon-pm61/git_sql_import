WITH select_step1 as (
  SELECT
    "DW"."FACT_INVOICE_DETAIL"."ORGANIZATION_KEY" AS "ORGANIZATION_KEY",
    "DW"."FACT_INVOICE_DETAIL"."PRODUCT_KEY" AS "PRODUCT_KEY",
    "DW"."FACT_INVOICE_DETAIL"."SOLD_TO_CUSTOMER_LOCATION_KEY" AS "SOLD_TO_CUSTOMER_LOCATION_KEY",
    "DW"."FACT_INVOICE_DETAIL"."CSR_USER_KEY" AS "CSR_USER_KEY",
    "DW"."FACT_INVOICE_DETAIL"."CURRENCY_CD" AS "CURRENCY_CD",
    "DW"."FACT_INVOICE_DETAIL"."RECORD_CD" AS "RECORD_CD",
    "DW"."FACT_INVOICE_DETAIL"."PRICE_TIER_KEY" AS "PRICE_TIER_KEY",
    "DW"."FACT_INVOICE_DETAIL"."INVOICE_NUMBER" AS "INVOICE_NUMBER",
    "DW"."FACT_INVOICE_DETAIL"."INVOICE_LINE_NO" AS "INVOICE_LINE_NO",
    "DW"."FACT_INVOICE_DETAIL"."ORDER_DATE" AS "ORDER_DATE",
    "DW"."FACT_INVOICE_DETAIL"."SALES_TYPE" AS "SALES_TYPE",
    "DW"."FACT_INVOICE_DETAIL"."BUSINESS_SOURCE" AS "BUSINESS_SOURCE",
    "DW"."FACT_INVOICE_DETAIL"."SHIPPING_METHOD" AS "SHIPPING_METHOD",
    "DW"."FACT_INVOICE_DETAIL"."CARRIER_NAME" AS "CARRIER_NAME",
    "DW"."FACT_INVOICE_DETAIL"."CUSTOMER_PICKUP_DESIGNATION" AS "CUSTOMER_PICKUP_DESIGNATION",
    "DW"."FACT_INVOICE_DETAIL"."BILLING_CLASS" AS "BILLING_CLASS",
    "DW"."FACT_INVOICE_DETAIL"."REPORTING_CHANNEL" AS "REPORTING_CHANNEL",
    "DW"."FACT_INVOICE_DETAIL"."UNITS" AS "UNITS",
    "DW"."FACT_INVOICE_DETAIL"."REVENUE" AS "REVENUE",
    "DW"."FACT_INVOICE_DETAIL"."UNIT_PRICE" AS "UNIT_PRICE",
    "DW"."FACT_INVOICE_DETAIL"."FREIGHT_CHARGES" AS "FREIGHT_CHARGES"
  FROM
    "DW"."FACT_INVOICE_DETAIL"
),
join_step2 as (
  SELECT
    select_step1."ORGANIZATION_KEY" AS "ORGANIZATION_KEY",
    select_step1."PRODUCT_KEY" AS "PRODUCT_KEY",
    select_step1."SOLD_TO_CUSTOMER_LOCATION_KEY" AS "SOLD_TO_CUSTOMER_LOCATION_KEY",
    select_step1."CSR_USER_KEY" AS "CSR_USER_KEY",
    select_step1."CURRENCY_CD" AS "CURRENCY_CD",
    select_step1."RECORD_CD" AS "RECORD_CD",
    select_step1."PRICE_TIER_KEY" AS "PRICE_TIER_KEY",
    select_step1."INVOICE_NUMBER" AS "INVOICE_NUMBER",
    select_step1."INVOICE_LINE_NO" AS "INVOICE_LINE_NO",
    select_step1."ORDER_DATE" AS "ORDER_DATE",
    select_step1."SALES_TYPE" AS "SALES_TYPE",
    select_step1."BUSINESS_SOURCE" AS "BUSINESS_SOURCE",
    select_step1."SHIPPING_METHOD" AS "SHIPPING_METHOD",
    select_step1."CARRIER_NAME" AS "CARRIER_NAME",
    select_step1."CUSTOMER_PICKUP_DESIGNATION" AS "CUSTOMER_PICKUP_DESIGNATION",
    select_step1."BILLING_CLASS" AS "BILLING_CLASS",
    select_step1."REPORTING_CHANNEL" AS "REPORTING_CHANNEL",
    select_step1."UNITS" AS "UNITS",
    select_step1."REVENUE" AS "REVENUE",
    select_step1."UNIT_PRICE" AS "UNIT_PRICE",
    select_step1."FREIGHT_CHARGES" AS "FREIGHT_CHARGES",
    "DW"."DIM_PRODUCT"."EBS_ITEM_NUMBER" AS "EBS_ITEM_NUMBER",
    "DW"."DIM_PRODUCT"."SKU_DESCRIPTION" AS "SKU_DESCRIPTION",
    "DW"."DIM_PRODUCT"."PRODUCT_GROUP_CD" AS "PRODUCT_GROUP_CD",
    "DW"."DIM_PRODUCT"."PRODUCT_GROUP_CD_NAME" AS "PRODUCT_GROUP_CD_NAME",
    "DW"."DIM_PRODUCT"."PRODUCT_GROUP_MARKET_CATEGORY" AS "PRODUCT_GROUP_MARKET_CATEGORY",
    "DW"."DIM_PRODUCT"."VENDOR_CD" AS "VENDOR_CD",
    "DW"."DIM_PRODUCT"."VENDOR_CD_NAME" AS "VENDOR_CD_NAME",
    "DW"."DIM_PRODUCT"."PRODUCT_SEGMENT_NAME" AS "PRODUCT_SEGMENT_NAME",
    "DW"."DIM_PRODUCT"."BRAND_NAME" AS "BRAND_NAME",
    "DW"."DIM_PRODUCT"."MARKET_CATEGORY_NAME" AS "MARKET_CATEGORY_NAME",
    "DW"."DIM_PRODUCT"."SUPPLIER_NAME" AS "SUPPLIER_NAME",
    "DW"."DIM_PRODUCT"."WIDTH" AS "WIDTH",
    "DW"."DIM_PRODUCT"."HEIGHT" AS "HEIGHT",
    "DW"."DIM_PRODUCT"."UNIT_VOLUME" AS "UNIT_VOLUME",
    "DW"."DIM_PRODUCT"."WEIGHT" AS "WEIGHT"
  FROM
    select_step1
    LEFT OUTER JOIN "DW"."DIM_PRODUCT" ON (
      select_step1."PRODUCT_KEY" = "DW"."DIM_PRODUCT"."PRODUCT_KEY"
    )
),
join_step3 as (
  SELECT
    join_step2."ORGANIZATION_KEY" AS "ORGANIZATION_KEY",
    join_step2."PRODUCT_KEY" AS "PRODUCT_KEY",
    join_step2."SOLD_TO_CUSTOMER_LOCATION_KEY" AS "SOLD_TO_CUSTOMER_LOCATION_KEY",
    join_step2."CSR_USER_KEY" AS "CSR_USER_KEY",
    join_step2."CURRENCY_CD" AS "CURRENCY_CD",
    join_step2."RECORD_CD" AS "RECORD_CD",
    join_step2."PRICE_TIER_KEY" AS "PRICE_TIER_KEY",
    join_step2."INVOICE_NUMBER" AS "INVOICE_NUMBER",
    join_step2."INVOICE_LINE_NO" AS "INVOICE_LINE_NO",
    join_step2."ORDER_DATE" AS "ORDER_DATE",
    join_step2."SALES_TYPE" AS "SALES_TYPE",
    join_step2."BUSINESS_SOURCE" AS "BUSINESS_SOURCE",
    join_step2."SHIPPING_METHOD" AS "SHIPPING_METHOD",
    join_step2."CARRIER_NAME" AS "CARRIER_NAME",
    join_step2."CUSTOMER_PICKUP_DESIGNATION" AS "CUSTOMER_PICKUP_DESIGNATION",
    join_step2."BILLING_CLASS" AS "BILLING_CLASS",
    join_step2."REPORTING_CHANNEL" AS "REPORTING_CHANNEL",
    join_step2."UNITS" AS "UNITS",
    join_step2."REVENUE" AS "REVENUE",
    join_step2."UNIT_PRICE" AS "UNIT_PRICE",
    join_step2."FREIGHT_CHARGES" AS "FREIGHT_CHARGES",
    join_step2."EBS_ITEM_NUMBER" AS "EBS_ITEM_NUMBER",
    join_step2."SKU_DESCRIPTION" AS "SKU_DESCRIPTION",
    join_step2."PRODUCT_GROUP_CD" AS "PRODUCT_GROUP_CD",
    join_step2."PRODUCT_GROUP_CD_NAME" AS "PRODUCT_GROUP_CD_NAME",
    join_step2."PRODUCT_GROUP_MARKET_CATEGORY" AS "PRODUCT_GROUP_MARKET_CATEGORY",
    join_step2."VENDOR_CD" AS "VENDOR_CD",
    join_step2."VENDOR_CD_NAME" AS "VENDOR_CD_NAME",
    join_step2."PRODUCT_SEGMENT_NAME" AS "PRODUCT_SEGMENT_NAME",
    join_step2."BRAND_NAME" AS "BRAND_NAME",
    join_step2."MARKET_CATEGORY_NAME" AS "MARKET_CATEGORY_NAME",
    join_step2."SUPPLIER_NAME" AS "SUPPLIER_NAME",
    join_step2."WIDTH" AS "WIDTH",
    join_step2."HEIGHT" AS "HEIGHT",
    join_step2."UNIT_VOLUME" AS "UNIT_VOLUME",
    join_step2."WEIGHT" AS "WEIGHT",
    "DW"."DIM_CUSTOMER"."CUSTOMER_CD" AS "CUSTOMER_CD",
    "DW"."DIM_CUSTOMER"."CUSTOMER_NAME" AS "CUSTOMER_NAME",
    "DW"."DIM_CUSTOMER"."CITY_NAME" AS "CITY_NAME",
    "DW"."DIM_CUSTOMER"."STATE_CD" AS "STATE_CD",
    "DW"."DIM_CUSTOMER"."COUNTY_NAME" AS "COUNTY_NAME",
    "DW"."DIM_CUSTOMER"."ZIP_CD" AS "ZIP_CD",
    "DW"."DIM_CUSTOMER"."CREDIT_TERMS" AS "CREDIT_TERMS",
    "DW"."DIM_CUSTOMER"."CREDIT_LIMIT" AS "CREDIT_LIMIT",
    "DW"."DIM_CUSTOMER"."CUSTOMER_GROUP_NAME" AS "CUSTOMER_GROUP_NAME",
    "DW"."DIM_CUSTOMER"."CUSTOMER_CHANNEL_NAME" AS "CUSTOMER_CHANNEL_NAME"
  FROM
    join_step2
    LEFT OUTER JOIN "DW"."DIM_CUSTOMER" ON (
      join_step2."SOLD_TO_CUSTOMER_LOCATION_KEY" = "DW"."DIM_CUSTOMER"."CUSTOMER_KEY"
    )
),
filter_step4 as (
  SELECT
    *
  FROM
    join_step3
  WHERE
    (
      join_step3."ORDER_DATE" BETWEEN timestamp '2014-01-01 00:00:00'
      AND timestamp '2015-12-31 00:00:00'
    )
),
group_by_step5 as (
  SELECT
    CAST(filter_step4."CUSTOMER_NAME" as varchar) AS "CUSTOMER_NAME",
    CAST(filter_step4."PRODUCT_SEGMENT_NAME" as varchar) AS "PRODUCT_SEGMENT_NAME",
    CAST(filter_step4."PRODUCT_GROUP_CD_NAME" as varchar) AS "PRODUCT_GROUP_CD_NAME",
    CAST(filter_step4."CARRIER_NAME" as INT) AS "CARRIER_NAME",
    CAST(Sum("REVENUE") as INT) AS "REVENUE"
  FROM
    filter_step4
  GROUP BY
    filter_step4."CUSTOMER_NAME",
    filter_step4."PRODUCT_SEGMENT_NAME",
    filter_step4."PRODUCT_GROUP_CD_NAME",
    filter_step4."CARRIER_NAME"
)
SELECT
  *
FROM
  group_by_step5
LIMIT
  100
