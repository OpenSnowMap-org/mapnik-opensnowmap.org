/*#pistes[zoom>=10] {
  line-color: @red;
  line-width : 0.1;
}*/


/*
   Fake and transparent labels used to let some room
  to allow overlay not masking other labels
*/


.nordic-bg{
    line-cap: round;
    line-join: round;
    line-color: #FFFFFF;
    line-gamma: 1;
    [zoom=9]{line-width: 2;line-gamma: 0.6;}
    [zoom=10]{line-width: 3;}
    [zoom>=11][zoom<=12]{line-width: 3.5;}
    [zoom>=13][zoom<=14]{line-width: 5;line-offset: 2*1.2*[nordic_route_offset]*[direction_to_route];}
    [zoom>=15]{line-width: 6;line-offset: 2.5*1.2*[nordic_route_offset]*[direction_to_route];}
}
#nordic-difficulty-bg{
    line-cap: round;
    line-join: round;
    line-color: #FDE067;
    line-gamma: 1;
    [zoom>13][zoom<=14]{line-width: 4;line-offset: 2*1.2*[nordic_route_offset]*[direction_to_route];}
    [zoom>=15]{line-width: 5;line-offset: 2.5*1.2*[nordic_route_offset]*[direction_to_route];}
}
.nordic-way{
    line-cap: round;
    line-join: round;
    line-gamma: 0.5;
    
    line-color: #29B29C;
    [nordic_route_render_colour != ''] {
        line-color: [nordic_route_render_colour]
    }
    
    [zoom=9]{line-width: 0.5;line-gamma: 0.6;}
    [zoom=10]{line-width: 1;}
    [zoom>=11][zoom<=12]{line-width: 1;}
    [zoom>=13][zoom<=14]{line-width: 1.5;line-offset: 2*1.2*[nordic_route_offset]*[direction_to_route];}
    [zoom>=15]{line-width: 2;line-offset: 2.5*1.2*[nordic_route_offset]*[direction_to_route];}
}
#nordic-grooming{
    line-cap: round;
    line-join: round;
    line-gamma: 0.5;
    line-opacity: 0;
    line-color: #FFFFFF;

    [grooming='classic;'] {
        line-dasharray:2, 6;
        line-opacity: 1;
        [zoom>=13][zoom<=14]{line-width: 0.5;
            line-offset: 2*1.2*[nordic_route_offset]*[direction_to_route];}
        [zoom>=15]{line-width: 1;
            line-offset: 2.5*1.2*[nordic_route_offset]*[direction_to_route];}
    }
    [grooming='skating'] {
        line-dasharray:2.5, 28;
        line-opacity: 1;
        [zoom>=13][zoom<=14]{line-width: 0.5;
            line-offset: 2*1.2*[nordic_route_offset]*[direction_to_route];}
        [zoom>=15]{line-width: 1;
            line-offset: 2.5*1.2*[nordic_route_offset]*[direction_to_route];}}
            
    [grooming='scooter'] {
        line-dasharray:9, 6.5;
        line-opacity: 1;
        [zoom>=13][zoom<=14]{line-width: 1.0;
            line-offset: 2*1.2*[nordic_route_offset]*[direction_to_route];}
        [zoom>=15]{line-width: 2.0;
            line-offset: 2.5*1.2*[nordic_route_offset]*[direction_to_route];}
    }
    [grooming='backcountry'] {
        line-dasharray:9, 4.5;
        line-opacity: 1;
        [zoom>=13][zoom<=14]{line-width: 1.0;
            line-offset: 2*1.2*[nordic_route_offset]*[direction_to_route];}
        [zoom>=15]{line-width: 2.0;
            line-offset: 2.5*1.2*[nordic_route_offset]*[direction_to_route];}
    }
    [grooming=''] {
        line-opacity: 0.4;
        [zoom>=13][zoom<=14]{line-width: 1.0;
            line-offset: 2*1.2*[nordic_route_offset]*[direction_to_route];}
        [zoom>=15]{line-width: 2.0;
            line-offset: 2.5*1.2*[nordic_route_offset]*[direction_to_route];}
    line-opacity: 1;}
}
#nordic-no-difficulty{
    line-cap: round;
    line-join: round;
    line-gamma: 0.5;
    line-color: #FFFFFF;
    line-opacity: 0.4;
    [zoom>=13][zoom<=14]{line-width: 1.0;
        line-offset: 2*1.2*[nordic_route_offset]*[direction_to_route];}
    [zoom>=15]{line-width: 2.0;
        line-offset: 2.5*1.2*[nordic_route_offset]*[direction_to_route];}
}
#nordic-eraser{
    comp-op: dst-out;
    line-cap: round;
    line-join: round;
    line-color: #FFFFFF;
    line-gamma: 1;
    
    [zoom=9]{line-width: 2;}
    [zoom=10]{line-width: 3;}
    [zoom>=11][zoom<=12]{line-width: 3.5;}
    [zoom>=13][zoom<=14]{line-width: 5;}
    [zoom>=15]{line-width: 6;}
    
}

#nordic-difficulty-markers[zoom>=14]{
    shield-file: url('pics/danger-red.svg');
    [difficulty='intermediate']{shield-file: url('pics/danger-black.svg');}
    shield-placement: 'line';
    shield-spacing: 200;
    shield-min-distance: 50;
    shield-transform: scale(0.4,0.4);
    shield-face-name:@bold-fonts;
    shield-name:'';
}

#nordic-text{

    [zoom>=15]{
    text-name:'[name]';
    text-face-name:@bold-fonts;
    text-halo-fill:white;
    text-halo-radius:1;
    text-size: 10;
    text-dy: 7;
    text-placement: line;
    text-avoid-edges: true;
    text-allow-overlap:false;
    text-min-distance:500;
    text-spacing: 250;
    text-label-position-tolerance: 100;
    text-max-char-angle-delta: 15;
    text-upright: auto;
    
    text-fill: #29B29C;
    [nordic_route_render_colour != ''] {
        text-fill: [nordic_route_render_colour]
    }
    }
}