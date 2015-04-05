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
	combs=list(itertools.combinations(activities,i))
	combs.append(activities)
	for comb in combs:
		
		rest = [a for a in activities if a not in comb]
		hmargin=3
		vmargin=4
		
		rows = 2
		cols = 5
		ind=0
		rest_ind=0
		im=Image.open('pics/sites-icons-bg.png') #36x80px
		print comb, rest, len(comb)
		for r in range(0,rows):
			for c in range (0, cols):
				ind+=1
				if (ind <= len(comb)):
					ac=Image.open('piste-type-14px/'+comb[ind-1]+'-14px.png')
					im.paste(ac,(c*15+hmargin,r*15+vmargin))
				else :
					rest_ind+=1
					ac=Image.open('piste-type-14px/'+rest[rest_ind-1]+'-14px-grey.png')
					im.paste(ac,(c*15+hmargin,r*15+vmargin))
					
		name='-'.join(comb)+'-small.png'
		im.save('combinations/'+name)
		rule=';'.join(comb)
		xml.write("""
       <Rule>
            &maxscale_zoom11;
            &minscale_zoom12;
            <Filter>[piste:type]='"""+rule+"""' and not ([entrance] = 'yes')</Filter>
			<ShieldSymbolizer fontset-name="book-fonts"
			 size="10"
			 fill="#003074" halo-fill= "white" halo-radius="1.5"
			spacing="100" 
			min-distance="50"
			shield-dy="-25" shield-dx="-25"
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
            <TextSymbolizer fontset-name="book-fonts"
            size="8" fill='#003074' halo-fill= "white" halo-radius="1.5"
            placement="point" allow-overlap="false" spacing="10000"
            avoid-edges="true"
            wrap-width="55"
            >[site_name]</TextSymbolizer>
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
