/*#pistes[zoom>=10] {
  line-color: @red;
  line-width : 0.1;
}*/


/*
   Fake and transparent labels used to let some room
  to allow overlay not masking other labels
*/
#pistes_labels[zoom>=10] {
  text-fill: @red;
  text-opacity: 0;
  text-name:'[name]';
  text-size:30;
  text-face-name:@sans;
  text-placement:line;
  text-spacing: 5;
  text-max-char-angle-delta: 90;
}

@piste_nodes:   0.3;
@piste_node_line: 1;

#nodes_nordic[zoom <=8][zoom >5] {
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
#nodes_nordic2[zoom <=8][zoom >5]  {
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
#nodes_downhill[zoom <=8][zoom >5]  {
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
#nodes_downhill2[zoom <=8][zoom >5]  {
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
#downhill_white_overlay[zoom>=12]{
    line-cap: round;
    line-join: round;
    line-color: #FFFFFF;
    line-opacity: 0.5;
    image-filters: agg-stack-blur(1,1);
    line-smooth: 0.5;
  [zoom=12] {line-width: 6;}
  [zoom>=13] {line-width: 8;}
  [zoom>=16] {line-width: 10;}
}
#downhill_white_overlay_area[zoom>=12]{
    image-filters: agg-stack-blur(1,1);
    line-smooth: 0.5;
    polygon-fill: #FFFFFF;
    polygon-opacity: 0.2;
    line-opacity: 0;
    line-width: 1;
    line-color: #FFFFFF;

}


