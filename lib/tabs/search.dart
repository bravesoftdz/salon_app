import 'package:flutter/material.dart';
import 'package:new_project/models/product.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

// ignore: must_be_immutable
class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

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
]; //
List<Product> itemsBea = [
  Product(
    title: ' Beauty Salon',
    imageUrl: 'lib/assets/images/beauty-salon.jpg',
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
];
List<Product> itemsHa = [
  Product(
    title: 'Hair Salon',
    imageUrl: 'lib/assets/images/hair-salon.jpg',
  ),
  Product(
    title: 'Hair Salon',
    imageUrl: 'lib/assets/images/hair-salon-2.jpg',
  ),
  Product(
    title: 'Hair Salon',
    imageUrl: 'lib/assets/images/hair-salon-3.jpg',
  ),
];
List<Product> itemsNa = [
  Product(
    title: ' Nail Salon',
    imageUrl: 'lib/assets/images/nail-salon-1.jpg',
  ),
  Product(
    title: ' Nail Salon',
    imageUrl: 'lib/assets/images/nail-salon-2.jpg',
  ),
  Product(
    title: ' Nail Salon',
    imageUrl: 'lib/assets/images/nail-salon.jpg',
  ),
];
List<Product> itemsBa = [
  Product(
    title: ' Barber Shop',
    imageUrl: 'lib/assets/images/barber-shop.jpg',
  ),
  Product(
    title: ' Barber Shop',
    imageUrl: 'lib/assets/images/barber-shop-1.jpg',
  ),
  Product(
    title: ' Barber Shop',
    imageUrl: 'lib/assets/images/barber-shop-2.jpg',
  ),
  Product(
    title: ' Barber Shop',
    imageUrl: 'lib/assets/images/barber-shop-3.jpg',
  ),
];
List<Product> itemsMas = [
  Product(
    title: ' Massage',
    imageUrl: 'lib/assets/images/massage.jpg',
  ),
  Product(
    title: ' Massage',
    imageUrl: 'lib/assets/images/massage-1.jpg',
  ),
  Product(
    title: ' Massage',
    imageUrl: 'lib/assets/images/massage-2.jpg',
  ),
  Product(
    title: ' Massage',
    imageUrl: 'lib/assets/images/massage-3.jpg',
  ),
];
List<Product> itemsMa = [
  Product(
    title: ' Makeup Artist',
    imageUrl: 'lib/assets/images/makeup.jpg',
  ),
  Product(
    title: ' Makeup Artist',
    imageUrl: 'lib/assets/images/makeup-artist-1.jpg',
  ),
];
List<Product> itemsDa = [
  Product(
    title: ' Day Spa',
    imageUrl: 'lib/assets/images/spa.jpg',
  ),
  Product(
    title: ' Day Spa',
    imageUrl: 'lib/assets/images/spa-2.jpg',
  ),
  Product(
    title: ' Day Spa',
    imageUrl: 'lib/assets/images/spa-3.jpg',
  ),
];
List<Product> itemsTh = [
  Product(
    title: ' Therapy Center',
    imageUrl: 'lib/assets/images/therapy-center.jpg',
  ),
];
List<Product> itemsTa = [];
double rating = 3.5;

RangeValues values = RangeValues(1, 100);

class _SearchState extends State<Search> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        key: scaffoldKey,
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '  Filter',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    iconSize: 44,
                    icon: Icon(Icons.close),
                    onPressed: () {},
                  ),
                ],
              ),
              Text(
                '  Rating',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(children: [
                SmoothStarRating(
                  color: Colors.yellow,
                  rating: rating,
                  isReadOnly: false,
                  size: 40,
                  filledIconData: Icons.star,
                  halfFilledIconData: Icons.star_half,
                  defaultIconData: Icons.star_border,
                  starCount: 5,
                  allowHalfRating: true,
                  spacing: 1.0,
                  onRated: (value) {
                    print("rating value -> $value");
                    // print("rating value dd -> ${value.truncate()}");
                  },
                ),
                FittedBox(
                  child: Text(
                    '  5+ Stars',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '  Distance',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '  0 - 20 km',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RangeSlider(
                    activeColor: Colors.yellow,
                    inactiveColor: Colors.pink,
                    min: 1,
                    divisions: 5,
                    max: 100,
                    values: values,
                    onChanged: (values) {
                      setState(() {
                        values = values;
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text(
                  'Price',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 66,
                    height: 33,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[300]),
                    child: Center(child: Text('\$')),
                  ),
                  Container(
                    width: 66,
                    height: 33,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[300]),
                    child: Center(child: Text('\$\$')),
                  ),
                  Container(
                    width: 66,
                    height: 33,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.yellow),
                    child: Center(child: Text('\$\$\$')),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(19.0),
                child: Text(
                  'WORKING HOURS',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    RaisedButton(
                      onPressed: () {},
                      child: Text('Any'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    RaisedButton(
                      color: Colors.yellow,
                      onPressed: () {},
                      child: Text(
                        'Currently Open',
                        style: TextStyle(
                          // fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    color: Colors.yellow,
                    onPressed: () {},
                    child: Text(
                      'APPLY',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ))
            ],
          ),
        ),
        body: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width / 1,
            color: Colors.yellow,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 22),
                        hintText: 'What are you looking for?',
                        prefixIcon: Icon(
                          Icons.search,
                          size: 35,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        fillColor: Colors.white,
                        filled: true),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: TextField(
                          decoration: InputDecoration(
                              hintStyle: TextStyle(fontSize: 20),
                              hintText: 'Nearby',
                              prefixIcon: Icon(Icons.near_me),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      )),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: TextField(
                          decoration: InputDecoration(
                              hintStyle: TextStyle(fontSize: 20),
                              hintText: 'Today',
                              prefixIcon: Icon(Icons.today),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TabBar(
                      labelColor: Colors.black,
                      isScrollable: true,
                      tabs: [
                        Tab(
                          child: Text(
                            'All',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        Tab(
                          child: Text('Beauty Salon',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                        ),
                        Tab(
                          child: Text('Hair Salon',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                        ),
                        Tab(
                          child: Text('Nail Salon',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                        ),
                        Tab(
                          child: Text('Barber Shop',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                        ),
                        Tab(
                          child: Text('Massage',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                        ),
                        Tab(
                          child: Text('Makeup Artist',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                        ),
                        Tab(
                          child: Text('Day Spa',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                        ),
                        Tab(
                          child: Text('Therapy Center',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                        ),
                        Tab(
                          child: Text('Tatto Shops',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                        )
                      ]),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: DropdownButton(
                            underline: Align(),
                            focusColor: Colors.blue,
                            hint: Text(
                              'Unisex',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            icon: Icon(
                              Icons.arrow_drop_up_outlined,
                              color: Colors.black,
                              size: 35,
                            ),
                            items: [],
                            onChanged: (_) {},
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: DropdownButton(
                            underline: Align(),
                            focusColor: Colors.blue,
                            hint: Text(
                              'Nearest',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            icon: Icon(
                              Icons.arrow_drop_up_outlined,
                              size: 35,
                              color: Colors.black,
                            ),
                            items: [],
                            onChanged: (_) {},
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        IconButton(
                          icon: Icon(Icons.layers_outlined),
                          onPressed: () {
                            scaffoldKey.currentState.openDrawer();
                          },
                        )
                        // Chip(
                        //   label: Text('Chip 2'),
                        // ),
                      ],
                    ),
                  ),
                  color: Colors.yellow,
                  height: 80,
                  width: MediaQuery.of(context).size.width / 1,
                )
              ],
            ),
          ),
          Expanded(
              child: TabBarView(children: [
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Locations (7)',
                      style: TextStyle(
                          fontSize: 29,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 1.1,
                    child: new GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 4.4 / 2,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 10,
                            crossAxisCount: 1),
                        //   scrollDirection: Axis.horizontal,
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
                                      starCount: 5,
                                      allowHalfRating: true,
                                      spacing: 1.0,
                                      onRated: (value) {
                                        print("rating value -> $value");
                                        // print("rating value dd -> ${value.truncate()}");
                                      },
                                    ),
                                    SizedBox(width: 8.0),
                                    FittedBox(
                                      child: Text(
                                        '4.9 (99 reviews)',
                                        style: TextStyle(fontSize: 18.0),
                                      ),
                                    )
                                  ],
                                ),
                                backgroundColor: Colors.white70,
                                title: FittedBox(
                                  child: Center(
                                    child: Text(
                                      items[i].title,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
                                  ),
                                ),
                                subtitle: FittedBox(
                                  child: Text(
                                    '4650 Utah Park, Los Angeles',
                                    style: TextStyle(
                                        color: Colors.grey[800], fontSize: 30),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ), //1
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Locations (4)',
                      style: TextStyle(
                          fontSize: 29,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width / 1.1,
                    child: new GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 20,
                            crossAxisCount: 1,
                            childAspectRatio: 4.4 / 2),
                        //   scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: itemsBea.length,
                        itemBuilder: (BuildContext ctxt, int i) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: new GridTile(
                              child: Image.asset(
                                itemsBea[i].imageUrl,
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
                                  child: FittedBox(
                                    child: Text(
                                      itemsBea[i].title,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
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
                ],
              ),
            ), //2
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Locations (7)',
                      style: TextStyle(
                          fontSize: 29,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width / 1.1,
                    child: new GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 20,
                            crossAxisCount: 1,
                            childAspectRatio: 4.4 / 2),
                        //   scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: itemsHa.length,
                        itemBuilder: (BuildContext ctxt, int i) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: new GridTile(
                              child: Image.asset(
                                itemsHa[i].imageUrl,
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
                                    itemsHa[i].title,
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
                ],
              ),
            ), //3
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Locations (3)',
                      style: TextStyle(
                          fontSize: 29,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width / 1.1,
                    child: new GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 20,
                            crossAxisCount: 1,
                            childAspectRatio: 4.4 / 2),
                        //   scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: itemsNa.length,
                        itemBuilder: (BuildContext ctxt, int i) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: new GridTile(
                              child: Image.asset(
                                itemsNa[i].imageUrl,
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
                                    itemsNa[i].title,
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
                ],
              ),
            ), //4
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Locations (4)',
                      style: TextStyle(
                          fontSize: 29,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width / 1.1,
                    child: new GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 20,
                            crossAxisCount: 1,
                            childAspectRatio: 4.4 / 2),
                        //   scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: itemsBa.length,
                        itemBuilder: (BuildContext ctxt, int i) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: new GridTile(
                              child: Image.asset(
                                itemsBa[i].imageUrl,
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
                                    itemsBa[i].title,
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
                ],
              ),
            ), //5
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Locations (4)',
                      style: TextStyle(
                          fontSize: 29,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width / 1.1,
                    child: new GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 20,
                            crossAxisCount: 1,
                            childAspectRatio: 4.4 / 2),
                        //   scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: itemsMas.length,
                        itemBuilder: (BuildContext ctxt, int i) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: new GridTile(
                              child: Image.asset(
                                itemsMas[i].imageUrl,
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
                                    itemsMas[i].title,
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
                ],
              ),
            ), //6
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Locations (2)',
                      style: TextStyle(
                          fontSize: 29,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width / 1.1,
                    child: new GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 20,
                            crossAxisCount: 1,
                            childAspectRatio: 4.4 / 2),
                        //   scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: itemsMa.length,
                        itemBuilder: (BuildContext ctxt, int i) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: new GridTile(
                              child: Image.asset(
                                itemsMa[i].imageUrl,
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
                                    itemsMa[i].title,
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Locations (4)',
                      style: TextStyle(
                          fontSize: 29,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width / 1.1,
                    child: new GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 20,
                            crossAxisCount: 1,
                            childAspectRatio: 4.4 / 2),
                        //   scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: itemsDa.length,
                        itemBuilder: (BuildContext ctxt, int i) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: new GridTile(
                              child: Image.asset(
                                itemsDa[i].imageUrl,
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
                                    itemsDa[i].title,
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
                ],
              ),
            ), //8
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Locations (1)',
                      style: TextStyle(
                          fontSize: 29,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width / 1.1,
                    child: new GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 20,
                            crossAxisCount: 1,
                            childAspectRatio: 4.4 / 2),
                        //   scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: itemsTh.length,
                        itemBuilder: (BuildContext ctxt, int i) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: new GridTile(
                              child: Image.asset(
                                itemsTh[i].imageUrl,
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
                                    itemsTh[i].title,
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Locations (0)',
                      style: TextStyle(
                          fontSize: 29,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width / 1.1,
                    child: new GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 20,
                            crossAxisCount: 1,
                            childAspectRatio: 4.4 / 2),
                        //   scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: itemsTa.length,
                        itemBuilder: (BuildContext ctxt, int i) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: new GridTile(
                              child: Image.asset(
                                itemsTa[i].imageUrl,
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
                ],
              ),
            ),
          ]))
        ]),
      ),
    );
  }
}
