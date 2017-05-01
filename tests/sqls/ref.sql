--~ select concat(name ,' ', tags->'piste:ref') 
--~ from planet_osm_line where tags?'piste:ref' and name is not null;
--~ 
--~ si osm_id < 0
--~ select 
	--~ osm_id,
	--~ concat(coalesce("piste:name",name), ' ', coalesce(tags->'piste:ref',tags->'ref')) as name 
	--~ from planet_osm_line where 
	--~ ('piste:name' is not null 
	--~ or 'name' is not null 
	--~ or 'piste:ref' is not null
	--~ or 'ref' is not null)
	--~ and osm_id<0;
	--~ 
--~ (select osm_id from  planet_osm_line where osm_id <0 limit 10)
--~ UNION ALL (select osm_id from  planet_osm_line where osm_id >0 limit 10) ;
___________________________________________________
Relations: select ref or piste:ref
--~ (select 
	--~ trim(
	--~ concat(coalesce("piste:name",name), ' ', coalesce("piste:ref",ref)))
	--~ as PISTENAME
	--~ from planet_osm_line where 
	--~ ("piste:name" is not null 
	--~ or 'name' is not null
	--~ or "piste:ref" is not null 
	--~ or 'ref' is not null )
	--~ and "piste:ref"='4'
	--~ and osm_id<0
	--~ and coalesce("piste:name",name)<>coalesce("piste:ref",ref)
	--~ and trim(
	--~ concat(coalesce("piste:name",name), ' ', coalesce("piste:ref",ref)))<>''
--~ )
--~ UNION ALL
Ways, select only piste:ref
--~ (select 
	--~ trim(
	--~ concat(coalesce("piste:name",name), ' ', "piste:ref"))
	--~ as PISTENAME 
	--~ from planet_osm_line where 
	--~ ("piste:name" is not null 
	--~ or 'name' is not null 
	--~ or "piste:ref" is not null )
	--~ and "piste:ref"='4'
	--~ and osm_id>0
	--~ and coalesce("piste:name",name)<>"piste:ref"
	--~ and trim(
	--~ concat(coalesce("piste:name",name), ' ', "piste:ref"))<>''
--~ )
--~ UNION ALL
If name and ref are the same
--~ (select 
	--~ coalesce("piste:name",name)
	--~ as PISTENAME
	--~ from planet_osm_line where 
	--~ ("piste:name" is not null 
	--~ or 'name' is not null 
	--~ or "piste:ref" is not null 
	--~ or 'ref' is not null )
	--~ and "piste:ref"='4'
	--~ and osm_id<0
	--~ and coalesce("piste:name",name)=coalesce("piste:ref",ref)
	--~ and trim(
	--~ concat(coalesce("piste:name",name), ' ', coalesce("piste:ref",ref)))<>''
--~ )
--~ UNION ALL
Ways, select only piste:ref
--~ (select 
	--~ coalesce("piste:name",name)
	--~ as PISTENAME 
	--~ from planet_osm_line where 
	--~ ("piste:name" is not null 
	--~ or 'name' is not null 
	--~ or "piste:ref" is not null )
	--~ and "piste:ref"='4'
	--~ and osm_id>0
	--~ and coalesce("piste:name",name)="piste:ref"
	--~ and trim(
	--~ concat(coalesce("piste:name",name), ' ', "piste:ref"))<>''
--~ );
___________________________________________________
--~ 
--~ 
--~ 
--~ 
--~ 
--~ 
--~ 
--~ 
--~ 
--~ 
--~ 
--~ 
--~ 
--~ 
--~ 
--~ 
--~ 
___________________________________________________
Relations: select ref or piste:ref
--~ (select 
	--~ concat(coalesce("piste:name",name), ' ', coalesce("piste:ref",ref))
	--~ as PISTENAME
	--~ from planet_osm_line where 
	--~ ("piste:name" is not null 
	--~ or 'name' is not null)
	--~ and
	--~ ("piste:ref" is not null 
	--~ or 'ref' is not null )
	and "piste:ref"='TJS'
	--~ and "piste:ref"='4'
	--~ and osm_id<0
	--~ and coalesce("piste:name",name)<>coalesce("piste:ref",ref)
--~ )
--~ UNION ALL
Relations: If name and ref are the same
--~ (select 
	--~ coalesce("piste:name",name)
	--~ as PISTENAME
	--~ from planet_osm_line where 
	--~ ("piste:name" is not null 
	--~ or 'name' is not null)
	--~ and
	--~ ("piste:ref" is not null 
	--~ or 'ref' is not null )
	and "piste:ref"='TJS'
	--~ and "piste:ref"='4'
	--~ and osm_id<0
	--~ and coalesce("piste:name",name)=coalesce("piste:ref",ref)
--~ )
--~ UNION ALL
Ways, select only piste:ref
--~ (select 
	--~ concat(coalesce("piste:name",name), ' ', "piste:ref")
	--~ as PISTENAME 
	--~ from planet_osm_line where 
	--~ ("piste:name" is not null 
	--~ or 'name' is not null)
	--~ and 
	--~ ("piste:ref" is not null )
	--~ and "piste:ref"='4'
	--~ and osm_id>0
	--~ and coalesce("piste:name",name)<>"piste:ref"
--~ )
--~ UNION ALL
Ways: If name and ref are the same
--~ (select 
	--~ coalesce("piste:name",name)
	--~ as PISTENAME
	--~ from planet_osm_line where 
	--~ ("piste:name" is not null 
	--~ or 'name' is not null)
	--~ and 
	--~ ("piste:ref" is not null )
	--~ and "piste:ref"='4'
	--~ and osm_id>0
	--~ and coalesce("piste:name",name)="piste:ref"
--~ );
--~ 
--~ Bof voir SELECT CASE
--~ 
--~ SELECT 
	--~ CASE 
		--~ WHEN coalesce("piste:name",name)!='' and coalesce("piste:ref","ref")=''
			--~ THEN coalesce("piste:name",name)
		--~ WHEN coalesce("piste:name",name)='' and coalesce("piste:ref","ref")!=''
			--~ THEN coalesce("piste:ref","ref")
		--~ WHEN coalesce("piste:name",name)=coalesce("piste:ref","ref") 
			--~ THEN coalesce("piste:name",name)
		--~ WHEN (coalesce("piste:name",name) != coalesce("piste:ref","ref")) and coalesce("piste:name",name)!='' and coalesce("piste:ref","ref")!=''
			--~ THEN concat(coalesce("piste:ref","ref"), ' - ', coalesce("piste:name",name))
		ELSE concat('??',"piste:name",'-', name,'-', "piste:ref",'-', "ref")
	--~ END as PISTENAME, osm_id
