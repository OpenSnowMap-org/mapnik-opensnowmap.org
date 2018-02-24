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
-1482062    :   "orange",
-1482062    :   "orange",
-1460895    :   "",
-1439743    :   "black",
-1439742    :   "red",
-1439741    :   "red",
-1439740    :   "",
-1439729    :   "blue",
-1439728    :   "green",
-1439726    :   "green",
-1439725    :   "red",
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

#~ conn = psycopg2.connect("dbname=pistes-mapnik user=mapnik")
conn = psycopg2.connect("dbname=imposm ")

cur = conn.cursor()
    
#~ cur.execute("select osm_id, coalesce(color, colour) from planet_osm_line where color is not null or colour is not null")
cur.execute("select osm_id, coalesce(tags->'color', tags->'colour') from pistes_routes where tags->'color' is not null or tags->'colour' is not null")
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
        color=lighten(deluma(color,0.25),0.3)
        f.write(c+' '+str(color)+'\n')
f.close()

f=open('routes.mss','w')
##############
# BACKGROUND #
##############
f.write("""#relation-bg{
    line-cap: round; 
    line-join: round;
    line-color: #FFFFFF;  
    line-opacity: 0.9;
    line-gamma:1;
    
    [zoom=9]{line-width: 2;}
    [zoom=10]{line-width: 3}
    [zoom>=11][zoom<=12]{line-width: 3.5;}
    [zoom>=13][zoom<=14]{line-width: 5;}
    [zoom>=15]{line-width: 6;}
    """)
for id in Offsets:
    f.write("""
    [osm_id="""+str(id)+"""]{
        [zoom>=13][zoom<=14]{line-offset: """+str(Offsets[id]*1.5*1.2)+""";}
        [zoom>=15]{line-offset: """+str(Offsets[id]*2.5*1.2)+""";}
        }
        """)
f.write("}\n")
##############
#   PISTES   #
##############
f.write("""#relation{""")
f.write("\n")
f.write("""
        line-cap: round; 
        line-join: round;
        line-color: #44b2a3;
        /*[color!='']{line-color:[color];} not nice, lighten does not work*/
        line-gamma:1;
        
        [zoom=9]{line-width: 0.5;}
        [zoom=10]{line-width: 1}
        [zoom>=11][zoom<=12]{line-width: 1;}
        [zoom>=13][zoom<=14]{line-width: 1.5}
        [zoom>=15]{line-width: 2;}
        """)
f.write("\n")

ids = Colors.keys()
ids.extend(Offsets.keys())
ids=list(set(ids))

for osm_id in ids:
    f.write("""
        [osm_id="""+str(osm_id)+"""]{""")
    
    if osm_id in Colors.keys():
        c = Colors[osm_id]
        if isColor(c):
            color=mapnik.Color(c)
            color=lighten(deluma(color,0.25),0.3)
            f.write("""
            line-color: """+str(color)+""";
            """)
    if osm_id in Offsets.keys():
        f.write("""
            [zoom>=13][zoom<=14]{line-offset: """+str(Offsets[osm_id]*1.5*1.2)+""";}
            [zoom>=15]{line-offset: """+str(Offsets[osm_id]*2.5*1.2)+""";}
            """)
    f.write("}\n")
f.write("}\n")

##############
#   LABELS   #
##############
f.write("""#relation-text{""")
f.write("\n")
f.write("""
[zoom>=15]{
    text-name:'[name]';
    text-face-name:@bold-fonts;
    text-fill:#29B29C;
    text-halo-fill:white;
    text-halo-radius:1;
    text-size: 10;
    text-dy: 7;
    text-placement: line;
    text-avoid-edges: true;
    text-allow-overlap:false;
    text-min-distance:500;
    text-spacing: 500;
    text-label-position-tolerance: 20;
    text-max-char-angle-delta: 22.5;
        """)
f.write("\n")

for osm_id in ids:
    if osm_id in Colors.keys():
        c = Colors[osm_id]
        if isColor(c):
            color=mapnik.Color(c)
            color=lighten(deluma(color,0.25),0.3)
            f.write("    [osm_id="+str(osm_id)+"]{text-fill: "+str(color)+";}\n")
f.write("}\n")
f.write("}\n")
f.close()
exit(0)
