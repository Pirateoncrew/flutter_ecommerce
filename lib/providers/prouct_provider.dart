import 'package:ecommerce/models/product.dart';
import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
  List<Product> items = [
    Product(1, 'OnePlus 7T Dual Sim 8GB RAM 128GB LTE Prosted Silver',
        'assets/mobile-1.jpeg', '\$300', false, false, 0),
    Product(2, 'OnePlus 7T Dual Sim 6GB RAM 128GB LTE Prosted Silver',
        'assets/mobile-1.jpeg', '\$300', false, false, 0),
    Product(3, 'OnePlus 7T Dual Sim 12GB RAM 128GB LTE Prosted Silver',
        'assets/mobile-1.jpeg', '\$300', false, false, 0),
  ];

  List<Product> cartItems;

  List<Product> fetchAll() {
    return items;
  }

  markFav(int id) {
    items.forEach((element) {
      if (element.id == id) {
        element.isFav = !element.isFav;
        return;
      }
    });
    notifyListeners();
  }

  addToCart(int id) {
    items.forEach((element) {
      if (element.id == id) {
        if (element.addToCart) {
          element.count++;
        } else {
          element.count++;
          element.addToCart = true;
        }
        print(element.id);
        //  cartItem.add({})
        return;
      }
    });
    notifyListeners();
  }

  cartItem() {
    cartItems = items.where((element) => element.addToCart).toList();
    return cartItems;
  }

  removeCartItem(int id) {
    print(id);
    cartItems.forEach((element) {
      print(cartItems.indexOf(element));
      if (element.id == id) {
        (cartItems.remove(element));
      }
    });
    notifyListeners();
  }
}
