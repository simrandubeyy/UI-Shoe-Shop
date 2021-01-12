 import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cats/shoesmen.png',
            image_caption: 'Sport\'s',
          ),

          Category(
            image_location: 'images/cats/Heels.png',
            image_caption: 'Heels',
          ),

          Category(
            image_location: 'images/cats/womenflats.png',
            image_caption: 'flats',
          ),

          Category(
            image_location: 'images/cats/shoesgirls.png',
            image_caption: 'Sneakers',
          ),

          Category(
            image_location: 'images/cats/Slippers.png',
            image_caption: 'Slippers',
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
     return Padding(padding: const EdgeInsets.all(2.0),
     child: InkWell(onTap: (){},
     child: Container(
          width: 100.0,
          height: 80.0,
            child: ListTile(
         title: Image.asset(image_location),
         subtitle: Container(
           alignment: Alignment.topCenter,
           child: Text(image_caption),
         ),
       ),
     ),

     ),);
  }
}