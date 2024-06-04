import 'package:food_delivery_app/model/food.dart';

class CartItem{

  Food food;
  List<Addon> selectedaddon;
  int quantity;

  CartItem({
    required this.food,
    required this.selectedaddon,
    this.quantity = 1,
  });

  double get totalPrice {
    double addonsPrice = selectedaddon.fold(0, (sum, addon) => sum + addon.price);
    return (food.price + addonsPrice) * quantity ;
  }
}