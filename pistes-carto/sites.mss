#sites{
/*
    ::boundary{
        line-cap: round;
        line-join: round;
        line-color: #70005E;
        line-gamma: 0.6;
        line-smooth: 0.5;
        line-width: 8;
        line-opacity: 0.5;
    }
*/
    ::label[zoom>=10][zoom<=12]{
        text-name:"'        '";
        text-face-name:@book-fonts;
        text-halo-radius:2.5;
        text-size: 11;
        text-placement: point;
        text-avoid-edges: true; 
        text-allow-overlap:false;
        text-horizontal-alignment: 'middle';
        text-vertical-alignment: 'top';
        text-align: center;
        text-wrap-width: 60;
        text-min-distance: 10;
        text-min-padding: 2;
        
        text-halo-fill:rgba(255,255,255,0.6);
        text-fill:#003074;
        [zoom=10]{text-wrap-width: 40;}
        [zoom>=10][zoom<=12]{text-name:'[name]';}
    }
    
    ::pics[zoom>=11][zoom<=12]{
        
        text-name:'[pic_label]';
        text-face-name:'Ski Medium';
        text-halo-radius:4;
        text-size: 16;
        text-opacity: 0.7;
        text-placement: point;
        text-avoid-edges: true; 
        text-allow-overlap:false;
        text-spacing: 1000;
        text-horizontal-alignment: 'middle';
        text-vertical-alignment: 'middle';
        text-min-padding: 10;
        text-wrap-width: 30;
        text-character-spacing: 3;
        text-vertical-alignment: 'bottom';
        text-dy: 12;
        
        text-halo-fill:rgba(255,255,255,0.6);
        text-fill:#003074;
    }      
/*
    }
    ::point[zoom>=10][zoom<=12]{
        marker-fill: red;
        marker-allow-overlap: true;
    }
*/
}
