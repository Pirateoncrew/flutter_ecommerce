import 'package:ecommerce/widget/categories_card.dart';
import 'package:ecommerce/widget/product_cards.dart';
import 'package:ecommerce/widget/searchInput.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: SearchInputWidget(),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Most Popular',
                  style: TextStyle(
                      fontFamily: 'Opensans',
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                Icon(Icons.more_horiz, color: Colors.black)
              ],
            ),
          ),
        ),
        ProductCardWidget(),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Popular Categories',
                  style: TextStyle(
                    fontFamily: 'Opensans',
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.more_horiz, color: Colors.black)
              ],
            ),
          ),
        ),
        CategoriesCard()
      ],
    );
  }
}
