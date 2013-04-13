#!/usr/bin/env python


#import pdb
import mapnik
import psycopg2
import os, sys, re
import datetime
"""
Offsets={
-1439743:-1,
-1439729:1,
-1439727:-1,
-1439728:1,
-1354364:-1,
-1354362:0,
-1354363:1
}

Colors={
-1482062	:	"orange",
-1482062	:	"orange",
-1460895	:	"",
-1439743	:	"black",
-1439742	:	"red",
-1439741	:	"red",
-1439740	:	"",
-1439729	:	"blue",
-1439728	:	"green",
-1439726	:	"green",
-1439725	:	"red",
-1354364:"green",
-1354362:"yellow",
-1354363:"red"
}
colorList=["orange","black","red","blue","green", "yellow"]
"""

#
def deluma(color,factor):
    # reduce color luma by a given factor. 
    r,g,b,a=(color.r, color.g, color.b, color.a)
    r=int(r*(1-0.3*factor))
    g=int(g*(1-0.59*factor))
    b=int(b*(1-0.11*factor))
	
    return mapnik.Color(r,g,b,a)
#
def lighten(color,factor):
    r,g,b,a=(color.r, color.g, color.b, color.a)
    r = int((1-factor)*r + factor*255)
    g = int((1-factor)*g + factor*255)
    b = int((1-factor)*b + factor*255)
    return mapnik.Color(r,g,b,a)
	
def isColor(str):
	try :
		mapnik.Color(str)
		return True
	except:
		return False
#
def is_int(s):
	try:
		int(s)
		return True
	except ValueError:
		return False
#

if len(sys.argv) < 2 :
	print 'Provide directory as argument'
	exit(1)
path = sys.argv[1]

filenames = os.listdir(path)

Offsets = {}

for fn in filenames:
	
	fullpath=os.path.join(path,fn)
	f=open(fullpath,'r')
	for line in iter(f):
		#escape comments and html
		if len(re.findall('#',line)) == 0 and len(re.findall('<',line)) == 0 :
			ar=line.split(';')
			if len(ar) == 2:
				# check osm id:
				if is_int(ar[0]) and is_int(ar[1]) :
					if int(ar[1]) != 0:
						Offsets[int(ar[0])] = int(ar[1])
	f.close()

conn = psycopg2.connect("dbname=pistes-mapnik user=mapnik")
cur = conn.cursor()
    
cur.execute("select osm_id, coalesce(color, colour) from planet_osm_line where color is not null or colour is not null")
colors=cur.fetchall()

Colors={}
colorList=[]
for c in colors:
	Colors[int(c[0])]=c[1]
	colorList.append(c[1])
colorList=list(set(colorList))

f=open('colors.txt','w')
for c in colorList:
	if isColor(c):
		color=mapnik.Color(c)
		color=lighten(deluma(color,0.25),0.2)
		f.write(c+' '+str(color)+'\n')
f.close()

f=open('relations-style.xml','w')
f.write("<!-- "+datetime.datetime.now().isoformat()+" -->\n")


f.write("""\
<Style name="relation-bg" filter-mode="first">
""")
for id in Offsets:
    f.write("""\
        <Rule>
		    <Filter>[osm_id]="""+str(id)+""" </Filter>
            &maxscale_zoom9;
            &minscale_zoom11;
            <LineSymbolizer stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"
			 stroke="#FFFFFF" offset=\""""+str(Offsets[id]*1*1.1)+"""\" stroke-opacity="0.9" />
        </Rule>
        <Rule>
		    <Filter>[osm_id]="""+str(id)+""" </Filter>
            &maxscale_zoom11;
            &minscale_zoom12;
            <LineSymbolizer stroke-width="3" stroke-linecap="round" stroke-linejoin="round"
			 stroke="#FFFFFF" offset=\""""+str(Offsets[id]*2*1.1)+"""\" stroke-opacity="0.9" />
        </Rule>
        <Rule>
		    <Filter>[osm_id]="""+str(id)+""" </Filter>
            &maxscale_zoom12;
            &minscale_zoom14;
            <LineSymbolizer stroke-width="5" stroke-linecap="round" stroke-linejoin="round"
			 stroke="#FFFFFF" offset=\""""+str(Offsets[id]*3*1.1)+"""\" stroke-opacity="0.9" />
        </Rule>
        <Rule>
		    <Filter>[osm_id]="""+str(id)+""" </Filter>
            &maxscale_zoom14;
            &minscale_zoom18;
            <LineSymbolizer stroke-width="7" stroke-linecap="round" stroke-linejoin="round" 
			 stroke="#FFFFFF" offset=\""""+str(Offsets[id]*4*1.1)+"""\" stroke-opacity="0.9" />
        </Rule>
        """)
		
