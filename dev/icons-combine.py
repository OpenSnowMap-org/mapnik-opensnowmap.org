#!/usr/bin/python

import pdb
import itertools
import Image

activities=[
	"downhill",
	"hike",
	"ice-skate",
	"jump",
	"nordic",
	"playground",
	"skitour",
	"sled",
	"snow_park"
	]
xml=open('sites.xml','w')
xml.write("""
<Style name="site_text" >
       <Rule>
            &maxscale_zoom7;
            &minscale_zoom10;
            <Filter>not ([entrance] = 'yes')</Filter>
            <TextSymbolizer face-name="DejaVu Sans Oblique"
            size="8" fill='#003074' halo-fill= "white" halo-radius="1.5"
            placement="point" allow-overlap="false" spacing="10000"
            avoid-edges="true"
            wrap-width="55">[site_name]</TextSymbolizer>
        </Rule>
       <Rule>
            &maxscale_zoom11;
            &minscale_zoom12;
            <Filter>not ([entrance] = 'yes')</Filter>
            <TextSymbolizer face-name="DejaVu Sans Oblique"
            size="10" fill='#003074' halo-fill= "white" halo-radius="1.5"
            placement="point" allow-overlap="false" spacing="10000"
            avoid-edges="true"
            wrap-width="80" dy="8">[site_name]</TextSymbolizer>
        </Rule>
""")


for i in range(1,len(activities)):
	comb=list(itertools.combinations(activities,i))
	for c in comb:
		print list(c)
	
	for c in comb:
		
		if len(c) <4 : cols=len(c)
		else: cols=4
		rows=len(c)/4+1
		
		im=Image.new('RGBA',(14*cols,14*rows))
		i=0
		j=0
		for l in c:
			ac=Image.open('pics/'+l+'-small.png')
			im.paste(ac,(i*14,j*14))
			if i==3: 
				j+=1
				i=0
			else:
				i+=1
		name='-'.join(c)+'-small.png'
		im.save('combinations/'+name)
		rule=';'.join(c)
		xml.write("""
       <Rule>
            &maxscale_zoom11;
            &minscale_zoom12;
            <Filter>[piste:type]='"""+rule+"""' and not ([entrance] = 'yes')</Filter>
            <PointSymbolizer file="combinations/"""+name+""""
             allow-overlap="true" ignore-placement="true"/>
        </Rule>
        """)
xml.write('</Style>')
