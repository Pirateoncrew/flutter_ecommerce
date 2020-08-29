import 'package:ecommerce/models/product.dart';
import 'package:ecommerce/providers/prouct_provider.dart';
import 'package:ecommerce/widget/cart_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartCards extends StatefulWidget {
  @override
  _CartCardsState createState() => _CartCardsState();
}

class _CartCardsState extends State<CartCards> {
  @override
  Widget build(BuildContext context) {
    var cartItems = Provider.of<ProductProvider>(context).cartItem();
    return Container(
      child: Column(
        children: [
          for (var items in cartItems) CartCard(items),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.grey[100].withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Product Quantity",
                          style: TextStyle(color: Colors.black54),
                        ),
                        Text(
                          '2',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Product Price",
                          style: TextStyle(color: Colors.black54),
                        ),
                        Text(
                          '\$600',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 3,
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 1, color: Colors.grey),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total:",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$600',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 500,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.deepPurpleAccent),
                    child: FlatButton(
                      color: Colors.transparent,
                      onPressed: () {},
                      child: Text(
                        'Proceed to Checkout',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
