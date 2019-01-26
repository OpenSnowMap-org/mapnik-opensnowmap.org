#aerialways[zoom>=12]{
    line-pattern-file: url('pics/chair_lift_line.png');
    
    [type='gondola']{
        line-pattern-file: url('pics/cable_car_line.png');
    }
    [type='cable_car']{
        line-pattern-file: url('pics/cable_car_line.png');
    }
}

#aerialways-text[zoom>=15]{
    text-name:'[name]';
    text-face-name:@book-fonts;
    text-halo-radius:1;
    text-size: 10;
    text-placement: line;
    text-avoid-edges: true;
    text-allow-overlap:false;
    text-dy: 5;
    
    text-halo-fill:#FFFFFF;
    text-fill:#000000;
}
#aerialways-icons[zoom>=14]{
/*
NOTE: geometry  are reversed so that the icons are in the good orientation
depending the orientation of the first and last point of the aerialway
*/
    marker-placement: 'line';
    marker-spacing: 350;
    /* default marker size if no filter matches: */
    marker-width: 0;
    marker-height: 0;
    
    [type='funicular']{
        marker-file: url('pics/funicular.svg');
        marker-transform:'translate(-10 -10) scale(0.12)';
    }
    [type='incline']{
        marker-file: url('pics/funicular.svg');
        marker-transform:'translate(-10 -10) scale(0.12)';
    }
    [type='cable_car']{
        marker-file: url('pics/cable_car.svg');
        marker-transform:'translate(10 10) scale(0.12)';
    }
    [type='gondola']{
        marker-file: url('pics/gondola.svg');
        marker-transform:'translate(10 10) scale(0.12)';
    }
    [type='chair_lift']{
        marker-file: url('pics/chair_lift.svg');
        marker-transform:'translate(10 10) scale(0.12)';
    }
    [type='mixed_lift']{
        marker-file: url('pics/mixed_lift.svg');
        marker-transform:'translate(10 10) scale(0.12)';
    }
    [type='magic_carpet']{
        marker-file: url('pics/magic_carpet.svg');
        marker-transform:'translate(10 10) scale(0.12)';
    }
    [type='drag_lift']{
        marker-file: url('pics/drag_lift.svg');
        marker-transform:'translate(10 10) scale(0.12)';
    }
    [type='t-bar']{
        marker-file: url('pics/drag_lift.svg');
        marker-transform:'translate(10 10) scale(0.12)';
    }
    [type='j-bar']{
        marker-file: url('pics/drag_lift.svg');
        marker-transform:'translate(10 10) scale(0.12)';
    }
    [type='platter']{
        marker-file: url('pics/drag_lift.svg');
        marker-transform:'translate(10 10) scale(0.12)';
    }
    [type='rope-tow']{
        marker-file: url('pics/drag_lift.svg');
        marker-transform:'translate(10 10) scale(0.12)';
    }
}
