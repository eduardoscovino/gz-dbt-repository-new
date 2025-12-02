 with

 source as (

     select * from {{ source('raw', 'facebook') }}

 ),

 renamed as (

    SELECT 
        date_date
        , paid_source
        , campaign_key
        , camPGN_name as campaign_name
        , cast(ads_cost as decimal) as ads_cost
        , impression
        , click 
    FROM source

 )

 select * from renamed