
ALTER TABLE osm_pistes_ways
ADD COLUMN offseter integer;

select member from osm_pistes_route_members where osm_id = -1354363;
select member from osm_pistes_route_members where osm_id = -1354362;

imposm=# select member from osm_pistes_route_members where osm_id = -1354363;
  member   
-----------
  49793854
  93110781
 244771058
 632646872
(4 rows)

imposm=# select member from osm_pistes_route_members where osm_id = -1354362;
  member   
-----------
 101557350
  93110795
 182490881
  93110781
 244771058
  49793854
 632646872
  93110790
(8 rows)


UPDATE osm_pistes_ways
SET offseter=null
WHERE osm_id IN (select member from osm_pistes_route_members where osm_id = -1354363);
UPDATE 3
select osm_id, offseter from osm_pistes_ways WHERE osm_id IN (select member from osm_pistes_route_members where osm_id = -1354363);

UPDATE osm_pistes_ways
SET offseter=0;

ALTER TABLE osm_pistes_area
ADD COLUMN offseter integer;
UPDATE osm_pistes_area
SET offseter=0;

ALTER TABLE osm_pistes_ways
ADD COLUMN parent_route bigint;

INSERT INTO osm_pistes_ways(
 id,
 osm_id     ,
 name       ,
 type       ,
 piste_name ,
 grooming   ,
 difficulty ,
 oneway     ,
 lit1       ,
 lit2       ,
 abandoned  ,
 gladed     ,
 patrolled  ,
 geometry   ,
 offseter,
 parent_route)
SELECT 
 nextval('osm_pistes_ways_id_seq'),
 osm_id     ,
 name       ,
 type       ,
 piste_name ,
 grooming   ,
 difficulty ,
 oneway     ,
 lit1       ,
 lit2       ,
 abandoned  ,
 gladed     ,
 patrolled  ,
 geometry   ,
 1,
 parent_route
FROM osm_pistes_ways
WHERE osm_id IN (select member from osm_pistes_route_members where osm_id = -1354363);
