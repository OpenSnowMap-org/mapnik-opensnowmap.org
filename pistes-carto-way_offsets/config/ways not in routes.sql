
SELECT 
count(*)
FROM 
pistes_routes
WHERE
tags->'piste:type' like '%nordic%';

142

SELECT 
count(*)
FROM 
osm_pistes_ways
WHERE
type like '%nordic%';

1106

SELECT 
count(*)
FROM 
osm_pistes_ways
WHERE
type like '%nordic%'
AND osm_id NOT IN (
    SELECT member
    FROM osm_pistes_route_members
    WHERE piste_type like '%nordic%'
);

341

-- osm2pgsql
select count(*) from planet_osm_line 
WHERE "piste:type" LIKE '%nordic%' 
AND osm_id >0;
670604

SELECT count(*) FROM planet_osm_line 
WHERE "piste:type" LIKE '%nordic%' 
AND osm_id >0
AND osm_id NOT IN (
    SELECT unnest(parts)
    FROM planet_osm_rels
    WHERE 'nordic'=any(tags)
    )
;
-- ~ Long, minutes
47103 

