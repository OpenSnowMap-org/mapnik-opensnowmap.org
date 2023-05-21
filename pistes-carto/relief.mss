/* Relief.MSS CONTENTS
 * - Relief
 *
 */
/*
@hillshade_low:     #6c9cac;
*/
@hillshade_low:     rgba(108,156,172,1);
@hillshade_hi:     rgba(108,156,172,0);

/* ================================================================== */
/* CONTOURS
/* ================================================================== */


#contours50[zoom>=12][zoom<=13]{
  line-color: #B7928A;
  line-width: 0.5;
  line-opacity: 0.4;
  }
#contours100[zoom=11]{
  line-color: #B7928A;
  line-width: 0.6;
  line-opacity: 0.5;
  }
#contours100[zoom>=12][zoom<=13]{
  line-color: #AA837B;
  line-width: 0.6;
  line-opacity: 0.6;
  }
#contours10[zoom>=14]{
  line-color: #877572;
  line-width: 0.25;
  line-opacity: 0.4;
  [zoom>=15]{line-width: 0.4;}
  [zoom>=16]{line-smooth: 0.5;}
  comp-op: multiply;
  }
#contours50[zoom>=14]{
  line-color: #82706C;
  line-width: 0.6;
  line-opacity: 0.5;
  [zoom>=16]{line-smooth: 0.5;}
  comp-op: multiply;
  }
#contours100[zoom>=14][zoom<=15]{
  line-color: #6E5954;
  line-width: 0.8;
  line-opacity: 0.5;
  comp-op: multiply;
  }
#contours100[zoom>=16]{
  line-color: #6E5954;
  line-width: 0.7;
  line-opacity: 0.5;
  [zoom>=16]{line-smooth: 0.5;}
  comp-op: multiply;
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
    stop(240, @hillshade_hi,linear)
    stop(255, @hillshade_hi,linear);
  }
#hillshade10[zoom=6]{
  raster-opacity: 1;
  raster-scaling: bilinear;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops:
    stop(0,@hillshade_low,linear)
    stop(240, @hillshade_hi,linear)
    stop(255, @hillshade_hi,linear);
  }

#hillshade20[zoom=5]{
  raster-opacity: 1;
  raster-scaling: bilinear;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops:
    stop(0,@hillshade_low,linear)
    stop(240, @hillshade_hi,linear)
    stop(255, @hillshade_hi,linear);
  }
#hillshade30[zoom=4]{
  raster-opacity: 1;
  raster-scaling: bilinear;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops:
    stop(0,@hillshade_low,linear)
    stop(240, @hillshade_hi,linear)
    stop(255, @hillshade_hi,linear);
  }
#hillshade40[zoom<=3]{
  raster-opacity: 1;
  raster-scaling: bilinear;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops:
    stop(0,@hillshade_low,linear)
    stop(240, @hillshade_hi,linear)
    stop(255, @hillshade_hi,linear);
  }

#contours100_labels_eraser[zoom>=14]{
  text-allow-overlap: true;
  comp-op: dst-out;
  text-name: [ele];
  text-face-name: 'DejaVu Sans Bold';
  text-placement: line;
  text-fill: #ffffff;
  text-size: 7.5;
  text-opacity: 0.9;
  text-spacing: 300;
  text-halo-radius: 1;
  text-halo-fill: #ffffff;
  }
#contours100_labels[zoom>=12][zoom<=14]{
  text-name: [ele];
  text-face-name: 'DejaVu Sans Bold';
  text-placement: line;
  text-fill: #6E5954;
  text-size: 7.5;
  text-opacity: 0.8;
  text-spacing: 500;
  text-min-distance: 300;
  text-label-position-tolerance:100;
/*
  text-halo-radius: 0.3;
  text-halo-opacity: 0.7;
  text-halo-fill: @land_grey;
*/
  comp-op: multiply;
  }
#contours100_labels[zoom>=14]{
  text-allow-overlap: true;
  text-name: [ele];
  text-face-name: 'DejaVu Sans Bold';
  text-placement: line;
  text-fill: #6E5954;
  text-size: 7.5;
  text-opacity: 0.8;
  text-spacing: 300;
/*
  text-halo-radius: 0.3;
  text-halo-opacity: 0.7;
  text-halo-fill: @land_grey;
*/
  comp-op: multiply;
  }
/*
Low-zoom cluster effect nodes
*/
@piste_nodes:   0.3;
@piste_node_line: 1;
#nodes_nordic[zoom =8] {
  marker-fill: orange;
  marker-opacity: 0.5;
  marker-width: @piste_nodes*10;
  marker-height: @piste_nodes*10;
  marker-line-width: @piste_nodes + @piste_node_line*2;
  marker-line-color: orange;
  marker-line-opacity: 0.2;
  marker-type: ellipse;
  marker-allow-overlap : false;
  marker-placement: point;
  marker-ignore-placement: true;
  }
#nodes_nordic2[zoom =8]  {
  marker-fill: orange;
  marker-opacity: 1;
  marker-width: @piste_nodes*5;
  marker-height: @piste_nodes*5;
  marker-line-width: @piste_nodes + @piste_node_line;
  marker-line-color: orange;
  marker-line-opacity: 0.6;
  marker-type: ellipse;
  marker-allow-overlap : false;
  marker-placement: point; 
  marker-ignore-placement: true;
  
  comp-op: color-dodge;
  }
