import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {},
        child: Stack(
          children: [
            Container(
              width: 250,
              height: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/apple-category.jpeg'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Opacity(
                opacity: 0.6,
                child: MyGradientWidget(),
              ),
            ),
            Positioned(
              top: 40,
              left: 15,
              child: Text(
                'Apple',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyGradientWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          colors: [Colors.black, Colors.transparent],
        ),
      ),
    );
  }
}
