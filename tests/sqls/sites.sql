select site_name from planet_osm_point where site_name like '%Vallées%';
     site_name     
-------------------
 Les Trois Vallées
 Les 3 Vallées
 Les Trois Vallées
(3 rows)

select st_astext(unnest(st_clusterwithin(way,10000))) from planet_osm_point where site_name like '%Vallées%';
 GEOMETRYCOLLECTION(POINT(733147.345489619 5677114.56570186),POINT(732162.53920181 5675760.94508508),POINT(733400.142264148 5675253.00183761))
 
 select "piste:type",site_name, st_astext(unnest(st_clusterwithin(way,10000))) from planet_osm_point where site_name like '%Vallées%' group by "piste:type",site_name;
                      piste:type                      |     site_name     |                          st_astext                           
------------------------------------------------------+-------------------+--------------------------------------------------------------
 downhill;hike;nordic;ski_jump;skitour;sled;snow_park | Les 3 Vallées     | GEOMETRYCOLLECTION(POINT(732162.53920181 5675760.94508508))
 downhill;hike;nordic;sled;snow_park                  | Les Trois Vallées | GEOMETRYCOLLECTION(POINT(733147.345489619 5677114.56570186))
 downhill;hike;nordic;ski_jump;skitour;sled;snow_park | Les Trois Vallées | GEOMETRYCOLLECTION(POINT(733400.142264148 5675253.00183761))
(3 rows)

SELECT "piste:type",site_name, st_astext(unnest(st_clusterwithin(way,10000))) 
FROM planet_osm_point WHERE site_name LIKE '%Vallées%' 
GROUP BY "piste:type", site_name 
ORDER BY char_length("piste:type") DESC, char_length(site_name) DESC
LIMIT 1;

                      piste:type                      |     site_name     |                          st_astext                           
------------------------------------------------------+-------------------+--------------------------------------------------------------
 downhill;hike;nordic;ski_jump;skitour;sled;snow_park | Les Trois Vallées | GEOMETRYCOLLECTION(POINT(733400.142264148 5675253.00183761))
 downhill;hike;nordic;ski_jump;skitour;sled;snow_park | Les 3 Vallées     | GEOMETRYCOLLECTION(POINT(732162.53920181 5675760.94508508))
 downhill;hike;nordic;sled;snow_park                  | Les Trois Vallées | GEOMETRYCOLLECTION(POINT(733147.345489619 5677114.56570186))
(3 rows

SELECT st_astext(unnest(st_clusterwithin(way,1500))) 
FROM planet_osm_point WHERE site_name LIKE '%Vallées%';
                                              st_astext                                        
------------------------------------------------------------------------------------------------------
 GEOMETRYCOLLECTION(POINT(733147.345489619 5677114.56570186))
 GEOMETRYCOLLECTION(POINT(732162.53920181 5675760.94508508),POINT(733400.142264148 5675253.00183761))
(2 rows)

SELECT array_agg(site_name),st_astext(unnest(st_clusterwithin(way,1500))) 
FROM planet_osm_point WHERE site_name LIKE '%Vallées%';

select site_name, "piste:type", (ST_Dump(ST_Union(ST_Buffer(way, 10000, 'quad_segs=2')))).geom as way from planet_osm_point where site_name LIKE '%Vallées%'
        group by site_name, "piste:type";
select site_name, "piste:type", ST_AsText(ST_SnapToGrid(way,3000))
from planet_osm_point where site_name LIKE '%Vallées%';
