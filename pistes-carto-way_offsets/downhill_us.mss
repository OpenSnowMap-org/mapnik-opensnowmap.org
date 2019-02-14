#downhill_us-casing{
    opacity: 0.95;
    line-cap: round;
    line-join: round;
    line-gamma: 0.6;
    line-smooth: 0.5;
    
    [zoom>=9][zoom<=11]{line-width: 2;}
    [zoom=12]{line-width: 4;}
    [zoom>=13][zoom<=15]{line-width: 6;}
    [zoom>=16]{line-width: 7.5;}
    
    line-color: #FFFFFF;
    [difficulty="novice"]{line-color: #23CD23;}
    [difficulty="easy"]{line-color: #23CD23;}
    [difficulty="intermediate"]{line-color: #1919DE;}
    [difficulty="advanced"]{line-color: #222222;}
    [difficulty="expert"]{line-color: #222222;}
    [difficulty="freeride"]{line-color: #FFE72D;}
}

#downhill_us-casing-backcountry{
opacity: 0.95;
    line-cap: butt;
    line-join: round;
    line-gamma: 0.6;
    line-smooth: 0.5;
    
    [zoom>=9][zoom<=11]{line-width: 2;}
    [zoom=12]{line-width: 4;}
    [zoom>=13][zoom<=15]{line-width: 6;line-dasharray: 15, 5;}
    [zoom>=16]{line-width: 7.5;line-dasharray: 20, 8;}
    
    line-color: #FFFFFF;
    [difficulty="novice"]{line-color: #23CD23;}
    [difficulty="easy"]{line-color: #23CD23;}
    [difficulty="intermediate"]{line-color: #1919DE;}
    [difficulty="advanced"]{line-color: #222222;}
    [difficulty="expert"]{line-color: #222222;}
    [difficulty="freeride"]{line-color: #FFE72D;}
}

#downhill_us-area-casing{
opacity: 0.95;
    line-cap: round;
    line-join: round;
    line-gamma: 0.6;
    line-smooth: 0.5;
    
    [zoom>=9][zoom<=11]{line-width: 1;}
    [zoom=12]{line-width: 1;}
    [zoom>=13][zoom<=15]{line-width: 2;}
    [zoom>=16]{line-width: 2.5;}
    
    line-color: #FFFFFF;
    [difficulty="novice"]{line-color: #23CD23;}
    [difficulty="easy"]{line-color: #23CD23;}
    [difficulty="intermediate"]{line-color: #1919DE;}
    [difficulty="advanced"]{line-color: #222222;}
    [difficulty="expert"]{line-color: #222222;}
    [difficulty="freeride"]{line-color: #FFE72D;}
}

#downhill_us-area-casing-backcountry{
opacity: 0.95;
    line-cap: butt;
    line-join: round;
    line-gamma: 0.6;
    line-smooth: 0.5;
    
    [zoom>=9][zoom<=11]{line-width: 1;}
    [zoom=12]{line-width: 1;}
    [zoom>=13][zoom<=15]{line-width: 2;line-dasharray: 15, 5;}
    [zoom>=16]{line-width: 2.5;line-dasharray: 20, 8;}
    
    [difficulty="novice"]{line-color: #23CD23;}
    [difficulty="easy"]{line-color: #23CD23;}
    [difficulty="intermediate"]{line-color: #1919DE;}
    [difficulty="advanced"]{line-color: #222222;}
    [difficulty="expert"]{line-color: #222222;}
    [difficulty="freeride"]{line-color: #FFE72D;}
}
#downhill_us-area-fill{
opacity: 0.95;
    
    [zoom=12]{polygon-opacity: 0.4; polygon-gamma: 1;}
    [zoom>=13][zoom<=15]{polygon-opacity: 0.2; polygon-gamma: 0.6; polygon-smooth:0.5;}
    [zoom>=16]{polygon-opacity: 0.05;polygon-gamma: 1; polygon-smooth:0.5;}
    
    [difficulty="novice"]{polygon-fill: #23CD23;}
    [difficulty="easy"]{polygon-fill: #23CD23;}
    [difficulty="intermediate"]{polygon-fill: #1919DE;}
    [difficulty="advanced"]{polygon-fill: #222222;}
    [difficulty="expert"]{polygon-fill: #222222;}
    [difficulty="freeride"]{polygon-fill: #FFE72D;}
}
#downhill_us-overlay-thin[zoom>=15]{
    line-cap: round;
    line-join: round;
    line-gamma: 0.6;
    line-smooth: 0.5;
    line-width: 0.1;
    line-color: #FFFFFF;
    
    [difficulty="novice"]{line-color: #9CE49C;}
    [difficulty="easy"]{line-color: #9CE49C;}
    [difficulty="intermediate"]{line-color: #889BF8;}
    [difficulty="advanced"]{line-color: #6A6868;}
    [difficulty="expert"]{line-color: #6A6868;}
    [difficulty="freeride"]{line-color: #FFF5A3;}
}

#downhill_us-text[zoom>=15]{
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
    [difficulty='novice']{text-fill:#23CD23; }
    [difficulty='easy']{text-fill:#23CD23; }
    [difficulty='intermediate']{text-fill:#1919DE; }
    [difficulty='advanced']{text-fill:#333333; }
    [difficulty='expert']{text-fill:#333333; }
    [difficulty='freeride']{text-fill:#9C8E1E; text-dy: 10;}
    [grooming='mogul']{text-dy: 10;}
    [gladed=true]{text-dy: 10;}
    [lit=true]{text-dy: 10;}
    
}
#downhill_us-icons[zoom>=14]{
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
    [difficulty='advanced']{
        shield-transform: scale(0.25,0.25);
        shield-file: url('pics/diamonds.svg');
        shield-spacing: 300;
    }
    [difficulty='expert']{
        shield-transform: scale(0.25,0.25);
        shield-file: url('pics/diamonds.svg');
        shield-spacing: 300;
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
