#relation-bg{
    line-cap: round; 
    line-join: round;
    line-color: #FFFFFF;  
    line-opacity: 0.9;
    line-gamma:1;
/*
    line-offset:5;
*/
    
    [zoom=9]{line-width: 2;}
    [zoom=10]{line-width: 3}
    [zoom>=11][zoom<=12]{line-width: 3.5;}
    [zoom>=13][zoom<=14]{line-width: 5;}
    [zoom>=15]{line-width: 6;}
    }
#relation{

        line-cap: round; 
        line-join: round;
        line-color: #1D8072;
        /*[color!='']{line-color:[color];} not nice, lighten does not work*/
        line-gamma:1;
/*
        line-offset:5;
*/
        
        [zoom=9]{line-width: 0.5;}
        [zoom=10]{line-width: 1}
        [zoom>=11][zoom<=12]{line-width: 1;}
        [zoom>=13][zoom<=14]{line-width: 1.5}
        [zoom>=15]{line-width: 2;}
        
}
#relation-text{

[zoom>=15]{
    text-name:'[name]';
    text-face-name:@bold-fonts;
    text-fill:#29B29C;
    text-halo-fill:white;
    text-halo-radius:1;
    text-size: 10;
    text-dy: 7;
    text-placement: line;
    text-avoid-edges: true;
    text-allow-overlap:false;
    text-min-distance:500;
    text-spacing: 500;
    text-label-position-tolerance: 20;
    text-max-char-angle-delta: 22.5;
        
}
}