f.write("""\
        <Rule>
		    <ElseFilter/>
            &maxscale_zoom9;
            &minscale_zoom11;
            <LineSymbolizer stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"
			 stroke="#FFFFFF" stroke-opacity="0.9" />
        </Rule>
        <Rule>
		    <ElseFilter/>
            &maxscale_zoom11;
            &minscale_zoom12;
            <LineSymbolizer stroke-width="3" stroke-linecap="round" stroke-linejoin="round"
			 stroke="#FFFFFF" stroke-opacity="0.9" />
        </Rule>
        <Rule>
		    <ElseFilter/>
            &maxscale_zoom12;
            &minscale_zoom14;
            <LineSymbolizer stroke-width="5" stroke-linecap="round" stroke-linejoin="round"
			 stroke="#FFFFFF" stroke-opacity="0.9" />
        </Rule>
        <Rule>
		    <ElseFilter/>
            &maxscale_zoom14;
            &minscale_zoom18;
            <LineSymbolizer stroke-width="7" stroke-linecap="round" stroke-linejoin="round" 
			 stroke="#FFFFFF" stroke-opacity="0.9" />
        </Rule>
        """)
		
f.write("""
</Style>
""")
#######################################################################

#######################################################################
f.write("""\
<Style name="relation" filter-mode="first">
""")
for id in Offsets:
	if (id in Colors) and isColor(Colors[id]):
		# Relation with color attributes and offset
		color=mapnik.Color(Colors[id])
		color=lighten(deluma(color,0.25),0.2)
		f.write("""\
        <Rule>
		    <Filter>[osm_id]="""+str(id)+""" </Filter>
            &maxscale_zoom9;
            &minscale_zoom11;
            <LineSymbolizer stroke-width="1" stroke-linecap="round" stroke-linejoin="round"
			 stroke=\""""+str(color)+"""\" offset=\""""+str(Offsets[id]*1*1.1)+"""\"/>
        </Rule>
        <Rule>
		    <Filter>[osm_id]="""+str(id)+""" </Filter>
            &maxscale_zoom11;
            &minscale_zoom12;
            <LineSymbolizer stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
			 stroke=\""""+str(color)+"""\" offset=\""""+str(Offsets[id]*2*1.1)+"""\"/>
        </Rule>
        <Rule>
		    <Filter>[osm_id]="""+str(id)+""" </Filter>
            &maxscale_zoom12;
            &minscale_zoom14;
            <LineSymbolizer stroke-width="3" stroke-linecap="round" stroke-linejoin="round"
			 stroke=\""""+str(color)+"""\" offset=\""""+str(Offsets[id]*3*1.1)+"""\"/>
        </Rule>
        <Rule>
		    <Filter>[osm_id]="""+str(id)+""" </Filter>
            &maxscale_zoom14;
            &minscale_zoom18;
            <LineSymbolizer stroke-width="4" stroke-linecap="round" stroke-linejoin="round" 
			 stroke=\""""+str(color)+"""\" offset=\""""+str(Offsets[id]*4*1.1)+"""\"/>
        </Rule>
        """)
	else:
		# Offset relation without color attribute
		f.write("""\
        <Rule>
		    <Filter>[osm_id]="""+str(id)+""" </Filter>
            &maxscale_zoom9;
            &minscale_zoom11;
            <LineSymbolizer stroke-width="1" stroke-linecap="round" stroke-linejoin="round"
			 stroke="#44b2a3" offset=\""""+str(Offsets[id]*1*1.1)+"""\"/>
        </Rule>
        <Rule>
		    <Filter>[osm_id]="""+str(id)+""" </Filter>
            &maxscale_zoom11;
            &minscale_zoom12;
            <LineSymbolizer stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
			 stroke="#44b2a3" offset=\""""+str(Offsets[id]*2*1.1)+"""\"/>
        </Rule>
        <Rule>
		    <Filter>[osm_id]="""+str(id)+""" </Filter>
            &maxscale_zoom12;
            &minscale_zoom14;
            <LineSymbolizer stroke-width="3" stroke-linecap="round" stroke-linejoin="round"
			 stroke="#44b2a3" offset=\""""+str(Offsets[id]*3*1.1)+"""\"/>
        </Rule>
        <Rule>
		    <Filter>[osm_id]="""+str(id)+""" </Filter>
            &maxscale_zoom14;
            &minscale_zoom18;
            <LineSymbolizer stroke-width="4" stroke-linecap="round" stroke-linejoin="round" 
			 stroke="#44b2a3" offset=\""""+str(Offsets[id]*4*1.1)+"""\"/>
        </Rule>
        """)
