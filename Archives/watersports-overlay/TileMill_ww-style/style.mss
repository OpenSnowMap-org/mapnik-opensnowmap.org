Map {
  background-color: #ffffff;
}

#waterways {
  line-width:3;
  line-color:#000;
}
#river-names [zoom < 12] {
  text-name:[name];
  text-face-name: "DejaVu Sans Book";
  text-placement-type: simple;
  text-placement: point;
  text-min-distance: 50;
  text-fill: #008bff;
  text-halo-fill: #FFF;
  text-halo-radius: 2;  
  text-size: 10;
}
#river-names [zoom >= 12] {
  text-name:[name];
  text-face-name: "DejaVu Sans Book";
  text-placement-type: dummy;
  text-placement: line;
  text-min-distance: 200;
  text-label-position-tolerance:100;
  text-fill: #008bff;
  text-halo-fill: #FFF;
  text-halo-radius: 2;  
  text-size: 10;
  text-avoid-edges: true;
}
#ww-names [zoom > 11]{
  text-name:[wwname];
  text-face-name: "DejaVu Sans Book";
  text-placement-type: simple;
  text-halo-fill: #FFF;
  text-halo-radius: 2;  
  text-wrap-width : 10;
  text-avoid-edges: true;
  text-dy: 20;
  text-dx: 20;
}
#ww-names-point [zoom > 11]{
  text-name:[wwname];
  text-face-name: "DejaVu Sans Book";
  text-placement-type: simple;
  text-halo-fill: #FFF;
  text-halo-radius: 2;  
  text-wrap-width : 10;
  text-avoid-edges: true;
  text-dy: 20;
  text-dx: 20;
}
#dams [zoom > 11]{
  [waterway='dam']{
    line-width:5;
    line-color:#000000;
    }
  [waterway='weir']{
    line-width:5;
    line-color:#004386;
    }
}
#dams-point [zoom > 11]{
  [waterway='dam']{
    marker-width:5;
    marker-fill:#000000;
    marker-line-width:0;
    }
  [waterway='weir']{
    marker-width:5;
    marker-fill:#004386;
    marker-line-width:0;
    }
}
#put_in_out [zoom > 12] {
  marker-file: url("pics/put_in_out-256.svg");
  marker-transform: scale(0.06,0.06);
  marker-spacing: 50;
  marker-max-error: 0.5;
}
#hazard [zoom > 12]{
  marker-file: url("pics/danger-black-256.svg");
  marker-transform: scale(0.06,0.06);
}

#grade-zero {
  line-width:3;
  line-color:#0080ff;
  line-join: round;
  [zoom >= 15] {line-smooth: 0.2;}
}
#grade-two {
  line-width:3;
  line-color:#ffd500;
  line-join: round;
  [zoom >= 15] {line-smooth: 0.2;}
}
#grade-three {
  line-width:3;
  line-color:#ff8000;
  line-join: round;
  [zoom >= 15] {line-smooth: 0.2;}
}
#grade-four {
  line-width:3;
  line-color:#d20000;
  line-join: round;
  [zoom >= 15] {line-smooth: 0.2;}
}
#grade-five {
  line-width:3;
  line-color:#8e008e;
  line-join: round;
  [zoom >= 15] {line-smooth: 0.2;}
}
#grade-six {
  line-width:3;
  line-color:#3e0000;
  line-join: round;
  [zoom >= 15] {line-smooth: 0.2;}
}
#grade-zero-rapid [zoom >= 12]{
  line-width:3;
  line-color:#0080ff;
    line-offset: 2.5;
  line-join: round;
  [zoom >= 15] {line-smooth: 0.2;}
}
#grade-two-rapid [zoom >= 12]{
  line-width:3;
  line-color:#ffd500;
    line-offset: 2.5;
  line-join: round;
  [zoom >= 15] {line-smooth: 0.2;}
}
#grade-three-rapid [zoom >= 12]{
  line-width:3;
  line-color:#ff8000;
    line-offset: 2.5;
  line-join: round;
  [zoom >= 15] {line-smooth: 0.2;}
}
#grade-four-rapid [zoom >= 12]{
  line-width:3;
  line-color:#d20000;
    line-offset: 2.5;
  line-join: round;
  [zoom >= 15] {line-smooth: 0.2;}
}
#grade-five-rapid [zoom >= 12]{
  line-width:3;
  line-color:#8e008e;
    line-offset: 2.5;
  line-join: round;
  [zoom >= 15] {line-smooth: 0.2;}
}
#grade-six-rapid [zoom >= 12]{
  line-width:3;
  line-color:#3e0000;
    line-offset: 2.5;
  line-join: round;
  [zoom >= 15] {line-smooth: 0.2;}
}
#grade-X [zoom >= 12]{
  marker-file: url("pics/X-256.svg");
  marker-placement: line;
  line-color:#3e0000;
  line-width:2;
  marker-spacing: 30;
  marker-transform: scale(0.03,0.03);
  marker-multi-policy: each;
  marker-allow-overlap: true;
  [zoom >= 15] {line-smooth: 0.2;}
}

#grade-zero-node [zoom >= 12]{
  marker-width:8;
  marker-fill:#0080ff;
  marker-line-width:0;
}
#grade-two-node [zoom >= 12]{
  marker-width:8;
  marker-fill:#ffd500;
  marker-line-width:0;
}
#grade-three-node [zoom >= 12]{
  marker-width:8;
  marker-fill:#ff8000;
  marker-line-width:0;
}
#grade-four-node [zoom >= 12] {
  marker-width:8;
  marker-fill:#d20000;
  marker-line-width:0;
}
#grade-five-node [zoom >= 12]{
  marker-width:8;
  marker-fill:#8e008e;
  marker-line-width:0;
}
#grade-six-node [zoom >= 12]{
  marker-width:8;
  marker-fill:#3e0000;
  marker-line-width:0;
}
#grade-X-node [zoom >= 12]{
  marker-file: url("pics/X-256.svg");
  marker-placement: point;
  marker-transform: scale(0.03,0.03);
  marker-multi-policy: each;
  marker-allow-overlap: true;
}

#bridges [zoom >= 12]{
  line-width:3;
  line-color:#0F0;
}


#portages [zoom >= 12]{
  line-width:3;
  line-color:#000;
  line-dasharray: 1,6;
  line-cap: round;
}
