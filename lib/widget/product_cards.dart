import 'package:ecommerce/providers/prouct_provider.dart';
import 'package:ecommerce/widget/item_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductCardWidget extends StatefulWidget {
  @override
  _ProductCardWidgetState createState() => _ProductCardWidgetState();
}

class _ProductCardWidgetState extends State<ProductCardWidget> {
  @override
  Widget build(BuildContext context) {
    final allItems = Provider.of<ProductProvider>(context).fetchAll();

    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Container(
        height: 320.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            for (var items in allItems) ItemCard(items),
          ],
        ),
      ),
    );
  }
}
