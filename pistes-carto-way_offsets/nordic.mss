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
    [zoom>=13][zoom<=14]{line-width: 3;}
    [zoom>=15]{line-width: 4;}
    
    [grooming=~".*classic.*"]{
        [zoom>=13][zoom<=14]{line-width: 5;line-offset: 5.0*[offseter];}
        [zoom>=15]{line-width: 6;line-offset: 6.0*[offseter];}
    }
    [grooming=~".*skating.*"]{
        [zoom>=13][zoom<=14]{line-width: 5;line-offset: 5.0*[offseter];}
        [zoom>=15]{line-width: 6;line-offset: 6.0*[offseter];}
    }
}
.nordic{
    line-cap: round;
    line-join: round;
    line-color: #29B29C;
    line-gamma: 1;
    
    [zoom=9]{line-width: 0.5;line-gamma: 0.6;}
    [zoom=10]{line-width: 1;}
    
    [zoom>=11][zoom<=12]{line-width: 1;}
    
    [zoom>=13][zoom<=14]{
        line-width: 1;
        line-dasharray: 5, 3;
        }
    [zoom>=15]{
        line-width: 1.5;
        line-dasharray: 8, 6;
        }
    
    [grooming=~".*classic.*"]{
    
        [zoom>=13][zoom<=14]{line-width: 1.5;line-dasharray: 10, 0;line-offset: 3.0*[offseter];}
        [zoom>=15]{line-width: 2;line-dasharray: 10, 0;line-offset: 4.0*[offseter];}
    }
    [grooming=~".*skating.*"]{
        [zoom>=13][zoom<=14]{line-width: 1.5;line-dasharray: 10, 0;line-offset: 3.0*[offseter];}
        [zoom>=15]{line-width: 2;line-dasharray: 10, 0;line-offset: 4.0*[offseter];}
    }
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

#nordic-no-difficulty[difficulty=''][zoom>=15]{
    comp-op: dst-out;
    
    line-cap: butt;
    line-join: round;
    line-color: #FFFFFF;
    line-gamma: 1;
    line-width: 15;
    line-opacity: 0.2;
    line-dasharray: 2,5;
}

#nordic-difficulty-markers[zoom>=14]{
    shield-file: url('pics/danger-red.svg');
    shield-placement: 'line';
    shield-spacing: 200;
    shield-transform: scale(0.4,0.4);
    shield-face-name:@bold-fonts;
    shield-name:'';
    [difficulty='intermediate']{shield-file: url('pics/danger-black.svg');}
}


