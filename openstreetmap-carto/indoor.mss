@indoor-fill: #EEE5F8;  // Lch(84, 5, 68)
@indoor-line: darken(@indoor-fill, 15%);  // Lch(70, 9, 66)
@indoor-low-zoom: darken(@building-fill, 4%);

@indoor-major-fill: darken(@indoor-fill, 10%);  // Lch(75, 8, 67)
@indoor-major-line: darken(@indoor-major-fill, 15%);  // Lch(61, 13, 65)
@indoor-major-z15: darken(@indoor-major-fill, 5%);  // Lch(70, 9, 66)
@indoor-major-z14: darken(@indoor-major-fill, 10%);  // Lch(66, 11, 65)

@entrance-permissive: darken(@indoor-line, 15%);
@entrance-normal: @indoor-line;

#indoor {
  [zoom >= 17] {
    polygon-fill: @indoor-low-zoom;
    polygon-clip: false;
    [zoom >= 18] {
      polygon-fill: @indoor-fill;
      line-color: @indoor-line;
      line-width: .75;
      line-clip: false;
    }
   
  }
}

