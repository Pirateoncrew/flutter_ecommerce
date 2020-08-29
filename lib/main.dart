import 'package:ecommerce/providers/navigation_provider.dart';
import 'package:ecommerce/providers/prouct_provider.dart';
import 'package:ecommerce/screen/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<NavigationProvider>.value(
          value: NavigationProvider(),
        ),
        ChangeNotifierProvider<ProductProvider>.value(value: ProductProvider())
      ],
      child: MaterialApp(
        title: 'E-commerce',
        theme: ThemeData(
          canvasColor: Color.fromRGBO(222, 222, 222, 1),
          primaryColor: Color.fromRGBO(222, 222, 224, 1),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePageScreen(),
      ),
    );
  }
}
