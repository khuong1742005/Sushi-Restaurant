import 'package:flutter/cupertino.dart';
import 'food.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
      name: "Food 1",
      price: "30.000 VND",
      imagePath: "lib/assets/sushi3.png",
      rating: "4.9",
    ),
    Food(
      name: "Food 2",
      price: "35.000 VND",
      imagePath: "lib/assets/sushi4.png",
      rating: "4.7",
    ),
    Food(
      name: "Food 3",
      price: "40.000 VND",
      imagePath: "lib/assets/sushi5.png",
      rating: "4.8",
    ),
    Food(
      name: "Food 4",
      price: "50.000 VND",
      imagePath: "lib/assets/sushi6.png",
      rating: "5.0",
    ),
  ];

  //customer cart
  final List<Food> _cart = [];

  // getter methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  //add to cart
  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
