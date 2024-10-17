{% macro check_sentiment(review_sentiment, list) %}
{% set list = ["positive", "negative", "neutral"] %}
    {% for item in list %}
        case when '{{item}}' = review_sentiment then count(1) else 0 end as {{item}}_reviews,
    {%  endfor %}
{% endmacro %}