#nodes_downhill[zoom =8]   {
  marker-fill: #1E70FF;
  marker-opacity: 0.5;
  marker-width: @piste_nodes*10;
  marker-height: @piste_nodes*10;
  marker-line-width: @piste_nodes + @piste_node_line*2;
  marker-line-color: #1E70FF;
  marker-line-opacity: 0.2;
  marker-type: ellipse;
  marker-allow-overlap : false;
  marker-placement: point;  
  marker-ignore-placement: true;
  }
#nodes_downhill2[zoom =8]  {
  marker-fill: #1E70FF;
  marker-opacity: 1;
  marker-width: @piste_nodes*5;
  marker-height: @piste_nodes*5;
  marker-line-width: @piste_nodes + @piste_node_line;
  marker-line-color: #1E70FF;
  marker-line-opacity: 0.6;
  marker-type: ellipse;
  marker-allow-overlap : false;
  marker-placement: point; 
  marker-ignore-placement: true;
  
  comp-op: color-dodge;
  }
#nodes_nordic[zoom <=7][zoom >5] {
  marker-fill: orange;
  marker-opacity: 0.5;
  marker-width: @piste_nodes;
  marker-height: @piste_nodes;
  marker-line-width: @piste_nodes + @piste_node_line*2;
  marker-line-color: orange;
  marker-line-opacity: 0.2;
  marker-type: ellipse;
  marker-allow-overlap : false;
  marker-placement: point;
  marker-ignore-placement: true;
  }
#nodes_nordic2[zoom <=7][zoom >5]  {
  marker-fill: orange;
  marker-opacity: 1;
  marker-width: @piste_nodes / 2;
  marker-height: @piste_nodes / 2;
  marker-line-width: @piste_nodes + @piste_node_line;
  marker-line-color: orange;
  marker-line-opacity: 0.6;
  marker-type: ellipse;
  marker-allow-overlap : false;
  marker-placement: point; 
  marker-ignore-placement: true;
  
  comp-op: color-dodge;
  }
#nodes_downhill[zoom <=7][zoom >5]  {
  marker-fill: #1E70FF;
  marker-opacity: 0.5;
  marker-width: @piste_nodes;
  marker-height: @piste_nodes;
  marker-line-width: @piste_nodes + @piste_node_line*2;
  marker-line-color: #1E70FF;
  marker-line-opacity: 0.2;
  marker-type: ellipse;
  marker-allow-overlap : false;
  marker-placement: point;  
  marker-ignore-placement: true;
  }
#nodes_downhill2[zoom <=7][zoom >5]  {
  marker-fill: #1E70FF;
  marker-opacity: 1;
  marker-width: @piste_nodes / 2;
  marker-height: @piste_nodes / 2;
  marker-line-width: @piste_nodes + @piste_node_line;
  marker-line-color: #1E70FF;
  marker-line-opacity: 0.6;
  marker-type: ellipse;
  marker-allow-overlap : false;
  marker-placement: point; 
  marker-ignore-placement: true;
  
  comp-op: color-dodge;
  }

#nodes_nordic[zoom <=5] {
  marker-fill: orange;
  marker-opacity: 0.5;
  marker-width: @piste_nodes*0.75;
  marker-height: @piste_nodes*0.75;
  marker-line-width: @piste_nodes*0.75 + @piste_node_line*2*0.75;
  marker-line-color: orange;
  marker-line-opacity: 0.2;
  marker-type: ellipse;
  marker-allow-overlap : false;
  marker-placement: point;
  marker-ignore-placement: true;
  }
#nodes_nordic2[zoom <=5]  {
  marker-fill: orange;
  marker-opacity: 1;
  marker-width: @piste_nodes*0.75 / 2;
  marker-height: @piste_nodes*0.75 / 2;
  marker-line-width: @piste_nodes*0.75 + @piste_node_line*0.75;
  marker-line-color: orange;
  marker-line-opacity: 0.6;
  marker-type: ellipse;
  marker-allow-overlap : false;
  marker-placement: point; 
  marker-ignore-placement: true;
  
  comp-op: color-dodge;
  }
#nodes_downhill[zoom <=5]  {
  marker-fill: #1E70FF;
  marker-opacity: 0.5;
  marker-width: @piste_nodes*0.75;
  marker-height: @piste_nodes*0.75;
  marker-line-width: @piste_nodes*0.75 + @piste_node_line*2*0.75;
  marker-line-color: #1E70FF;
  marker-line-opacity: 0.2;
  marker-type: ellipse;
  marker-allow-overlap : false;
  marker-placement: point;  
  marker-ignore-placement: true;
  }
#nodes_downhill2[zoom <=5] {
  marker-fill: #1E70FF;
  marker-opacity: 1;
  marker-width: @piste_nodes*0.75 / 2;
  marker-height: @piste_nodes*0.75 / 2;
  marker-line-width: @piste_nodes*0.75 + @piste_node_line*0.75;
  marker-line-color: #1E70FF;
  marker-line-opacity: 0.6;
  marker-type: ellipse;
  marker-allow-overlap : false;
  marker-placement: point; 
  marker-ignore-placement: true;
  
  comp-op: color-dodge;
  }
