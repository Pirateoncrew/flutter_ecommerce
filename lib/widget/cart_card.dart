import 'package:ecommerce/models/product.dart';
import 'package:ecommerce/providers/prouct_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartCard extends StatefulWidget {
  final Product items;
  CartCard(this.items);

  @override
  _CartCardState createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  @override
  Widget build(BuildContext context) {
    var setItem = Provider.of<ProductProvider>(context);
    return Padding(
      padding: EdgeInsets.all(15),
      child: Container(
        // height: 280,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.7),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image(
                        image: AssetImage('assets/mobile-1.jpeg'),
                        alignment: Alignment.center,
                        width: 60,
                        height: 100,
                      ),
                      Container(
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.items.name,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Opensans',
                                  fontSize: 14.0,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              widget.items.price,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Opensans',
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 15, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(width: 1, color: Colors.grey)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          child: Icon(Icons.add, size: 18, color: Colors.grey),
                        ),
                        Container(
                          height: 35,
                          width: 50,
                          margin: EdgeInsets.only(right: 8),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(width: 1, color: Colors.grey),
                              left: BorderSide(width: 1, color: Colors.grey),
                            ),
                          ),
                          child: Text(
                            widget.items.count.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.grey),
                          ),
                        ),
                        Container(
                            width: 30,
                            child: Icon(Icons.remove,
                                size: 18, color: Colors.grey))
                      ],
                    ),
                  ),
                  Container(
                    child: InkWell(
                      splashColor: Colors.green, // splash color
                      onTap: () {
                        print(widget.items.id);
                        setItem.removeCartItem(widget.items.id);
                      }, // button pressed
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.delete,
                            color: Colors.grey.withOpacity(0.8),
                          ), // icon
                          Text(
                            "Remove",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.grey),
                          ), // text
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
