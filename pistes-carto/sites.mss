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

    ::name[zoom>=10][zoom<=12]{
        text-name:"'        '";
        text-face-name:@book-fonts;
        text-halo-radius:1.5;
        text-size: 11;
        text-placement: point;
        text-avoid-edges: true;
        text-allow-overlap:false;
        text-spacing: 1000;
        text-horizontal-alignment: 'middle';
        text-vertical-alignment: 'middle';
        
        text-halo-fill:rgba(255,255,255,0.6);
        text-fill:#003074;
        [zoom>=11][zoom<=12]{text-name:'[name]';}
    }

        


    ::downhill[zoom=10]{
        text-name:'';
        text-face-name:'Ski Medium';
        text-halo-radius:2;
        text-size: 12;
        text-opacity: 0.8;
        text-placement: point;
        text-avoid-edges: true;
        text-allow-overlap:false;
        text-spacing: 1000;
        text-horizontal-alignment: 'middle';
        text-vertical-alignment: 'middle';
        
        text-halo-fill:rgba(255,255,255,0.6);
        text-fill:#003074;
        
        [downhill=true]{
            text-placement-type:'list';
            text-name:"'A'        <Placement dy='14' dx='-18'></Placement>        <Placement dy='14' dx='0'></Placement>        <Placement dy='14' dx='18'></Placement>        <Placement dy='14' dx='-36'></Placement>        <Placement dy='14' dx='36'></Placement>        <Placement dy='32' dx='-18'></Placement>        <Placement dy='32' dx='0'></Placement>        <Placement dy='32' dx='18'></Placement>        <Placement dy='32' dx='-36'></Placement>";
        }
        [downhill=false]{
            text-placement-type:'list';
            text-name:"' '         <Placement dy='32' dx='-36'></Placement>        <Placement dy='32' dx='18'></Placement>        <Placement dy='32' dx='0'></Placement>        <Placement dy='32' dx='-18'></Placement>        <Placement dy='14' dx='36'></Placement>        <Placement dy='14' dx='-36'></Placement>        <Placement dy='14' dx='18'></Placement>        <Placement dy='14' dx='0'></Placement>        <Placement dy='14' dx='-18'></Placement>";
        }
    }
    
    ::nordic[zoom=10]{
        text-name:'';
        text-face-name:'Ski Medium';
        text-halo-radius:2;
        text-size: 12;
        text-opacity: 0.8;
        text-placement: point;
        text-avoid-edges: true;
        text-allow-overlap:false;
        text-spacing: 1000;
        text-horizontal-alignment: 'middle';
        text-vertical-alignment: 'middle';
        
        text-halo-fill:rgba(255,255,255,0.6);
        text-fill:#003074;
        
        [nordic=true]{
            text-placement-type:'list';
            text-name:"'B'        <Placement dy='14' dx='-18'></Placement>        <Placement dy='14' dx='0'></Placement>        <Placement dy='14' dx='18'></Placement>        <Placement dy='14' dx='-36'></Placement>        <Placement dy='14' dx='36'></Placement>        <Placement dy='32' dx='-18'></Placement>        <Placement dy='32' dx='0'></Placement>        <Placement dy='32' dx='18'></Placement>        <Placement dy='32' dx='-36'></Placement>";
        }
        [nordic=false]{
            text-placement-type:'list';
            text-name:"' '         <Placement dy='32' dx='-36'></Placement>        <Placement dy='32' dx='18'></Placement>        <Placement dy='32' dx='0'></Placement>        <Placement dy='32' dx='-18'></Placement>        <Placement dy='14' dx='36'></Placement>        <Placement dy='14' dx='-36'></Placement>        <Placement dy='14' dx='18'></Placement>        <Placement dy='14' dx='0'></Placement>        <Placement dy='14' dx='-18'></Placement>";
        }
    }
    
    ::sled[zoom=10]{
        text-name:'';
        text-face-name:'Ski Medium';
        text-halo-radius:2;
        text-size: 12;
        text-opacity: 0.8;
        text-placement: point;
        text-avoid-edges: true;
        text-allow-overlap:false;
        text-spacing: 1000;
        text-horizontal-alignment: 'middle';
        text-vertical-alignment: 'middle';
        
        text-halo-fill:rgba(255,255,255,0.6);
        text-fill:#003074;
        
        [sled=true]{
            text-placement-type:'list';
            text-name:"'G'        <Placement dy='14' dx='-18'></Placement>        <Placement dy='14' dx='0'></Placement>        <Placement dy='14' dx='18'></Placement>        <Placement dy='14' dx='-36'></Placement>        <Placement dy='14' dx='36'></Placement>        <Placement dy='32' dx='-18'></Placement>        <Placement dy='32' dx='0'></Placement>        <Placement dy='32' dx='18'></Placement>        <Placement dy='32' dx='-36'></Placement>";
        }
        [sled=false]{
            text-placement-type:'list';
            text-name:"' '         <Placement dy='32' dx='-36'></Placement>        <Placement dy='32' dx='18'></Placement>        <Placement dy='32' dx='0'></Placement>        <Placement dy='32' dx='-18'></Placement>        <Placement dy='14' dx='36'></Placement>        <Placement dy='14' dx='-36'></Placement>        <Placement dy='14' dx='18'></Placement>        <Placement dy='14' dx='0'></Placement>        <Placement dy='14' dx='-18'></Placement>";
        }
    }
    
    ::hike[zoom=10]{
        text-name:'';
        text-face-name:'Ski Medium';
        text-halo-radius:2;
        text-size: 12;
        text-opacity: 0.8;
        text-placement: point;
        text-avoid-edges: true;
        text-allow-overlap:false;
        text-spacing: 1000;
        text-horizontal-alignment: 'middle';
        text-vertical-alignment: 'middle';
        
        text-halo-fill:rgba(255,255,255,0.6);
        text-fill:#003074;
        
        [hike=true]{
            text-placement-type:'list';
            text-name:"'J'        <Placement dy='14' dx='-18'></Placement>        <Placement dy='14' dx='0'></Placement>        <Placement dy='14' dx='18'></Placement>        <Placement dy='14' dx='-36'></Placement>        <Placement dy='14' dx='36'></Placement>        <Placement dy='32' dx='-18'></Placement>        <Placement dy='32' dx='0'></Placement>        <Placement dy='32' dx='18'></Placement>        <Placement dy='32' dx='-36'></Placement>";
        }
        [hike=false]{
            text-placement-type:'list';
            text-name:"' '         <Placement dy='32' dx='-36'></Placement>        <Placement dy='32' dx='18'></Placement>        <Placement dy='32' dx='0'></Placement>        <Placement dy='32' dx='-18'></Placement>        <Placement dy='14' dx='36'></Placement>        <Placement dy='14' dx='-36'></Placement>        <Placement dy='14' dx='18'></Placement>        <Placement dy='14' dx='0'></Placement>        <Placement dy='14' dx='-18'></Placement>";
        }
    }
    
    ::snowpark[zoom=10]{
        text-name:'';
        text-face-name:'Ski Medium';
        text-halo-radius:2;
        text-size: 12;
        text-opacity: 0.8;
        text-placement: point;
        text-avoid-edges: true;
        text-allow-overlap:false;
        text-spacing: 1000;
        text-horizontal-alignment: 'middle';
        text-vertical-alignment: 'middle';
        
        text-halo-fill:rgba(255,255,255,0.6);
        text-fill:#003074;
        
        [snowpark=true]{
            text-placement-type:'list';
            text-name:"'I'        <Placement dy='14' dx='-18'></Placement>        <Placement dy='14' dx='0'></Placement>        <Placement dy='14' dx='18'></Placement>        <Placement dy='14' dx='-36'></Placement>        <Placement dy='14' dx='36'></Placement>        <Placement dy='32' dx='-18'></Placement>        <Placement dy='32' dx='0'></Placement>        <Placement dy='32' dx='18'></Placement>        <Placement dy='32' dx='-36'></Placement>";
        }
        [snowpark=false]{
            text-placement-type:'list';
            text-name:"' '         <Placement dy='32' dx='-36'></Placement>        <Placement dy='32' dx='18'></Placement>        <Placement dy='32' dx='0'></Placement>        <Placement dy='32' dx='-18'></Placement>        <Placement dy='14' dx='36'></Placement>        <Placement dy='14' dx='-36'></Placement>        <Placement dy='14' dx='18'></Placement>        <Placement dy='14' dx='0'></Placement>        <Placement dy='14' dx='-18'></Placement>";
        }
    }
    
    ::jump[zoom=10]{
        text-name:'';
        text-face-name:'Ski Medium';
        text-halo-radius:2;
        text-size: 12;
        text-opacity: 0.8;
        text-placement: point;
        text-avoid-edges: true;
        text-allow-overlap:false;
        text-spacing: 1000;
        text-horizontal-alignment: 'middle';
        text-vertical-alignment: 'middle';
        
        text-halo-fill:rgba(255,255,255,0.6);
        text-fill:#003074;
        
        [jump=true]{
            text-placement-type:'list';
            text-name:"'E'        <Placement dy='14' dx='-18'></Placement>        <Placement dy='14' dx='0'></Placement>        <Placement dy='14' dx='18'></Placement>        <Placement dy='14' dx='-36'></Placement>        <Placement dy='14' dx='36'></Placement>        <Placement dy='32' dx='-18'></Placement>        <Placement dy='32' dx='0'></Placement>        <Placement dy='32' dx='18'></Placement>        <Placement dy='32' dx='-36'></Placement>";
        }
        [jump=false]{
            text-placement-type:'list';
            text-name:"' '         <Placement dy='32' dx='-36'></Placement>        <Placement dy='32' dx='18'></Placement>        <Placement dy='32' dx='0'></Placement>        <Placement dy='32' dx='-18'></Placement>        <Placement dy='14' dx='36'></Placement>        <Placement dy='14' dx='-36'></Placement>        <Placement dy='14' dx='18'></Placement>        <Placement dy='14' dx='0'></Placement>        <Placement dy='14' dx='-18'></Placement>";
        }
    }
    
    ::playground[zoom=10]{
        text-name:'';
        text-face-name:'Ski Medium';
        text-halo-radius:2;
        text-size: 12;
        text-opacity: 0.8;
        text-placement: point;
        text-avoid-edges: true;
        text-allow-overlap:false;
        text-spacing: 1000;
        text-horizontal-alignment: 'middle';
        text-vertical-alignment: 'middle';
        
        text-halo-fill:rgba(255,255,255,0.6);
        text-fill:#003074;
        
        [playground=true]{
            text-placement-type:'list';
            text-name:"'C'        <Placement dy='14' dx='-18'></Placement>        <Placement dy='14' dx='0'></Placement>        <Placement dy='14' dx='18'></Placement>        <Placement dy='14' dx='-36'></Placement>        <Placement dy='14' dx='36'></Placement>        <Placement dy='32' dx='-18'></Placement>        <Placement dy='32' dx='0'></Placement>        <Placement dy='32' dx='18'></Placement>        <Placement dy='32' dx='-36'></Placement>";
        }
        [playground=false]{
            text-placement-type:'list';
            text-name:"' '         <Placement dy='32' dx='-36'></Placement>        <Placement dy='32' dx='18'></Placement>        <Placement dy='32' dx='0'></Placement>        <Placement dy='32' dx='-18'></Placement>        <Placement dy='14' dx='36'></Placement>        <Placement dy='14' dx='-36'></Placement>        <Placement dy='14' dx='18'></Placement>        <Placement dy='14' dx='0'></Placement>        <Placement dy='14' dx='-18'></Placement>";
        }
    }
    
    ::skitour[zoom=10]{
        text-name:'';
        text-face-name:'Ski Medium';
        text-halo-radius:2;
        text-size: 12;
        text-opacity: 0.8;
        text-placement: point;
        text-avoid-edges: true;
        text-allow-overlap:false;
        text-spacing: 1000;
        text-horizontal-alignment: 'middle';
        text-vertical-alignment: 'middle';
        
        text-halo-fill:rgba(255,255,255,0.6);
        text-fill:#003074;
        
        [skitour=true]{
            text-placement-type:'list';
            text-name:"'F'        <Placement dy='14' dx='-18'></Placement>        <Placement dy='14' dx='0'></Placement>        <Placement dy='14' dx='18'></Placement>        <Placement dy='14' dx='-36'></Placement>        <Placement dy='14' dx='36'></Placement>        <Placement dy='32' dx='-18'></Placement>        <Placement dy='32' dx='0'></Placement>        <Placement dy='32' dx='18'></Placement>        <Placement dy='32' dx='-36'></Placement>";
        }
        [skitour=false]{
            text-placement-type:'list';
            text-name:"' '         <Placement dy='32' dx='-36'></Placement>        <Placement dy='32' dx='18'></Placement>        <Placement dy='32' dx='0'></Placement>        <Placement dy='32' dx='-18'></Placement>        <Placement dy='14' dx='36'></Placement>        <Placement dy='14' dx='-36'></Placement>        <Placement dy='14' dx='18'></Placement>        <Placement dy='14' dx='0'></Placement>        <Placement dy='14' dx='-18'></Placement>";
        }
    }
    
    ::skat[zoom=10]{
        text-name:'';
        text-face-name:'Ski Medium';
        text-halo-radius:2;
        text-size: 12;
        text-opacity: 0.8;
        text-placement: point;
        text-avoid-edges: true;
        text-allow-overlap:false;
        text-spacing: 1000;
        text-horizontal-alignment: 'middle';
        text-vertical-alignment: 'middle';
        
        text-halo-fill:rgba(255,255,255,0.6);
        text-fill:#003074;
        
        [skat=true]{
            text-placement-type:'list';
            text-name:"'D'        <Placement dy='14' dx='-18'></Placement>        <Placement dy='14' dx='0'></Placement>        <Placement dy='14' dx='18'></Placement>        <Placement dy='14' dx='-36'></Placement>        <Placement dy='14' dx='36'></Placement>        <Placement dy='32' dx='-18'></Placement>        <Placement dy='32' dx='0'></Placement>        <Placement dy='32' dx='18'></Placement>        <Placement dy='32' dx='-36'></Placement>";
        }
        [skat=false]{
            text-placement-type:'list';
            text-name:"' '         <Placement dy='32' dx='-36'></Placement>        <Placement dy='32' dx='18'></Placement>        <Placement dy='32' dx='0'></Placement>        <Placement dy='32' dx='-18'></Placement>        <Placement dy='14' dx='36'></Placement>        <Placement dy='14' dx='-36'></Placement>        <Placement dy='14' dx='18'></Placement>        <Placement dy='14' dx='0'></Placement>        <Placement dy='14' dx='-18'></Placement>";
        }
    }
    
    ::sleigh[zoom=10]{
        text-name:'';
        text-face-name:'Ski Medium';
        text-halo-radius:2;
        text-size: 12;
        text-opacity: 0.8;
        text-placement: point;
        text-avoid-edges: true;
        text-allow-overlap:false;
        text-spacing: 1000;
        text-horizontal-alignment: 'middle';
        text-vertical-alignment: 'middle';
        
        text-halo-fill:rgba(255,255,255,0.6);
        text-fill:#003074;
        
        [sleigh=true]{
            text-placement-type:'list';
            text-name:"'H'        <Placement dy='14' dx='-18'></Placement>        <Placement dy='14' dx='0'></Placement>        <Placement dy='14' dx='18'></Placement>        <Placement dy='14' dx='-36'></Placement>        <Placement dy='14' dx='36'></Placement>        <Placement dy='32' dx='-18'></Placement>        <Placement dy='32' dx='0'></Placement>        <Placement dy='32' dx='18'></Placement>        <Placement dy='32' dx='-36'></Placement>";
        }
        [sleigh=false]{
            text-placement-type:'list';
            text-name:"' '         <Placement dy='32' dx='-36'></Placement>        <Placement dy='32' dx='18'></Placement>        <Placement dy='32' dx='0'></Placement>        <Placement dy='32' dx='-18'></Placement>        <Placement dy='14' dx='36'></Placement>        <Placement dy='14' dx='-36'></Placement>        <Placement dy='14' dx='18'></Placement>        <Placement dy='14' dx='0'></Placement>        <Placement dy='14' dx='-18'></Placement>";
        }
    }








    ::downhill[zoom>=11][zoom<=12]{
        text-name:'';
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
        
        text-halo-fill:rgba(255,255,255,0.6);
        text-fill:#003074;
        
        [downhill=true]{
            text-placement-type:'list';
            text-name:"'A'        <Placement dy='16' dx='-20'></Placement>        <Placement dy='16' dx='0'></Placement>        <Placement dy='16' dx='20'></Placement>        <Placement dy='16' dx='-40'></Placement>        <Placement dy='16' dx='40'></Placement>        <Placement dy='38' dx='-20'></Placement>        <Placement dy='38' dx='0'></Placement>        <Placement dy='38' dx='20'></Placement>        <Placement dy='38' dx='-40'></Placement>            ";
        }
        [downhill=false]{
            text-placement-type:'list';
            text-name:"' '        <Placement dy='38' dx='-40'></Placement>        <Placement dy='38' dx='20'></Placement>        <Placement dy='38' dx='0'></Placement>        <Placement dy='38' dx='-20'></Placement>        <Placement dy='16' dx='40'></Placement>        <Placement dy='16' dx='-40'></Placement>        <Placement dy='16' dx='20'></Placement>        <Placement dy='16' dx='0'></Placement>        <Placement dy='16' dx='-20'></Placement>";
        }
    }
    
    ::nordic[zoom>=11][zoom<=12]{
        text-name:'';
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
        
        text-halo-fill:rgba(255,255,255,0.6);
        text-fill:#003074;
        
        [nordic=true]{
            text-placement-type:'list';
            text-name:"'B'        <Placement dy='16' dx='-20'></Placement>        <Placement dy='16' dx='0'></Placement>        <Placement dy='16' dx='20'></Placement>        <Placement dy='16' dx='-40'></Placement>        <Placement dy='16' dx='40'></Placement>        <Placement dy='38' dx='-20'></Placement>        <Placement dy='38' dx='0'></Placement>        <Placement dy='38' dx='20'></Placement>        <Placement dy='38' dx='-40'></Placement>";
        }
        [nordic=false]{
            text-placement-type:'list';
            text-name:"' '        <Placement dy='38' dx='-40'></Placement>        <Placement dy='38' dx='20'></Placement>        <Placement dy='38' dx='0'></Placement>        <Placement dy='38' dx='-20'></Placement>        <Placement dy='16' dx='40'></Placement>        <Placement dy='16' dx='-40'></Placement>        <Placement dy='16' dx='20'></Placement>        <Placement dy='16' dx='0'></Placement>        <Placement dy='16' dx='-20'></Placement>";
        }
    }
    
    ::sled[zoom>=11][zoom<=12]{
        text-name:'';
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
        
        text-halo-fill:rgba(255,255,255,0.6);
        text-fill:#003074;
        
        [sled=true]{
            text-placement-type:'list';
            text-name:"'G'        <Placement dy='16' dx='-20'></Placement>        <Placement dy='16' dx='0'></Placement>        <Placement dy='16' dx='20'></Placement>        <Placement dy='16' dx='-40'></Placement>        <Placement dy='16' dx='40'></Placement>        <Placement dy='38' dx='-20'></Placement>        <Placement dy='38' dx='0'></Placement>        <Placement dy='38' dx='20'></Placement>        <Placement dy='38' dx='-40'></Placement>";
        }
        [sled=false]{
            text-placement-type:'list';
            text-name:"' '        <Placement dy='38' dx='-40'></Placement>        <Placement dy='38' dx='20'></Placement>        <Placement dy='38' dx='0'></Placement>        <Placement dy='38' dx='-20'></Placement>        <Placement dy='16' dx='40'></Placement>        <Placement dy='16' dx='-40'></Placement>        <Placement dy='16' dx='20'></Placement>        <Placement dy='16' dx='0'></Placement>        <Placement dy='16' dx='-20'></Placement>";
        }
    }
    
    ::hike[zoom>=11][zoom<=12]{
        text-name:'';
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
        
        text-halo-fill:rgba(255,255,255,0.6);
        text-fill:#003074;
        
        [hike=true]{
            text-placement-type:'list';
            text-name:"'J'        <Placement dy='16' dx='-20'></Placement>        <Placement dy='16' dx='0'></Placement>        <Placement dy='16' dx='20'></Placement>        <Placement dy='16' dx='-40'></Placement>        <Placement dy='16' dx='40'></Placement>        <Placement dy='38' dx='-20'></Placement>        <Placement dy='38' dx='0'></Placement>        <Placement dy='38' dx='20'></Placement>        <Placement dy='38' dx='-40'></Placement>";
        }
        [hike=false]{
            text-placement-type:'list';
            text-name:"' '        <Placement dy='38' dx='-40'></Placement>        <Placement dy='38' dx='20'></Placement>        <Placement dy='38' dx='0'></Placement>        <Placement dy='38' dx='-20'></Placement>        <Placement dy='16' dx='40'></Placement>        <Placement dy='16' dx='-40'></Placement>        <Placement dy='16' dx='20'></Placement>        <Placement dy='16' dx='0'></Placement>        <Placement dy='16' dx='-20'></Placement>";
        }
    }
    
    ::snowpark[zoom>=11][zoom<=12]{
        text-name:'';
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
        
        text-halo-fill:rgba(255,255,255,0.6);
        text-fill:#003074;
        
        [snowpark=true]{
            text-placement-type:'list';
            text-name:"'I'        <Placement dy='16' dx='-20'></Placement>        <Placement dy='16' dx='0'></Placement>        <Placement dy='16' dx='20'></Placement>        <Placement dy='16' dx='-40'></Placement>        <Placement dy='16' dx='40'></Placement>        <Placement dy='38' dx='-20'></Placement>        <Placement dy='38' dx='0'></Placement>        <Placement dy='38' dx='20'></Placement>        <Placement dy='38' dx='-40'></Placement>";
        }
        [snowpark=false]{
            text-placement-type:'list';
            text-name:"' '        <Placement dy='38' dx='-40'></Placement>        <Placement dy='38' dx='20'></Placement>        <Placement dy='38' dx='0'></Placement>        <Placement dy='38' dx='-20'></Placement>        <Placement dy='16' dx='40'></Placement>        <Placement dy='16' dx='-40'></Placement>        <Placement dy='16' dx='20'></Placement>        <Placement dy='16' dx='0'></Placement>        <Placement dy='16' dx='-20'></Placement>";
        }
    }
    
    ::jump[zoom>=11][zoom<=12]{
        text-name:'';
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
        
        text-halo-fill:rgba(255,255,255,0.6);
        text-fill:#003074;
        
        [jump=true]{
            text-placement-type:'list';
            text-name:"'E'        <Placement dy='16' dx='-20'></Placement>        <Placement dy='16' dx='0'></Placement>        <Placement dy='16' dx='20'></Placement>        <Placement dy='16' dx='-40'></Placement>        <Placement dy='16' dx='40'></Placement>        <Placement dy='38' dx='-20'></Placement>        <Placement dy='38' dx='0'></Placement>        <Placement dy='38' dx='20'></Placement>        <Placement dy='38' dx='-40'></Placement>";
        }
        [jump=false]{
            text-placement-type:'list';
            text-name:"' '        <Placement dy='38' dx='-40'></Placement>        <Placement dy='38' dx='20'></Placement>        <Placement dy='38' dx='0'></Placement>        <Placement dy='38' dx='-20'></Placement>        <Placement dy='16' dx='40'></Placement>        <Placement dy='16' dx='-40'></Placement>        <Placement dy='16' dx='20'></Placement>        <Placement dy='16' dx='0'></Placement>        <Placement dy='16' dx='-20'></Placement>";
        }
    }
    
    ::playground[zoom>=11][zoom<=12]{
        text-name:'';
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
        
        text-halo-fill:rgba(255,255,255,0.6);
        text-fill:#003074;
        
        [playground=true]{
            text-placement-type:'list';
            text-name:"'C'        <Placement dy='16' dx='-20'></Placement>        <Placement dy='16' dx='0'></Placement>        <Placement dy='16' dx='20'></Placement>        <Placement dy='16' dx='-40'></Placement>        <Placement dy='16' dx='40'></Placement>        <Placement dy='38' dx='-20'></Placement>        <Placement dy='38' dx='0'></Placement>        <Placement dy='38' dx='20'></Placement>        <Placement dy='38' dx='-40'></Placement>";
        }
        [playground=false]{
            text-placement-type:'list';
            text-name:"' '        <Placement dy='38' dx='-40'></Placement>        <Placement dy='38' dx='20'></Placement>        <Placement dy='38' dx='0'></Placement>        <Placement dy='38' dx='-20'></Placement>        <Placement dy='16' dx='40'></Placement>        <Placement dy='16' dx='-40'></Placement>        <Placement dy='16' dx='20'></Placement>        <Placement dy='16' dx='0'></Placement>        <Placement dy='16' dx='-20'></Placement>";
        }
    }
    
    ::skitour[zoom>=11][zoom<=12]{
        text-name:'';
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
        
        text-halo-fill:rgba(255,255,255,0.6);
        text-fill:#003074;
        
        [skitour=true]{
            text-placement-type:'list';
            text-name:"'F'        <Placement dy='16' dx='-20'></Placement>        <Placement dy='16' dx='0'></Placement>        <Placement dy='16' dx='20'></Placement>        <Placement dy='16' dx='-40'></Placement>        <Placement dy='16' dx='40'></Placement>        <Placement dy='38' dx='-20'></Placement>        <Placement dy='38' dx='0'></Placement>        <Placement dy='38' dx='20'></Placement>        <Placement dy='38' dx='-40'></Placement>";
        }
        [skitour=false]{
            text-placement-type:'list';
            text-name:"' '        <Placement dy='38' dx='-40'></Placement>        <Placement dy='38' dx='20'></Placement>        <Placement dy='38' dx='0'></Placement>        <Placement dy='38' dx='-20'></Placement>        <Placement dy='16' dx='40'></Placement>        <Placement dy='16' dx='-40'></Placement>        <Placement dy='16' dx='20'></Placement>        <Placement dy='16' dx='0'></Placement>        <Placement dy='16' dx='-20'></Placement>";
        }
    }
    
    ::skat[zoom>=11][zoom<=12]{
        text-name:'';
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
        
        text-halo-fill:rgba(255,255,255,0.6);
        text-fill:#003074;
        
        [skat=true]{
            text-placement-type:'list';
            text-name:"'D'        <Placement dy='16' dx='-20'></Placement>        <Placement dy='16' dx='0'></Placement>        <Placement dy='16' dx='20'></Placement>        <Placement dy='16' dx='-40'></Placement>        <Placement dy='16' dx='40'></Placement>        <Placement dy='38' dx='-20'></Placement>        <Placement dy='38' dx='0'></Placement>        <Placement dy='38' dx='20'></Placement>        <Placement dy='38' dx='-40'></Placement>";
        }
        [skat=false]{
            text-placement-type:'list';
            text-name:"' '        <Placement dy='38' dx='-40'></Placement>        <Placement dy='38' dx='20'></Placement>        <Placement dy='38' dx='0'></Placement>        <Placement dy='38' dx='-20'></Placement>        <Placement dy='16' dx='40'></Placement>        <Placement dy='16' dx='-40'></Placement>        <Placement dy='16' dx='20'></Placement>        <Placement dy='16' dx='0'></Placement>        <Placement dy='16' dx='-20'></Placement>";
        }
    }
    
    ::sleigh[zoom>=11][zoom<=12]{
        text-name:'';
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
        
        text-halo-fill:rgba(255,255,255,0.6);
        text-fill:#003074;
        
        [sleigh=true]{
            text-placement-type:'list';
            text-name:"'H'        <Placement dy='16' dx='-20'></Placement>        <Placement dy='16' dx='0'></Placement>        <Placement dy='16' dx='20'></Placement>        <Placement dy='16' dx='-40'></Placement>        <Placement dy='16' dx='40'></Placement>        <Placement dy='38' dx='-20'></Placement>        <Placement dy='38' dx='0'></Placement>        <Placement dy='38' dx='20'></Placement>        <Placement dy='38' dx='-40'></Placement>";
        }
        [sleigh=false]{
            text-placement-type:'list';
            text-name:"' '        <Placement dy='38' dx='-40'></Placement>        <Placement dy='38' dx='20'></Placement>        <Placement dy='38' dx='0'></Placement>        <Placement dy='38' dx='-20'></Placement>        <Placement dy='16' dx='40'></Placement>        <Placement dy='16' dx='-40'></Placement>        <Placement dy='16' dx='20'></Placement>        <Placement dy='16' dx='0'></Placement>        <Placement dy='16' dx='-20'></Placement>";
        }
    }
}
