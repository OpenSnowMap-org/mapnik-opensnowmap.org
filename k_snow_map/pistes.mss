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
#nodes_nordic_point[zoom <=8] {
  marker-fill: orange;
  marker-opacity: 0.5;
  marker-width: @piste_nodes;
  marker-height: @piste_nodes;
  marker-line-width: @piste_nodes + 2;
  marker-line-color: orange;
  marker-line-opacity: 0.2;
  marker-type: ellipse;
  marker-allow-overlap : true;
  marker-placement: point;
  marker-ignore-placement: true;
  }
#nodes_nordic2_point[zoom <=8] {
  marker-fill: orange;
  marker-opacity: 1;
  marker-width: @piste_nodes / 2;
  marker-height: @piste_nodes / 2;
  marker-line-width: @piste_nodes + 1;
  marker-line-color: orange;
  marker-line-opacity: 0.6;
  marker-type: ellipse;
  marker-allow-overlap : true;
  marker-placement: point; 
  marker-ignore-placement: true;
  
  comp-op: color-dodge;
  }
#nodes_downhill_point[zoom <=8] {
  marker-fill: #1E70FF;
  marker-opacity: 0.5;
  marker-width: @piste_nodes;
  marker-height: @piste_nodes;
  marker-line-width: @piste_nodes + 2;
  marker-line-color: #1E70FF;
  marker-line-opacity: 0.2;
  marker-type: ellipse;
  marker-allow-overlap : true;
  marker-placement: point;  
  marker-ignore-placement: true;
  }
#nodes_downhill2_point[zoom <=8] {
  marker-fill: #1E70FF;
  marker-opacity: 1;
  marker-width: @piste_nodes / 2;
  marker-height: @piste_nodes / 2;
  marker-line-width: @piste_nodes + 1;
  marker-line-color: #1E70FF;
  marker-line-opacity: 0.6;
  marker-type: ellipse;
  marker-allow-overlap : true;
  marker-placement: point; 
  marker-ignore-placement: true;
  
  comp-op: color-dodge;
  }
