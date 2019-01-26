#downhill-bg{ /* white bg for aliasing*/
    line-cap: round;
    line-join: round;
    line-color: #FFFFFF;
    line-gamma: 0.6;
    line-smooth: 0.5;
    [difficulty='freeride']{line-color: #DDDDDD;}
    
    [zoom>=9][zoom<=11]{line-width: 2.5;}
    [zoom=12]{line-width: 4.5;}
    [zoom>=13][zoom<=15]{line-width: 6.5;}
    [zoom>=16]{line-width: 8.5;}
}

#downhill-casing{
opacity: 0.9;
    line-cap: round;
    line-join: round;
    line-gamma: 0.6;
    line-smooth: 0.5;
    
    [zoom>=9][zoom<=11]{line-width: 2;}
    [zoom=12]{line-width: 4;}
    [zoom>=13][zoom<=15]{line-width: 6;}
    [zoom>=16]{line-width: 7.5;}
    
    line-color: #FFFFFF;
    [difficulty="novice"]{line-color: #2AB62A;}
    [difficulty="easy"]{line-color: #1919DE;}
    [difficulty="intermediate"]{line-color: #E81F1F;}
    [difficulty="advanced"]{line-color: #222222;}
    [difficulty="expert"]{line-color: #FFBB2D;}
    [difficulty="freeride"]{line-color: #FFE72D;}
}

#downhill-backcountry-bg{ /* white bg for aliasing*/
    line-cap: butt;
    line-join: round;
    line-color: #FFFFFF;
    line-gamma: 0.6;
    line-smooth: 0.5;
    [difficulty='freeride']{line-color: #DDDDDD;}
    
    [zoom>=9][zoom<=11]{line-width: 2.5;}
    [zoom=12]{line-width: 4.5;}
    [zoom>=13][zoom<=15]{line-width: 6.5;line-dasharray: 15, 5;}
    [zoom>=16]{line-width: 8.5;line-dasharray: 20, 8;}
}
#downhill-casing-backcountry{
opacity: 0.9;
    line-cap: butt;
    line-join: round;
    line-gamma: 0.6;
    line-smooth: 0.5;
    
    [zoom>=9][zoom<=11]{line-width: 2;}
    [zoom=12]{line-width: 4;}
    [zoom>=13][zoom<=15]{line-width: 6;line-dasharray: 15, 5;}
    [zoom>=16]{line-width: 7.5;line-dasharray: 20, 8;}
    
    line-color: #FFFFFF;
    [difficulty="novice"]{line-color: #2AB62A;}
    [difficulty="easy"]{line-color: #1919DE;}
    [difficulty="intermediate"]{line-color: #E81F1F;}
    [difficulty="advanced"]{line-color: #222222;}
    [difficulty="expert"]{line-color: #FFBB2D;}
    [difficulty="freeride"]{line-color: #FFE72D;}
}

#downhill-area-bg{ /* white bg for aliasing*/
    line-cap: round;
    line-join: round;
    line-color: #FFFFFF;
    line-gamma: 0.6;
    line-smooth: 0.5;
    [zoom>=9][zoom<=11]{line-width: 1;}
    [zoom=12]{line-width: 1.5;}
    [zoom>=13][zoom<=15]{line-width: 2.5;}
    [zoom>=16]{line-width: 3;}
}

#downhill-area-casing{
opacity: 0.9;
    line-cap: round;
    line-join: round;
    line-gamma: 0.6;
    line-smooth: 0.5;
    
    [zoom>=9][zoom<=11]{line-width: 1;}
    [zoom=12]{line-width: 1;}
    [zoom>=13][zoom<=15]{line-width: 2;}
    [zoom>=16]{line-width: 2.5;}
    
    line-color: #FFFFFF;
    [difficulty="novice"]{line-color: #2AB62A;}
    [difficulty="easy"]{line-color: #1919DE;}
    [difficulty="intermediate"]{line-color: #E81F1F;}
    [difficulty="advanced"]{line-color: #222222;}
    [difficulty="expert"]{line-color: #FFBB2D;}
    [difficulty="freeride"]{line-color: #FFE72D;}
}

#downhill-area-backcountry-bg{ /* white bg for aliasing*/
    line-cap: buttt;
    line-join: round;
    line-color: #FFFFFF;
    line-gamma: 0.6;
    line-smooth: 0.5;
    [zoom>=9][zoom<=11]{line-width: 1;}
    [zoom=12]{line-width: 1.5;}
    [zoom>=13][zoom<=15]{line-width: 2.5;line-dasharray: 15, 5;}
    [zoom>=16]{line-width: 3;line-dasharray: 20, 8;}
}
#downhill-area-casing-backcountry{
opacity: 0.9;
    line-cap: butt;
    line-join: round;
    line-gamma: 0.6;
    line-smooth: 0.5;
    
    [zoom>=9][zoom<=11]{line-width: 1;}
    [zoom=12]{line-width: 1;}
    [zoom>=13][zoom<=15]{line-width: 2;line-dasharray: 15, 5;}
    [zoom>=16]{line-width: 2.5;line-dasharray: 20, 8;}
    
    [difficulty="novice"]{line-color: #2AB62A;}
    [difficulty="easy"]{line-color: #1919DE;}
    [difficulty="intermediate"]{line-color: #E81F1F;}
    [difficulty="advanced"]{line-color: #222222;}
    [difficulty="expert"]{line-color: #FFBB2D;}
    [difficulty="freeride"]{line-color: #FFE72D;}
}
#downhill-area-fill{
opacity: 0.9;
    
    [zoom=12]{polygon-opacity: 0.4; polygon-gamma: 1;}
    [zoom>=13][zoom<=15]{polygon-opacity: 0.2; polygon-gamma: 0.6; polygon-smooth:0.5;}
    [zoom>=16]{polygon-opacity: 0.05;polygon-gamma: 1; polygon-smooth:0.5;}
    
    [difficulty="novice"]{polygon-fill: #2AB62A;}
    [difficulty="easy"]{polygon-fill: #1919DE;}
    [difficulty="intermediate"]{polygon-fill: #E81F1F;}
    [difficulty="advanced"]{polygon-fill: #222222;}
    [difficulty="expert"]{polygon-fill: #FFBB2D;}
    [difficulty="freeride"]{polygon-fill: #FFE72D;}
}
/*Overlay erasers */
#downhill-overlay-eraser1[zoom>=9][zoom<=11]{
    comp-op: dst-out;
    opacity: 0.35;
    
    line-color: #FFFFFF;
    line-cap: round;
    line-join: round;
    line-gamma: 0.6;
    line-width: 0.2;
}
#downhill-overlay-eraser2[zoom=12]{
    comp-op: dst-out;
    opacity: 0.55;
    
    line-color: #FFFFFF;
    line-cap: round;
    line-join: round;
    line-gamma: 0.6;
    line-width: 2;
}
#downhill-overlay-eraser3[zoom>=13][zoom<=15]{
    comp-op: dst-out;
    opacity: 0.85;
    
    line-color: #FFFFFF;
    line-cap: round;
    line-join: round;
    line-gamma: 0.6;
    line-width: 4;
    line-smooth: 0.5;
}
#downhill-overlay-eraser4[zoom>=16]{
    comp-op: dst-out;
    opacity: 0.95;
    
    line-color: #FFFFFF;
    line-cap: round;
    line-join: round;
    line-gamma: 0.6;
    line-width: 5;
    line-smooth: 0.5;
}

#downhill-area-eraser{
    comp-op: dst-out;
    
    polygon-fill: #FFFFFF;
    [zoom=12]{polygon-opacity: 1; polygon-gamma: 0.6;}
    [zoom>=13][zoom<=15]{polygon-opacity: 1; polygon-gamma: 0.6; polygon-smooth:0.5;}
    [zoom>=16]{polygon-opacity: 1; polygon-gamma: 1; polygon-smooth:0.5;}

}
#downhill-area-eraser-backcountry{
    comp-op: dst-out;
    
    polygon-fill: #FFFFFF;
    polygon-gamma: 0.6;
}
#downhill-overlay-thin[zoom>=15]{
    line-cap: round;
    line-join: round;
    line-gamma: 0.6;
    line-smooth: 0.5;
    line-width: 0.1;
    line-color: #FFFFFF;
    
    [difficulty="novice"]{line-color: #9CE49C;}
    [difficulty="easy"]{line-color: #889BF8;}
    [difficulty="intermediate"]{line-color: #FF8383;}
    [difficulty="advanced"]{line-color: #6A6868;}
    [difficulty="expert"]{line-color: #FFD884;}
    [difficulty="freeride"]{line-color: #FFF5A3;}
}

#downhill-text[zoom>=15]{
    text-name:'[name]';
    text-face-name:@book-fonts;
    text-halo-radius:1;
    text-size: 10;
    text-placement: point;
    text-avoid-edges: true;
    text-allow-overlap:false;
    text-wrap-width: 25;
    text-spacing: 10000;
    
    text-halo-fill:#DFE9F0;
    text-fill:#888888;
    [difficulty='novice']{text-fill:#02B002; }
    [difficulty='easy']{text-fill:#1919DE; }
    [difficulty='intermediate']{text-fill:#E81F1F; }
    [difficulty='advanced']{text-fill:#333333; }
    [difficulty='expert']{text-fill:#FFB71F; }
    [difficulty='freeride']{text-fill:#9C8E1E; text-dy: 10;}
    [grooming='mogul']{text-dy: 10;}
    [gladed=true]{text-dy: 10;}
    [lit=true]{text-dy: 10;}
    
}
#downhill-icons[zoom>=14]{
    shield-placement: 'line';
    shield-spacing: 400;
    shield-file: url('pics/light.png');
    shield-face-name:@bold-fonts;
    shield-name:'';
    shield-allow-overlap: false;
    
    [difficulty='freeride']{
        shield-transform: scale(0.4,0.4);
        shield-file: url('pics/danger-red.svg');
    }
    [lit=true]{
        shield-file: url('pics/light.png');
    }
    [gladed=true]{
        shield-transform: scale(0.6,0.6);
        shield-file: url('pics/gladed.svg');
    }
    [grooming='mogul']{
        shield-transform: scale(0.6,0.6);
        shield-file: url('pics/mogul.svg');
    }
}
