@indoor-fill: #FFF9EB;  // Lch(84, 5, 68)
@indoor-line: darken(@indoor-fill, 15%);  // Lch(70, 9, 66)
@indoor-low-zoom: darken(@indoor-fill, 4%);

@indoor-major-fill: darken(@indoor-fill, 10%);  // Lch(75, 8, 67)
@indoor-major-line: darken(@indoor-major-fill, 15%);  // Lch(61, 13, 65)
@indoor-major-z15: darken(@indoor-major-fill, 5%);  // Lch(70, 9, 66)
@indoor-major-z14: darken(@indoor-major-fill, 10%);  // Lch(66, 11, 65)

#indoors {
  
  
  [zoom >= 17] {
    polygon-fill: @indoor-low-zoom;
    polygon-clip: false;

    [zoom >= 19] {
      polygon-fill: @indoor-fill;
      line-color: @indoor-line;
      line-width: .75;
      line-clip: false;
      
    }
    

    [room = 'office'],
    [room = 'storage'],
    [room = 'kitchen'],
    [room = 'server'],
    [room = 'misc']{
      polygon-fill: #fcefd2;
      
      }

    [indoor = 'corridor']{
      polygon-fill: #FFFFFF;
      line-color: #FFFFFF;
      line-width: 0.1;
      line-clip: false;
    }
    [amenity = 'toilets']{
      polygon-fill: #FFF9EB;
    }
    [amenity ='fast_food']{
      polygon-fill: #fdff9e;
    }
    [amenity = 'info'],
    [amenity = 'post_office']{
      polygon-fill: #b6d1db;
    }

    [room = 'classroom'],
    [room = 'conferrence'],
    [room = 'seminar'],
    [amenity = 'library'],
    [room = 'computer_room']{
      polygon-fill: #d1ffd3;
    }
   
   
  }
}
#indoors-text{
  [zoom>= 22]{
    text-name: "[ref]";
    text-face-name: @book-fonts;
    text-size: 14;
    text-fill: black;
  }
  
}