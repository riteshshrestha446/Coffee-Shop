import 'coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  final List<Coffee> _shop = [
    Coffee(
      name: "cappechino",
      price: 200,
      imagePath: "assets/imagess/93806b4e411c8cd9d36e753f69cdd930.png",
    ),
    Coffee(
      name: "LemonTea",
      price: 200,
      imagePath: "assets/imagess/coffee-png-transparent-3.png",
    ),
    Coffee(
      name: "BlackCoffee",
      price: 100,
      imagePath: "assets/imagess/transparent-cup-of-coffee-hot-coffee-with-steam-yellow-cup-coffee-1710997779934.png",
    ),
    Coffee(
      name: "Milk Tea with coffee",
      price: 150,
      imagePath: "assets/imagess/images.png",
    ),
  ];
  List<Coffee> _userCart = [];
  List<Coffee> get coffeeshop => _shop;
  List<Coffee> get userCart => _userCart;
  void addItemFromCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
