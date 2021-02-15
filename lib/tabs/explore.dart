import 'package:flutter/material.dart';

import 'package:smooth_star_rating/smooth_star_rating.dart';
import '../models/product.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  String date;
  double rating = 3.5;
  List<Product> items = [
    Product(
      title: ' Makeup Artist',
      imageUrl: 'lib/assets/images/makeup-artist-1.jpg',
    ),
    Product(
      title: ' Makeup Artist',
      imageUrl: 'lib/assets/images/makeup-artist-2.jpg',
    ),
    Product(
      title: ' Day Spa',
      imageUrl: 'lib/assets/images/spa-3.jpg',
    ),
    Product(
      title: ' Day Spa',
      imageUrl: 'lib/assets/images/spa-2.jpg',
    ),
    Product(
      title: ' Day Spa',
      imageUrl: 'lib/assets/images/spa-3.jpg',
    ),
    Product(
      title: ' Makeup Artist',
      imageUrl: 'lib/assets/images/makeup-artist-3.jpg',
    ),
    Product(
      title: 'Hair Salon',
      imageUrl: 'lib/assets/images/hair-salon-2.jpg',
    ),
    Product(
      title: 'Hair Salon',
      imageUrl: 'lib/assets/images/hair-salon-3.jpg',
    ),
    Product(
      title: ' Nail Salon',
      imageUrl: 'lib/assets/images/nail-salon.jpg',
    ),
    Product(
      title: 'Hair Salon',
      imageUrl: 'lib/assets/images/hair-salon.jpg',
    ),
    Product(
      title: ' Beauty Salon',
      imageUrl: 'lib/assets/images/beauty-salon.jpg',
    ),
    Product(
      title: ' Makeup Artist',
      imageUrl: 'lib/assets/images/makeup-artist-1.jpg',
    ),
    Product(
      title: ' Massage',
      imageUrl: 'lib/assets/images/massage-2.jpg',
    ),
    Product(
      title: ' Day Spa',
      imageUrl: 'lib/assets/images/spa-2.jpg',
    ),
    Product(
      title: ' Therapy Center',
      imageUrl: 'lib/assets/images/therapy-center.jpg',
    ),
    Product(
      title: ' Beauty Salon',
      imageUrl: 'lib/assets/images/beauty-salon-1.jpg',
    ),
    Product(
      title: ' Beauty Salon',
      imageUrl: 'lib/assets/images/beauty-salon-2.jpg',
    ),
    Product(
      title: ' Beauty Salon',
      imageUrl: 'lib/assets/images/beauty-salon-3.jpg',
    ),
    Product(
      title: ' Nail Salon',
      imageUrl: 'lib/assets/images/nail-salon-1.jpg',
    ),
    Product(
      title: ' Nail Salon',
      imageUrl: 'lib/assets/images/nail-salon-2.jpg',
    ),
    Product(
      title: ' Barber Shop',
      imageUrl: 'lib/assets/images/barber-shop-2.jpg',
    ),
    Product(
      title: ' Barber Shop',
      imageUrl: 'lib/assets/images/barber-shop-3.jpg',
    ),
    Product(
      title: ' Massage',
      imageUrl: 'lib/assets/images/massage-2.jpg',
    ),
    Product(
      title: ' Massage',
      imageUrl: 'lib/assets/images/massage-3.jpg',
    ),
    Product(
      title: ' Beauty Salon',
      imageUrl: 'lib/assets/images/beauty-salon.jpg',
    ),
    Product(
      title: 'Hair Salon',
      imageUrl: 'lib/assets/images/hair-salon.jpg',
    ),
    Product(
      title: ' Nail Salon',
      imageUrl: 'lib/assets/images/nail-salon.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(overflow: Overflow.visible, children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width, 100.0)),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(''
                        //'lib/assets/images/makeup.jpg',
                        ))),
            height: 250,
            width: MediaQuery.of(context).size.width,
            //
          ),
          Positioned(
            top: 50,
            left: 28,
            child: Text(
              'Explore',
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 100,
            left: 28,
            child: Text(
              'Book what you love',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey[400],
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 145, left: 77, right: 77),
            child: TextField(
              style: TextStyle(),
              decoration: InputDecoration(
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: new BorderSide(color: Colors.white),
                  //   borderRadius: new BorderRadius.circular(40),
                  // ),
                  hintText: 'Search for a service or ...',
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none),
            ),
          )
        ]),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Popular Categories',
            style: TextStyle(
                fontSize: 29, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.width / 2.2,
            //flex: 3,
            child: new GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 20, crossAxisCount: 1),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (BuildContext ctxt, int i) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: new GridTile(
                      child: Image.asset(
                        items[i].imageUrl,
                        fit: BoxFit.cover,
                      ),
                      footer: GridTileBar(
                        backgroundColor: Colors.white70,
                        title: Center(
                          child: Text(
                            items[i].title,
                            style: TextStyle(
                                color: Colors.grey[800],
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Recently Viewed',
            style: TextStyle(
                fontSize: 29, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.width / 1,
            //flex: 3,
            child: new GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 20, crossAxisCount: 1),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (BuildContext ctxt, int i) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: new GridTile(
                      child: Image.asset(
                        items[i].imageUrl,
                        fit: BoxFit.cover,
                      ),
                      footer: GridTileBar(
                        trailing: Row(
                          children: <Widget>[
                            SmoothStarRating(
                              rating: rating,
                              isReadOnly: false,
                              size: 20,
                              filledIconData: Icons.star,
                              halfFilledIconData: Icons.star_half,
                              defaultIconData: Icons.star_border,
                              starCount: 1,
                              allowHalfRating: true,
                              spacing: 1.0,
                              onRated: (value) {
                                print("rating value -> $value");
                                // print("rating value dd -> ${value.truncate()}");
                              },
                            ),
                            SizedBox(width: 8.0),
                            Text(
                              '4.9 (99 reviews)',
                              style: TextStyle(fontSize: 18.0),
                            )
                          ],
                        ),
                        backgroundColor: Colors.white70,
                        title: Center(
                          child: Text(
                            items[i].title,
                            style: TextStyle(
                                color: Colors.grey[800],
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ),
                        subtitle: FittedBox(
                          child: Text(
                            '4650 Utah Park, Los Angeles',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Top Rated Locations',
              style: TextStyle(
                  fontSize: 29,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              icon: Icon(Icons.forward),
              onPressed: () {}, //TODO
            ),
          )
        ]),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.width / 1,
            //flex: 3,
            child: new GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 20, crossAxisCount: 1),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (BuildContext ctxt, int i) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: new GridTile(
                      child: Image.asset(
                        items[i].imageUrl,
                        fit: BoxFit.cover,
                      ),
                      footer: GridTileBar(
                        trailing: Row(
                          children: <Widget>[
                            SmoothStarRating(
                              rating: rating,
                              isReadOnly: false,
                              size: 20,
                              filledIconData: Icons.star,
                              halfFilledIconData: Icons.star_half,
                              defaultIconData: Icons.star_border,
                              starCount: 1,
                              allowHalfRating: true,
                              spacing: 1.0,
                              onRated: (value) {
                                print("rating value -> $value");
                                // print("rating value dd -> ${value.truncate()}");
                              },
                            ),
                            SizedBox(width: 8.0),
                            Text(
                              '4.9(99 reviews)',
                              style: TextStyle(fontSize: 18.0),
                            )
                          ],
                        ),
                        backgroundColor: Colors.white70,
                        title: Center(
                          child: Text(
                            items[i].title,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ),
                        subtitle: FittedBox(
                          child: Text(
                            '4650 Utah Park, Los Angeles',
                            style: TextStyle(
                                color: Colors.grey[800], fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
