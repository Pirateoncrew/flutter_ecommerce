class Product {
  final int id;
  final String name;
  final String price;
  final String image;
  bool isFav;
  bool addToCart;
  int count = 0;

  Product(this.id, this.name, this.image, this.price, this.isFav,
      this.addToCart, this.count);
}
