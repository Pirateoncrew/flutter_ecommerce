import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  AppBarWidget({
    Key key,
  })  : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Row(
        children: [
          Image(
            width: 30,
            image: AssetImage('assets/wave.png'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
            child: Column(
              children: [
                Text(
                  'Good Morning',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Container(
                  width: 90,
                  child: Text(
                    'Nicholas',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.notifications_none),
          onPressed: () {},
        ),
      ],
    );
  }
}
