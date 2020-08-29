import 'package:ecommerce/providers/navigation_provider.dart';
import "package:flutter/material.dart";
import 'package:provider/provider.dart';

class BottomNavWidget extends StatefulWidget {
  @override
  _BottomNavWidgetState createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends State<BottomNavWidget> {
  @override
  Widget build(BuildContext context) {
    final NavigationProvider setIndex =
        Provider.of<NavigationProvider>(context);
    return Container(
      // color: Colors.white,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      height: MediaQuery.of(context).size.height -
          (MediaQuery.of(context).size.height * 93 / 100),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              setIndex.index(0);
            },
            icon: Icon(Icons.home),
          ),
          Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(bottom: 5),
              decoration:
                  ShapeDecoration(shape: CircleBorder(), color: Colors.green),
              child: Icon(Icons.mic_none)),
          IconButton(
            onPressed: () {
              setIndex.index(1);
            },
            icon: Icon(Icons.shopping_basket),
          ),
        ],
      ),
    );
  }
}
