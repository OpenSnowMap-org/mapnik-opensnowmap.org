/* ****************************************************************** */
/* OSM BRIGHT for Imposm                                              */
/* ****************************************************************** */

/* For basic style customization you can simply edit the colors and
 * fonts defined in this file. For more detailed / advanced
 * adjustments explore the other files.
 *
 * GENERAL NOTES
 *
 * There is a slight performance cost in rendering line-caps.  An
 * effort has been made to restrict line-cap definitions to styles
 * where the results will be visible (lines at least 2 pixels thick).
 */

/* ================================================================== */
/* FONTS
/* ================================================================== */

/* directory to load fonts from in addition to the system directories */
Map { font-directory: url(./fonts); }

/* set up font sets for various weights and styles */
@sans_lt:           "Open Sans Regular","DejaVu Sans Condensed","unifont Medium";
@sans_lt_italic:    "Open Sans Italic","DejaVu Sans Condensed Oblique","unifont Medium"; /*"DejaVu Sans Italic",*/
@sans:              "Open Sans Semibold","DejaVu Sans Book","unifont Medium";
@sans_italic:       "Open Sans Semibold Italic","DejaVu Sans Oblique","unifont Medium";
@sans_bold:         "Open Sans Bold","DejaVu Sans Bold","unifont Medium";
@sans_bold_italic:  "Open Sans Bold Italic","DejaVu Sans Bold Oblique","unifont Medium";/*"DejaVu Sans Bold Italic",*/

/* Some fonts are larger or smaller than others. Use this variable to
   globally increase or decrease the font sizes. */
/* Note this is only implemented for certain things so far */
@text_adjust: 0;

/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */

@land:              #FCFAF5;
@land_int:          #F0EEE9;
@land_low:          #E6E4DF;
@land_grey:         #FAFAFA;
@ocean:             #A6B8D5;
@water2:             #b0c4dd;
@water1:             #b8cee4;
@water:             #A8C7E6;/*#C2DAED #BCDCF6;#99D0FF;*/
@hillshade_low:     #6c9cac;
@grass:             @land;
@beach:             @land;
@park:              @land;
@cemetery:          darken(@land_grey,25%);
@wooded_low:        #C9DAE1; /* #bad4da  mix from wooded and ovelray png*/
@wooded:            #D6E3E3;/*##C1DBDC  #ACDCDD;DCE6F3;#CDD7E7;*/
@agriculture:       @land;
@red:               #FF0000;
@glacier:           #E0FFFE;

@building:          #999999;
@building_outline:  #AAA;
@hospital:          darken(@land_grey,10%);
@school:            darken(@land_grey,10%);
@sports:            darken(@land_grey,10%);

@residential:       darken(@land_grey,4%);
@commercial:        darken(@land_grey,6%);
@industrial:        darken(@land_grey,7%);
@parking:           #F5F2D5;
@parking_line:      #64A6D4;

/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

/* For each class of road there are three color variables:
 * - line: for lower zoomlevels when the road is represented by a
 *         single solid line.
 * - case: for higher zoomlevels, this color is for the road's
 *         casing (outline).
 * - fill: for higher zoomlevels, this color is for the road's
 *         inner fill (inline).
 */

@motorway_line:     #F3B8B8;
@motorway_fill:     lighten(@motorway_line,1%);
@motorway_case:     darken(@motorway_line,10%);

@trunk_line:        #FAC3A7;
@trunk_fill:        lighten(@trunk_line,1%);
@trunk_case:        darken(@trunk_line,10%);

@primary_line:      #E6BB63;
@primary_fill:      lighten(@primary_line,10%);
@primary_case:      #E6B063;

@secondary_line:    #D9CB84;
@secondary_fill:    lighten(@secondary_line,10%);
@secondary_case:    #E6CD8C;

/*
@standard_line:     @land_grey * 0.85;
@standard_fill:     @land_grey * 0.85;
@standard_case:     @land_grey * 0.5;
*/
@standard_line:     darken(@land_grey,20%);
@standard_fill:     darken(@land_grey,25%);
@standard_case:     darken(@land_grey,40%);

@pedestrian_line:   @standard_line;
@pedestrian_fill:   #FAFAF5;
@pedestrian_case:   @land;

@cycle_line:        @standard_line;
@cycle_fill:        #FAFAF5;
@cycle_case:        @land;

@rail_line:         #666;

@aeroway:           #ddd;

/* ================================================================== */
/* BOUNDARY COLORS
/* ================================================================== */

@admin_2:           #324;

/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

/* We set up a default halo color for places so you can edit them all
   at once or override each individually. */
@place_halo:        fadeout(#fff,34%);
@lite_halo:        fadeout(#fff,60%);

@country_text:      #435;
@country_halo:      @place_halo;

@state_text:        #546;
@state_halo:        @place_halo;

@city_text:         #333;
@city_halo:         @place_halo;

@town_text:         #444;
@town_halo:         @place_halo;

@poi_text:          #777;

@road_text:         #555;
/*@road_halo:         #fff;*/
@road_halo:        fadeout(#fff,34%);

@other_text:        #555;
@other_halo:        @lite_halo;

@locality_text:     #999;
@locality_halo:     @lite_halo;

/* Also used for other small places: hamlets, suburbs, localities */
@village_text:      #777;
@village_halo:      @lite_halo;

/* ****************************************************************** */


