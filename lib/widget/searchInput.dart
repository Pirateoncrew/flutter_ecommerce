import 'package:flutter/material.dart';

class SearchInputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.0),
      height: 70.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0), color: Color(0xFFF9F9F9)),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey.withOpacity(0.7),
            ),
            hintText: 'Search',
            hintStyle: TextStyle(
                fontFamily: 'Opensans',
                fontSize: 15.0,
                color: Colors.grey.withOpacity(0.7)),
          ),
        ),
      ),
    );
  }
}
