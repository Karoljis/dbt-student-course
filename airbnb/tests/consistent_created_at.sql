SELECT *
FROM {{ ref('fct_reviews') }} A
INNER JOIN {{ ref('dim_listings_cleansed') }} B USING(listing_id)
WHERE A.REVIEW_DATE < B.CREATED_AT