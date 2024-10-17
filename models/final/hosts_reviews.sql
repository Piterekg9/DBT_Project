with hosts as (
    select * from {{ ref("dim_listings_w_hosts") }}
),
reviews as (
    select * from {{ ref("fct_reviews") }}
)
select 
    host_name as Host,
    room_type as Type_of_apartment,
    {{ check_sentiment(review_sentiment) }}
    max(price) as Max_price,
    count(1) as Number_of_reviews,
    max(price) * count(1) as amount
from reviews rev
inner join hosts host
on rev.listing_id = host.listing_id
group by host_name, room_type, review_sentiment
order by host_name, room_type, review_sentiment