for c in colorList:
	# Relation with color attributes, no offset (because of filter-mode="first")
	if isColor(c):
		color=mapnik.Color(c)
		color=lighten(deluma(color,0.25),0.2)
		f.write("""\
        <Rule>
		    <Filter>[color]='"""+c+"""' or [colour]='"""+c+"""'</Filter>
            &maxscale_zoom9;
            &minscale_zoom11;
            <LineSymbolizer stroke-width="1" stroke-linecap="round" stroke-linejoin="round"
			 stroke=\""""+str(color)+"""\" />
        </Rule>
        <Rule>
		    <Filter>[color]='"""+c+"""' or [colour]='"""+c+"""'</Filter>
            &maxscale_zoom11;
            &minscale_zoom12;
            <LineSymbolizer stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
			 stroke=\""""+str(color)+"""\" />
        </Rule>
        <Rule>
		    <Filter>[color]='"""+c+"""' or [colour]='"""+c+"""'</Filter>
            &maxscale_zoom12;
            &minscale_zoom14;
            <LineSymbolizer stroke-width="3" stroke-linecap="round" stroke-linejoin="round"
			 stroke=\""""+str(color)+"""\" />
        </Rule>
        <Rule>
		    <Filter>[color]='"""+c+"""' or [colour]='"""+c+"""'</Filter>
            &maxscale_zoom14;
            &minscale_zoom18;
            <LineSymbolizer stroke-width="4" stroke-linecap="round" stroke-linejoin="round" 
			 stroke=\""""+str(color)+"""\" />
        </Rule>
        """)
# Relation with no color, no offset
f.write("""\
        <Rule>
		    <ElseFilter/>
            &maxscale_zoom9;
            &minscale_zoom11;
            <LineSymbolizer stroke-width="1" stroke-linecap="round" stroke-linejoin="round"
			 stroke="#44b2a3" />
        </Rule>
        <Rule>
		    <ElseFilter/>
            &maxscale_zoom11;
            &minscale_zoom12;
            <LineSymbolizer stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
			 stroke="#44b2a3" />
        </Rule>
        <Rule>
		    <ElseFilter/>
            &maxscale_zoom12;
            &minscale_zoom14;
            <LineSymbolizer stroke-width="3" stroke-linecap="round" stroke-linejoin="round"
			 stroke="#44b2a3" />
        </Rule>
        <Rule>
		    <ElseFilter/>
            &maxscale_zoom14;
            &minscale_zoom18;
            <LineSymbolizer stroke-width="4" stroke-linecap="round" stroke-linejoin="round" 
			 stroke="#44b2a3" />
        </Rule>
        """)
		
f.write("""
</Style>
""")

#######################################################################

#######################################################################
f.write("""\
<Style name="text" >
""")
for c in colorList:
	# Relation with color attributes, no offset
	if isColor(c):
		color=mapnik.Color(c)
		color=lighten(deluma(color,0.25),0.15)
		f.write("""\
       <Rule>
            &maxscale_zoom15;
            &minscale_zoom18;
            <Filter>[color]='"""+c+"""' or [colour]='"""+c+"""'</Filter>
            <TextSymbolizer face-name="DejaVu Sans Book" 
            size="10" fill='"""+str(color)+"""' halo-fill= "white" halo-radius="1" 
            placement="line" allow-overlap="false" spacing="10000" 
            avoid-edges="true"
            wrap-width="10" dy="10">[route_name]</TextSymbolizer>
        </Rule>
		""")
f.write("""\
		<Rule>
			&maxscale_zoom15;
			&minscale_zoom18;
			<ElseFilter/>
			<TextSymbolizer face-name="DejaVu Sans Book" 
			size="10" fill="#44b2a3" halo-fill= "white" halo-radius="1" 
			placement="line" allow-overlap="false" spacing="10000" 
			avoid-edges="true"
			wrap-width="10" dy="10">[route_name]</TextSymbolizer>
		</Rule>
		""")

f.write("""
</Style>
""")
f.close()