SELECT coalesce( "piste:name", name, "piste:ref", "ref")
--~ FROM planet_osm_line
--~ WHERE
	--~ ("piste:name"<>'' 
	--~ or "name"<>'' 
	--~ or "piste:ref"<>''
	--~ or "ref"<>'');
	--~ and osm_id =113978731;
--~ -1937194 113978731 151074365
--~ select "piste:name", name, "piste:ref", "ref",  (coalesce("piste:ref","ref")IS DISTINCT FROM coalesce("piste:name",name))::boolean as test, 'a'!='b' FROM planet_osm_line where osm_id =113978731;

SELECT 
	CASE 
		WHEN n is not null and r is null
			THEN n
		WHEN n is null and r is not null
			THEN r
		WHEN r=n
			THEN n
		WHEN n is not null and r is not null
			THEN concat(r,' - ',n)
	END as PISTENAME, osm_id, h
FROM (
	SELECT 
	CASE 
		WHEN (tags -> 'highway')!=''
			THEN "piste:ref"
			ELSE coalesce("piste:ref","ref")
		END as r, coalesce("piste:name",name) as n, osm_id, tags -> 'highway' as h, way
	FROM planet_osm_line
	WHERE
		(
		"piste:name"!='' 
		or "name"!='' 
		or "piste:ref"!='' 
		or "ref"!='' )
	) as refs;
