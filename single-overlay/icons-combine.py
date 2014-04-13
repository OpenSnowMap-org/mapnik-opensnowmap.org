#!/usr/bin/python

import pdb
import itertools
import Image

activities=[
	"downhill",
	"hike",
	"ice-skate",
	"nordic",
	"playground",
	"skitour",
	"ski_jump",
	"sled",
	"sleigh",
	"snow_park"
	]
xml=open('sites.xml','w')

xml.write("""
<Style name="site_text" >
""")
for i in range(1,len(activities)):
	comb=list(itertools.combinations(activities,i))
	for c in comb:
		print list(c)
	
	for c in comb:
		
		if len(c) <5 : cols=len(c)
		else: cols=5
		if len(c) > 5: rows=2
		else : rows = 1
		hmargin=3
		if rows==1: vmargin=11
		else: vmargin=4
		#~ im=Image.new('RGBA',(14*cols,14*rows))
		im=Image.open('pics/sites-icons-bg.png') #36x80px
		i=0
		j=0
		print c
		for l in c:
			ac=Image.open('pics/'+l+'-small.png')
			im.paste(ac,(i*15+hmargin,j*15+vmargin))
			if i==4: 
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
			<ShieldSymbolizer face-name="DejaVu Sans Oblique"
			 size="10"
			 fill="#003074" halo-fill= "white" halo-radius="1.5"
			spacing="100" 
			min-distance="50"
			dy="-24"
			file="combinations/"""+name+""""
			>[site_name]</ShieldSymbolizer>

        </Rule>
        """)

xml.write("""
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

""")
xml.write('</Style>')
       #~ <Rule>
            #~ &maxscale_zoom11;
            #~ &minscale_zoom12;
            #~ <Filter>not ([entrance] = 'yes')</Filter>
            #~ <TextSymbolizer face-name="DejaVu Sans Oblique"
            #~ size="10" fill='#003074' halo-fill= "white" halo-radius="1.5"
            #~ placement="point" allow-overlap="false" spacing="10000"
            #~ avoid-edges="true"
            #~ wrap-width="80" placement-type="simple"
			#~ placements="N,S"
			#~ >
  #~ [site_name]</TextSymbolizer>
        #~ </Rule>
