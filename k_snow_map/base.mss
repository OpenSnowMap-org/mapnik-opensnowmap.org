/* BASE.MSS CONTENTS
 * - Landuse & landcover
 * - Water areas
 * - Water ways
 * - Administrative Boundaries
 *
 */
#land-low[zoom>=0][zoom<6]{
  polygon-fill: @land_low;
  polygon-gamma: 0.75;
}
#land-high[zoom>=6][zoom<8] {
  polygon-fill: @land_int;
  polygon-gamma: 0.75;
}
#land-high[zoom>=6] {
  polygon-fill: @land;
  polygon-gamma: 0.75;
}
/*
#snowcover[zoom>=0][zoom<=10]{
  raster-opacity: 1;
  raster-scaling: bilinear;
}
*/
/* ================================================================== */
/* Low zoom
/* ================================================================== */

/*#world_ne[zoom>=0][zoom<7]{
  raster-scaling: bilinear;
  }*/
#countries_ne[zoom>=2][zoom<=10]{
  line-width:5;
  line-color: #4963D9;
  line-opacity: 0.05;
  [zoom>=8]{
    line-opacity: 0.05;
    line-width:4;
   }
  }
#countries_ne2[zoom>=2][zoom<=10]{
  line-width:0.5;
  line-color: #000000;
  line-comp-op: color-burn;
  line-opacity: 0.2;
  [zoom>=8]{
    line-opacity: 0.2;
    line-width:0.5;
   }
  }


/* ================================================================== */
/* CONTOURS
/* ================================================================== */


#contours50[zoom>=12][zoom<=13]{
  line-color: @contour10;
  line-width: 0.3;
  line-opacity: 0.2;
  }
#contours100[zoom>=12][zoom<=13]{
  line-color: @contour10;
  line-width: 0.4;
  line-opacity: 0.2;
  }

#contours10[zoom>=14]{
  line-color: @contour10;
  line-width: 0.3;
  line-opacity: 0.3;
  [zoom>=15]{line-width: 0.4;}
  [zoom>=16]{line-smooth: 0.5;}
  }
#contours50[zoom>=14]{
  line-color: @contour100;
  line-width: 0.6;
  line-opacity: 0.3;
  [zoom>=16]{line-smooth: 0.5;}
  }
#contours100[zoom>=14]{
  line-color: @contour100;
  line-width: 0.8;
  line-opacity: 0.3;
  [zoom>=15]{line-opacity: 0.35;}
  [zoom>=16]{line-smooth: 0.5;}
  }

/* ================================================================== */
/* Hillshading
/* ================================================================== */
/*
hillshade_2.tif
*/

#hillshade[zoom>=15]{
  raster-opacity: 0.7;
  raster-scaling: bicubic;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops:
    stop(0, rgba(0,0,0,1))
    stop(255, rgba(0,0,0,0));
  }
#hillshade[zoom=14]{
  raster-opacity: 0.75;
  raster-scaling: bicubic;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops:
    stop(0, rgba(0,0,0,1))
    stop(255, rgba(0,0,0,0));
  }
#hillshade[zoom=13]{
  raster-opacity: 0.8;
  raster-scaling: bilinear;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops:
    stop(0, rgba(0,0,0,1))
    stop(255, rgba(0,0,0,0));
  }
#hillshade[zoom=12]{
  raster-scaling: bilinear;
  raster-opacity: 0.9;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops:
    stop(0, rgba(0,0,0,1))
    stop(255, rgba(0,0,0,0));
  }
/*
hillshade_d2.tif
*/
#hillshade11[zoom=11]{
  raster-opacity: 0.5;
  raster-scaling: bilinear;
  }
#hillshade11[zoom=10]{
  raster-opacity: 0.5;
  }
/*
hillshade_d4.tif
*/
#hillshade9[zoom=9]{
  raster-opacity: 0.5;
  }
