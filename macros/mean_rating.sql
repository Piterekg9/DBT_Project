{% macro calculate_mean_rating(positive_reviews, negative_reviews, neutral_reviews) %}
{% set dict = {"positive":5, "negative":1, "neutral":3} %}
{% set rates_dict = { "positive":positive_reviews, "negative":negative_reviews, "neutral":neutral_reviews } %}
{% set sum_rates = 0 %}
    -- {% for key, value in dict.items() %}
    --     {% set sum_rates = (dict[key] * rates_dict[key]) %}
    -- {% endfor %}
    {{ rates_dict }} as rates_sum,
{% endmacro %}