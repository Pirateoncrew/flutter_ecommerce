import 'package:ecommerce/providers/navigation_provider.dart';
import 'package:ecommerce/screen/main.dart';
import 'package:ecommerce/widget/appBar.dart';
import 'package:ecommerce/widget/bottomNav.dart';
import 'package:ecommerce/widget/cart_cards.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widget/appBar.dart';

class HomePageScreen extends StatefulWidget {
  List<Widget> widgetArray = [MainScreen(), CartCards()];
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    final int index = Provider.of<NavigationProvider>(context).getIndex;
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(),
        // body: SingleChildScrollView(child: MainScreen()),
        body: SingleChildScrollView(child: widget.widgetArray[index]),

        bottomNavigationBar: BottomNavWidget(),
      ),
    );
  }
}