/*
hillshade_d8.tif
*/
#hillshade8[zoom=8]{
  raster-opacity: 0.4;
  raster-scaling: bilinear;
  }
  
#hillshade7[zoom=7]{
  raster-opacity: 1;
  raster-scaling: bilinear;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops:
    stop(0,@hillshade_low,linear)
    stop(240, #FFF,linear)
    stop(255, #FFF,linear);
  comp-op: multiply;
  }
#hillshade10[zoom=6]{
  raster-opacity: 1;
  raster-scaling: bilinear;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops:
    stop(0,@hillshade_low,linear)
    stop(240, #FFF,linear)
    stop(255, #FFF,linear);
  comp-op: multiply;
  }

#hillshade20[zoom=5]{
  raster-opacity: 1;
  raster-scaling: bilinear;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops:
    stop(0,@hillshade_low,linear)
    stop(240, #FFF,linear)
    stop(255, #FFF,linear);
  comp-op: multiply;
  }
#hillshade30[zoom=4]{
  raster-opacity: 1;
  raster-scaling: bilinear;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops:
    stop(0,@hillshade_low,linear)
    stop(240, #FFF,linear)
    stop(255, #FFF,linear);
  comp-op: multiply;
  }
#hillshade40[zoom<=3]{
  raster-opacity: 1;
  raster-scaling: bilinear;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops:
    stop(0,@hillshade_low,linear)
    stop(240, #FFF,linear)
    stop(255, #FFF,linear);
  comp-op: multiply;
  }
/* ================================================================== */
/* LANDUSE & LANDCOVER
/* ================================================================== */

#landuse_gen0[zoom>5][zoom<=12],
/*
#landuse_gen1[zoom>5][zoom<=12],
*/
#landuse[zoom>12] {
  [type='cemetery']      { polygon-fill: @cemetery; }
  [type='commercial']    { polygon-fill: @industrial; }
  [type='golf_course']   { polygon-fill: @sports; }
  [type='grass']         { polygon-fill: @grass; }
  [type='industrial']    { polygon-fill: @industrial; }
  [type='park']          { polygon-fill: @park; }
  [type='pitch']         { polygon-fill: @sports; }
  [type='sports_center'] { polygon-fill: @sports; }
  [type='stadium']       { polygon-fill: @sports; }
  [type='glacier']       { polygon-fill: @glacier; }
}
#landuse_gen0[zoom>5][zoom<=12] {
  [type='forest']    { polygon-fill: @wooded_low; }
  [type='wood']    { polygon-fill: @wooded_low; }
}
#landuse_gen0[zoom>=11][zoom<=12] {
  [type='forest'],[type='wood'] { 
    polygon-smooth: 0.4;
    polygon-gamma: 0.5;
    /* line below masks the artefact between smoothed polygons*/
    line-color: @wooded_low; 
    line-width:2.5;
    line-join:round;
    line-join:1;
    }
  }

#landuse[zoom>14] {
  [type='college']       { polygon-fill: @school; }
  [type='common']        { polygon-fill: @park; }
  [type='hospital']      { polygon-fill: @hospital; }
  [type='parking']       { 
                          polygon-fill: @parking; 
                          line-color: @parking_line;
                          line-width: 0.5;
                        }
  [type='pedestrian']    { polygon-fill: @pedestrian_fill; }
  [type='residential']   { polygon-fill: @residential; }
  [type='school']        { polygon-fill: @school; }
  [type='university']    { polygon-fill: @school; }
}
#landuse[zoom>12]{
  [type='forest'] { polygon-fill: @wooded; }
  [type='wood'] { polygon-fill: @wooded; }
}
#landuse_overlays[zoom>12]{
    [type='scree']{polygon-pattern-file: url(img/scree.png);polygon-pattern-opacity: 0.5;}
    [type='shingle']{polygon-pattern-file: url(img/scree.png);polygon-pattern-opacity: 0.5;}
    [type='bare_rock']{polygon-pattern-file: url(img/scree.png);polygon-pattern-opacity: 0.5;}
    [type='glacier']          { line-color: #2D2A74; line-width: 0.1;}
  }
 
