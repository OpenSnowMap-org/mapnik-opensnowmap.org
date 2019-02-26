#lit[zoom>=14]{
    shield-file: url('pics/light.png');
    shield-placement: line;
    shield-face-name:@bold-fonts;
    shield-name:'';
    shield-spacing: 150;
    shield-min-distance: 120;
}
#snowshoeing-eraser[zoom>=13]{
        comp-op: dst-out;
        line-cap: round;
        line-join: round;
        line-color: #FFFFFF;
        line-gamma: 0.6;
        [zoom>=13][zoom<=14]{line-width: 5;}
        [zoom>=15]{line-width: 7;}
}
.snowshoeing[zoom>=13]{
    opacity: 0.95;
    ::bg[zoom>=13]{
        line-cap: round;
        line-join: round;
        line-color: #FFFFFF;
        line-gamma: 1;
        [zoom>=13][zoom<=14]{
            line-width: 5;
            line-opacity: 0.3;
        }
        [zoom>=15]{
            line-width: 6;
            line-opacity: 0.6;
        }
    }
    ::line[zoom>=13]{  
        line-cap: round;
        line-join: round;
        line-color: #E88193;
        line-gamma: 0.6;
        [zoom>=9][zoom<=12]{
            line-width: 1;
        }
        [zoom>=13]{
            line-width: 1.5;
        }
    }
    ::dash[zoom>=13]{  
        line-cap: round;
        line-join: round;
        line-color: #E88193;
        line-gamma: 0.6;
        [zoom>=13][zoom<=14]{
            line-width: 6;
            line-dasharray: 1,15;
        }
        [zoom>=15]{
            line-width: 7;
            line-dasharray: 1,15;
        }
    }
    ::dash-inner[zoom>=13]{  
        line-cap: round;
        line-join: round;
        line-color: #FFFFFF;
        line-gamma: 0.6;
        [zoom>=13][zoom<=14]{
            line-width: 4;
            line-dasharray: 1,15;
        }
        [zoom>=15]{
            line-width: 5;
            line-dasharray: 1,15;
        }
    }
}
#skitour-eraser[zoom>=9]{
    comp-op: dst-out;
    line-cap: round;
    line-join: round;
    line-color: #FFFFFF;
    line-gamma: 0.6;
    
    [zoom>=9][zoom<=11]{line-width: 1.5;}
    [zoom=12]{line-width: 4.5;}
    [zoom>=13][zoom<=14]{line-width: 6.5;}
    [zoom>=15]{line-width: 8;}
}
.skitour[zoom>=9]{
    opacity: 0.95;
    ::dash{  
        line-cap: round;
        line-join: round;
        line-gamma: 0.6;
        line-color: #C42C1C;
        [us="1"] {
            [difficulty="novice"]{line-color: #23CD23;}
            [difficulty="easy"]{line-color: #23CD23;}
            [difficulty="intermediate"]{line-color: #1919DE;}
            [difficulty="advanced"]{line-color: #222222;}
            [difficulty="expert"]{line-color: #222222;}
            [difficulty="freeride"]{line-color: #FFE72D;}
        }
    
        [us="0"] {
            [difficulty="novice"]{line-color: #2AB62A;}
            [difficulty="easy"]{line-color: #1919DE;}
            [difficulty="intermediate"]{line-color: #E81F1F;}
            [difficulty="advanced"]{line-color: #222222;}
            [difficulty="expert"]{line-color: #FFBB2D;}
            [difficulty="freeride"]{line-color: #FFE72D;}
        }
    
        [zoom>=9][zoom<=11]{line-width: 1.5;line-dasharray: 1,4;}
        [zoom=12]{line-width: 4;line-dasharray: 1,9;}
        [zoom>=13][zoom<=14]{line-width: 6;line-dasharray: 1,12;}
        [zoom>=15]{line-width: 7;line-dasharray: 1,16;}
    }
    ::dash-inner{
        comp-op: dst-out;
        line-cap: round;
        line-join: round;
        line-color: #FFFFFF;
        line-gamma: 0.6;

        [zoom>=9][zoom<=11]{line-width: 0.8;line-dasharray: 1,4;}
        [zoom=12]{line-width: 2.5;line-dasharray: 1,9;}
        [zoom>=13][zoom<=14]{line-width: 4.5;line-dasharray: 1,12;}
        [zoom>=15]{line-width: 5.5;line-dasharray: 1,16;}
    }
}
#various-ways::bg{
opacity: 0.95;
    line-cap: round;
    line-join: round;
    line-color: rgba(0,0,0,0);
    line-gamma: 0.6;
    line-smooth: 0.5;
    
    [piste_type=~".*snow_park.*"][zoom>=9]{
        line-width: 2.5;
        line-color: #FFFFFF;
    }
    [piste_type=~".*playground.*"][zoom>=15]{
        line-width: 2.5;
        line-color: #FFFFFF;
    }
    [piste_type=~".*sled.*"][zoom>=15]{
        line-color: #FFFFFF;
        [zoom>=9][zoom<=11]{
        line-width: 2;
        }
        [zoom>=12]{
        line-width: 2;
        }
    }
    [piste_type=~".*skat.*"][zoom>=9]{
        line-color: #FFFFFF;
        line-width: 3;
    }
    [piste_type=~".*curling.*"][zoom>=9]{
        line-color: #FFFFFF;
        line-width: 3;
    }
    [piste_type=~".*ice_stock.*"][zoom>=9]{
        line-color: #FFFFFF;
        line-width: 3;
    }
    [piste_type=~".*hockey.*"][zoom>=9]{
        line-color: #FFFFFF;
        line-width: 3;
    }
    [piste_type=~".*jump.*"][zoom>=9]{
        line-color: #FFFFFF;
        line-width: 2.5;
    }
    [piste_type=~".*sleigh.*"][zoom>=9]{
        line-color: #FFFFFF;
        [zoom>=9][zoom<=11]{
        line-width: 1;
        }
        [zoom>=12]{
        line-width: 2;
        }
    }
}
#various-ways::line{
opacity: 0.90;
    line-cap: round;
    line-join: round;
    line-color: rgba(0,0,0,0);
    line-gamma: 0.6;
    line-smooth: 0.5;
    
    [piste_type=~".*snow_park.*"][zoom>=9]{
    line-width: 2;
    line-color: #0F6DD3;
    }
    [piste_type=~".*playground.*"][zoom>=15]{
    line-width: 2;
    line-color: #A6E05B;
    }
    [piste_type=~".*sled.*"]{
        [zoom>=9][zoom<=11]{
        line-color: #BAFF3A;
        }
        [zoom>=12]{
        line-width: 1.5;
        line-color: #BAFF3A;
        }
    }
    [piste_type=~".*skat.*"][zoom>=9]{
        line-width: 1.5;
        line-color: #6FC4D0;
    }
    [piste_type=~".*curling.*"][zoom>=9]{
        line-width: 1.5;
        line-color: #6FC4D0;
    }
    [piste_type=~".*ice_stock.*"][zoom>=9]{
        line-width: 1.5;
        line-color: #6FC4D0;
    }
    [piste_type=~".*hockey.*"][zoom>=9]{
        line-width: 1.5;
        line-color: #6FC4D0;
    }
    [piste_type=~".*ski_jump.*"][zoom>=9]{
        line-width: 1.5;
        line-color: #655ABE;
    }
    [piste_type=~".*sleigh.*"][zoom>=9]{
        [zoom>=9][zoom<=11]{
        line-width: 0.5;
        line-color: #8F54D8;
        }
        [zoom>=12]{
        line-width: 1.5;
        line-color: #8F54D8;
        }
    }
}
#various-areas{
opacity: 0.90;
    polygon-fill: rgba(0,0,0,0);
    polygon-gamma: 0.6;
    polygon-smooth: 0.5;
    line-cap: round;
    line-join: round;
    line-color: rgba(0,0,0,0);
    line-gamma: 0.6;
    line-smooth: 0.5;
    line-width: 0.5;
    
    [piste_type=~".*snow_park.*"][zoom>=13]{
        line-color: #0F6DD3;
        polygon-fill: #0074F3;
        polygon-opacity: 0.5;
    }
    [piste_type=~".*playground.*"][zoom>=13]{
        polygon-fill: #A6E05B;
        line-color: #A6E05B;
        polygon-opacity: 0.4;
    }
    [piste_type=~".*sled.*"][zoom>=13]{
        polygon-fill: #BAFF3A;
        line-color: #BAFF3A;
        polygon-opacity: 0.4;
    }
    [piste_type=~".*ski_jump_landing.*"][zoom>=13]{
        polygon-fill: #BCB7E1;
        line-color: #BCB7E1;
        polygon-opacity: 0.7;
    }
}

#various-text[zoom>=15]{
    text-name:'[name]';
    text-face-name:@book-fonts;
    text-halo-radius:1;
    text-size: 10;
    text-placement: point;
    text-avoid-edges: true;
    text-allow-overlap:false;
    text-wrap-width: 25;
    text-spacing: 10000;
    text-dy: 18;
    text-label-position-tolerance: 20;
    
    text-halo-fill:rgba(0,0,0,0);
    text-fill:rgba(0,0,0,0);
    
    [piste_type=~".*snow_park.*"][zoom>=15]{
        text-fill:#005CC0;
        text-halo-fill:#DDDDDD;
    }
    [piste_type=~".*playground.*"][zoom>=15]{
        text-fill:#6CAD1A;
        text-halo-fill:#DDDDDD;
    }
    [piste_type=~".*sled.*"][zoom>=15]{
        text-fill:#568400;
        text-halo-fill:#DDDDDD;
    }
    [piste_type=~".*jump.*"][zoom>=15]{
        text-dy: 5;
        text-label-position-tolerance: 20;
        text-fill:#655ABE;
        text-halo-fill:#DDDDDD;
    }
}

#various-icons{
    opacity: 0.90;
    text-name:'';
    text-face-name:'Ski Medium';
    text-halo-radius:4;
    text-size: 22;
    text-placement: line;
    text-avoid-edges: true;
    text-allow-overlap:false;
    text-repeat-distance: 150;
    
    [piste_type=~".*hike.*"][zoom>=13]{
        text-name:'j';
        text-halo-fill:rgba(255,255,255,0.5);
        text-fill:#E88193;
        text-size: 22;
        text-repeat-distance: 180;
        text-placement: point;
    }
    [piste_type=~".*skitour.*"][zoom>=14]{
        text-name:'f';
        text-halo-fill:rgba(255,255,255,0.5);
        text-fill:#C42C1C;
        text-size: 20;
        text-horizontal-alignment:'middle';
        text-vertical-alignment:'middle';
        text-label-position-tolerance:40;
        text-halo-radius:2;
        text-placement: point;
    }
    [piste_type=~".*downhill.*"][zoom>=14]{
        text-name:'f';
        text-halo-fill:rgba(255,255,255,0.5);
        text-fill:#C42C1C;
        text-size: 20;
        text-horizontal-alignment:'middle';
        text-vertical-alignment:'middle';
        text-label-position-tolerance:40;
        text-halo-radius:2;
    }
    [piste_type=~".*snow_park.*"][zoom>=15]{
        text-repeat-distance: 50;
        text-name:'i';
        text-halo-fill:rgba(0,116,243,0.3);
        text-fill:#000000;
        text-size: 20;
        text-horizontal-alignment:'middle';
        text-vertical-alignment:'middle';
        text-label-position-tolerance:40;
        text-placement: point;
    }
    [piste_type=~".*playground.*"][zoom>=15]{
        text-name:'c';
        text-halo-fill:rgba(166,224,91,0.3);
        text-fill:#000000;
        text-size: 20;
        text-horizontal-alignment:'middle';
        text-vertical-alignment:'middle';
        text-label-position-tolerance:40;
    }
    [piste_type=~".*sled.*"][zoom>=15]{
        text-name:'g';
        text-halo-fill:rgba(186,255,58,0.6);
        text-fill:#000000;
        text-size: 18;
        text-horizontal-alignment:'middle';
        text-vertical-alignment:'middle';
        text-label-position-tolerance:40;
        text-placement: point;
    }
    [piste_type=~".*skat.*"][zoom>=15]{
        text-name:'d';
        text-halo-fill:rgba(255,255,255,0.6);
        text-fill:#1A9CCC;
        text-size: 18;
        text-horizontal-alignment:'middle';
        text-vertical-alignment:'middle';
        text-label-position-tolerance:40;
    }
    [piste_type=~".*curling.*"][zoom>=15]{
        text-name:'l';
        text-halo-fill:rgba(255,255,255,0.6);
        text-fill:#1A9CCC;
        text-size: 16;
        text-horizontal-alignment:'middle';
        text-vertical-alignment:'middle';
        text-label-position-tolerance:40;
    }
    [piste_type=~".*ice_stock.*"][zoom>=15]{
        text-name:'m';
        text-halo-fill:rgba(255,255,255,0.6);
        text-fill:#1A9CCC;
        text-size: 16;
        text-horizontal-alignment:'middle';
        text-vertical-alignment:'middle';
        text-label-position-tolerance:40;
    }
    [piste_type=~".*hockey.*"][zoom>=15]{
        text-name:'k';
        text-halo-fill:rgba(255,255,255,0.6);
        text-fill:#1A9CCC;
        text-size: 18;
        text-horizontal-alignment:'middle';
        text-vertical-alignment:'middle';
        text-label-position-tolerance:40;
    }
    [piste_type=~".*sleigh.*"][zoom>=15]{
        text-name:'h';
        text-halo-fill:rgba(255,255,255,0.5);
        text-fill:#8F54D8;
        text-size: 20;
        text-horizontal-alignment:'middle';
        text-vertical-alignment:'middle';
        text-label-position-tolerance:40;
        text-halo-radius:2;
    }
    [piste_type=~".*jump.*"][zoom>=15]{
        text-name:'e';
        text-placement: point;
        text-halo-fill:rgba(255,255,255,0.5);
        text-fill:#000;
        text-size: 12;
        text-horizontal-alignment:'middle';
        text-vertical-alignment:'middle';
        text-label-position-tolerance:25;
        text-dx: 30;
        text-repeat-distance: 200;
    }
}


