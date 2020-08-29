import 'package:ecommerce/widget/category_card.dart';
import 'package:flutter/material.dart';

class CategoriesCard extends StatefulWidget {
  @override
  _CategoriesCardState createState() => _CategoriesCardState();
}

class _CategoriesCardState extends State<CategoriesCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Container(
        height: 120.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            CategoryCard(),
            CategoryCard(),
            CategoryCard(),
            CategoryCard()
          ],
        ),
      ),
    );
  }
}