#landuse_overlays[type='wetland']{
  [zoom>12][zoom<=14] { polygon-pattern-file:url(img/wetland.png); }
  [zoom>14] { polygon-pattern-file:url(img/wetland.png);}
  }
#landuse_overlays[type='forest']{
    [zoom>12][zoom<=14]{ polygon-pattern-file:url(img/forest_small.png);}
    [zoom>14]{ polygon-pattern-file:url(img/forest_lite.png);}
}
#landuse_overlays[type='wood']{
    [zoom>12][zoom<=14]{ polygon-pattern-file:url(img/forest_small.png);}
    [zoom>14]{ polygon-pattern-file:url(img/forest_lite.png);}
}
#land_features[zoom>12] {
    opacity: 0.5;
    [type='cliff']{
      line-pattern-file: url(img/cliff2.png);
    }
}
#single_trees[zoom>=12] {
    [type='tree_row']{
      line-join: round;
      line-cap: round;
      line-color: @wooded;
      line-width: 2;
      [zoom>=14]{
          line-width: 5;
      }
      [zoom>=16]{
          line-width: 7.5;
      }
    [type='tree_row'][zoom>=14]{
      line-pattern-file: url(img/forest_lite_line.png);
      }
    }
    [type='hedge'][zoom>=14]{ 
      line-color: @wooded;
      line-width: 2;
      [zoom>=16]{
          line-width: 4;
      }
    }
    [type='tree']{ 
       marker-width: 0.5;
       marker-height: 0.5;
       marker-line-width: 1.5;       
       marker-fill: #9EB0CC;
       marker-line-color: @wooded;
       marker-type: ellipse;
       marker-allow-overlap : true;
       marker-placement: point;
       marker-ignore-placement: true;
       [zoom>=14]{
           marker-width: 3.5;
           marker-height: 3.5;
           marker-line-width: 2;     
       }
       [zoom>=16]{
            marker-width: 5.5;
            marker-height: 5.5;
            marker-line-width: 3;       
       }
    }
  }
/* ---- BUILDINGS ---- */
#buildings[zoom>12][zoom<=16] {
  polygon-fill:@building;
  [zoom>=14] {
    line-color:@building_outline;
    line-width:0.2;
  }
  [zoom>=16] {
    line-color:@building_outline;
    line-width:0.4;
  }
}
// At the highest zoom levels, render buildings in fancy pseudo-3D.
// Ordering polygons by their Y-position is necessary for this effect
// so we use a separate layer that does this for us.
#buildings[zoom>=17] {
  building-fill:@building;
  building-height:1.25;
}


/* ================================================================== */
/* WATER AREAS
/* ================================================================== */

Map { background-color: @ocean; }
#ocean_background[zoom>3][zoom<=6]{
  polygon-fill: @ocean;
}
#ocean_background[zoom=7]{
  polygon-fill: @water2;
}
#ocean_background[zoom=8]{
  polygon-fill: @water1;
}
#ocean_background[zoom>8]{
  polygon-fill: @water;
}

#water_gen0[zoom>3][zoom<=6]{
  polygon-fill: @ocean;
}
#water_gen0[zoom=7]{
  polygon-fill: @water2;
}
#water_gen0[zoom=8]{
  polygon-fill: @water1;
}
#water_gen0[zoom>8][zoom<=9]{
  polygon-fill: @water;
  line-color: darken(@water,10%);
  line-width: 0.5;
}
#water_gen1[zoom>9][zoom<=12], {
  polygon-fill: @water;
  line-color: darken(@water,10%);
  line-width: 0.5;
}

#water[zoom>12] {
  polygon-fill: @water;
/*
  line-color: darken(@water,20%);
  line-width: 0.5;
*/
}
/* ================================================================== */
/* WATER WAYS
/* ================================================================== */

