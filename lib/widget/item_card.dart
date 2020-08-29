import 'package:ecommerce/models/product.dart';
import 'package:ecommerce/providers/prouct_provider.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:provider/provider.dart';

class ItemCard extends StatelessWidget {
  final Product items;
  ItemCard(this.items);
  @override
  Widget build(BuildContext context) {
    final ProductProvider setItem = Provider.of<ProductProvider>(context);
    return
        // padding: EdgeInsets.all(50.0),
        Container(
      margin: EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: () {},
        child: Stack(
          children: [
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white.withOpacity(0.5)),
                height: 300.0,
                width: 250),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                child: Image(
                  image: AssetImage(items.image),
                  alignment: Alignment.center,
                  width: 250,
                  height: 200,
                ),
              ),
            ),
            Positioned(
              top: 150,
              child: Container(
                alignment: Alignment.center,
                width: 250,
                height: 90,
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.7)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[200].withOpacity(0.8),
                          borderRadius: BorderRadius.circular(20)),
                      child: FlatButton(
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(20)),
                        splashColor: Colors.white.withOpacity(0.8),
                        onPressed: () {
                          setItem.addToCart(items.id);
                        },
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                icon: Icon(
                                  Icons.shopping_cart,
                                  color: Colors.blue,
                                ),
                                tooltip: 'SSSS',
                                onPressed: () {
                                  setItem.addToCart(items.id);
                                }),
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Text('Add to cart',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.blue)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.redAccent[100].withOpacity(0.5),
                            borderRadius: BorderRadius.circular(19)),
                        child: IconButton(
                            icon: Icon(
                              items.isFav
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              setItem.markFav(items.id);
                            }))
                  ],
                ),
              ),
            ),
            Positioned(
              top: 230.0,
              left: 10.0,
              child: Container(
                width: 230.0,
                height: 400.0,
                child: Column(
                  children: [
                    Text(
                      items.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Opensans',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      items.price,
                      style: TextStyle(
                          fontFamily: 'Opensans',
                          fontSize: 16.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w900),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
