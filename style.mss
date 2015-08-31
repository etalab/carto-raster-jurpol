/* ******* */
/* Palette */
/* ******* */

@sans:              'DejaVu Sans Book';
@sans_bold:         'DejaVu Sans Bold';
@sans_bold_italic:  'DejaVu Sans Bold Oblique';
@sans_italic:       'DejaVu Sans Oblique';

Map {
  buffer-size: 256;
  font-directory: url('./fonts');
}

#zonage_tgi.geo::geo [zoom>10] {
  opacity: 0.4;
  line-width: 6;
  line-color: grey;
  line-join: round;
  polygon-fill: white;
  polygon-opacity: 0.4;
  [couleur=1] {polygon-fill: orange; }
  [couleur=2] {polygon-fill: green; }
  [couleur=3] {polygon-fill: blue; }
  [couleur=4] {polygon-fill: magenta; }
  [couleur=5] {polygon-fill: yellow; }
}

#zonage_tgi.label::label {

  [zoom>=9] {
  text-name: "TGI "+[osm_nom];
  text-size: 14;
  text-face-name: @sans_italic;
  text-halo-radius: 1.5;
  text-fill: black;
  text-halo-fill: white;
  text-margin: 5;
  text-min-padding: 15;
  }

  [zoom>=13] {
  b/text-name: "TGI "+[osm_nom];
  b/text-dy: -4;
  b/text-size: 12;
  b/text-face-name: @sans;
  b/text-halo-radius: 1;
  b/text-fill: black;
  b/text-halo-fill: white;
  b/text-placement: line;
  b/text-spacing: 400;
  b/text-margin: 5;
  b/text-min-padding: 1;
  }
}

#poi_commissariats_brigades [zoom>=10]{
  marker-width: 8;
  [type='Police'] { marker-fill: white; }
  [zoom>=14] {
    text-name: [service];
    text-size: 14;
    text-face-name: @sans;
    text-halo-radius: 1.5;
    text-fill: black;
    [type='Gendarmerie'] { text-fill: blue; }
    text-halo-fill: white;
    text-min-padding: 1;
    text-placement-type: simple;
    text-placements: 'SE,NE,SW,NW';
    text-wrap-width: 128;
    text-dx: 4;
    text-dy: 4;
  }
}

#zonage_communes {
  background/line-color: white;
  background/line-width: 2;
  comp-op: darken;
  opacity: 0.5;

  line-color: black;
  line-width: 2;
  line-dasharray: 4,4;

  text-name: [nom];
  text-fill: black;
  text-halo-fill: white;
  text-dy: -4;
  text-size: 11;
  text-face-name: @sans;
  text-halo-radius: 2;
  text-placement: line;
  text-margin: 5;
  text-min-padding: 1;
  text-spacing: 200;
  text-max-char-angle-delta: 30;

}

#zonage_commissariats_brigades [zoom>=10]{
  opacity: 0.66;
  line-color: blue;
  [institution='PN'] {
    line-color: #444;
  }
  line-offset: -0.5;
  line-width: 1;
  line-join: round;
  [zoom>=13] {
  line-offset: -1;
  line-width: 2;

  [institution='PN'] {
    text-fill: black;
    text-halo-fill: white;
    polygon-pattern-opacity: 0.1;
    polygon-pattern-file: 'squares.svg';
  }
  text-name: [service];
  text-fill: white;
  text-halo-fill: blue;
  text-dy: -4;
  text-size: 11;
  text-face-name: @sans;
  text-halo-radius: 2;
  text-placement: line;
  text-margin: 5;
  text-min-padding: 1;
  text-spacing: 200;
  text-max-char-angle-delta: 30;
 }

}
