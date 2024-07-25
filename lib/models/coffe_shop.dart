import 'package:cafe_flutter/models/coffee.dart';

class CoffeShop {
  final List<Coffe> _shop = [
    Coffe(name: "Café Preto", price: "3.50", imagePath: "assets/img/black.png"),
    Coffe(name: "Café Latte", price: "5.50", imagePath: "assets/img/latte.png"),
    Coffe(
        name: "Café Expresso",
        price: "4.50",
        imagePath: "assets/img/expresso.png"),
    Coffe(
        name: "Café Gelado",
        price: "3.50",
        imagePath: "assets/img/iced_coffe.png"),
  ];

  List<Coffe> _userCart = [];
  List<Coffe> get coffeShop => _shop;
  List<Coffe> get userCart => _userCart;

  void addItemToCart(Coffe coffe) {
    _userCart.add(coffe);
  }

  void removeItemFromCart(Coffe coffe) {
    _userCart.remove(coffe);
  }
}
