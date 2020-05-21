import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cats/jackets.png',
            image_caption: 'Jackets',
          ),

          Category(
            image_location: 'images/cats/Tops.png',
            image_caption: 'Tops',
          ),

          Category(
            image_location: 'images/cats/denimj.png',
            image_caption: 'Denim',
          ),

          Category(
            image_location: 'images/cats/Accessories.png',
            image_caption: 'Accessories',
          ),

          Category(
            image_location: 'images/cats/shorts.png',
            image_caption: 'Shorts',
          ),
          Category(
            image_location: 'images/cats/Bottoms.png',
            image_caption: 'Bottoms',
          ),

          Category(
            image_location: 'images/cats/Shoes.png',
            image_caption: 'Shoes',
          ),




        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
          onTap: () {},
          child: Container(
            width: 120.0,
            child: ListTile(
              title: Image.asset(
                image_location,
                width: 120.0,
                height: 100.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(image_caption,style: GoogleFonts.squadaOne(color: Colors.black,)),
              ),
            ),
          )),
    );
  }
}