#waterway_low[zoom>=8][zoom<=12] {
  line-color: @water;
  [zoom=8] { line-width: 0.1; }
  [zoom=9] { line-width: 0.2; }
  [zoom=10]{ line-width: 0.4; }
  [zoom=11]{ line-width: 0.6; }
  [zoom=12]{ line-width: 0.8; }
}

#waterway_med[zoom>=13][zoom<=14] {
  line-color: @water;
  [type='river'],
  [type='canal'] {
    line-cap: round;
    line-join: round;
    [zoom=13]{ line-width: 1; }
    [zoom=14]{ line-width: 1.5; }
  }
  [type='stream'] {
    [zoom=13]{ line-width: 0.2; }
    [zoom=14]{ line-width: 0.4; }
  }
}
  
#waterway_high[zoom>=15] {
  line-color: @water;
  [type='river'],
  [type='canal'] {
    line-cap: round;
    line-join: round;
    [zoom=15]{ line-width: 3; }
    [zoom=16]{ line-width: 4; }
    [zoom=17]{ line-width: 5; }
    [zoom=18]{ line-width: 6; }
    [zoom=19]{ line-width: 7; }
    [zoom>19]{ line-width: 7; }
  }
  [type='stream'] {
    [zoom=15]{ line-width: 1.5; }
    [zoom=16]{ line-width: 1.5; }
    [zoom=17]{ line-width: 2; }
    [zoom=18]{ line-width: 2; }
    [zoom>18]{ line-width: 3; }
  }
  [type='ditch'],
  [type='drain'] {
    [zoom=15]{ line-width: 0.5; }
    [zoom=16]{ line-width: 0.7; }
    [zoom=17]{ line-width: 1; }
    [zoom>18]{ line-width: 1.5; }
  }
}

/* ================================================================== */
/* ADMINISTRATIVE BOUNDARIES
/* ================================================================== */


#admin[admin_level='2'][zoom>1] {
  line-color:@admin_2;
  line-width:0.5;
  [zoom=2] { line-opacity: 0.25; }
  [zoom=3] { line-opacity: 0.3; }
  [zoom=4] { line-opacity: 0.4; }
}

/* ================================================================== */
/* BARRIER POINTS
/* ================================================================== */


#barrier_points[zoom>=17][stylegroup = 'divider'] {
  marker-height: 2;
  marker-fill: #c7c7c7;
  marker-line-opacity:0;
  marker-allow-overlap:true;
}

/* ================================================================== */
/* BARRIER LINES
/* ================================================================== */

#barrier_lines[zoom>=17][stylegroup = 'gate'] {
  line-width:2.5;
  line-color:#aab;
  line-dasharray:3,2;
}

#barrier_lines[zoom>=17][stylegroup = 'fence'] {
  line-width:1.75;
  line-color:#aab;
  line-dasharray:1,1;
}

#barrier_lines[zoom>=17][stylegroup = 'hedge'] {
  line-width:3;
  line-color:darken(@park,5%);

}

#power_lines[zoom>=14]{
    [type='line']{
    line-pattern-file: url(img/power_line.svg);
    }
    [type='minor_line']{
    line-pattern-file: url(img/power_line_thin.svg);
    }
}
#huts[zoom>=14]{
  marker-height: 8;
  marker-ignore-placement:true;
  marker-line-color: #78869C;
  [zoom>=15]{
    marker-height: 10;
  }
  [type='hut']{
    marker-file: url(img/hut.svg);
  }
  [type='shelter']{
    marker-file: url(img/shelter.svg);
  }
}
#reserves[zoom>=10] {
    ::wideline {
      line-color: darken(#9ECCB3,25%);
      line-width: 4;
      line-offset: -2;
      line-opacity:  0.2;
    }
    ::narrowline {
      line-color: darken(#9ECCB3,25%);
      line-width: 1;
      line-dasharray: 1,1;
      line-opacity:  0.8;
    }
}

