import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/model/cart_item.dart';
import 'package:food_delivery_app/model/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {

  final List<Food> _menu =[
    Food(
    name: "The Classic Deluxe", 
    description: "A juicy beef patty grilled to perfection, topped with melted cheddar cheese, crisp lettuce, ripe tomatoes, onions, and pickles, all nestled in a toasted brioche bun.", 
    imagePath: "assets/images/bug1.jpeg", 
    price: 89, 
    category: FoodCategory.burgers, 
    availableddons: [Addon(name: "Bacon", price: 40), Addon(name: "Avocado", price: 50), Addon(name: "Fried Egg", price: 30), Addon(name: "Sautéed Mushrooms", price: 35), Addon(name: "Extra Cheese", price: 20)]
),

Food(
    name: "Spicy Tex-Mex Burger", 
    description: "A zesty combination of a spicy beef patty, pepper jack cheese, jalapeños, pico de gallo, and creamy chipotle mayo in a soft sesame seed bun.", 
    imagePath: "assets/images/bug2.jpg", 
    price: 95, 
    category: FoodCategory.burgers, 
    availableddons: [Addon(name: "Guacamole", price: 45), Addon(name: "Extra Jalapeños", price: 25), Addon(name: "Onion Rings", price: 30), Addon(name: "Sour Cream", price: 20), Addon(name: "Black Beans", price: 30)]
),

Food(
    name: "Mediterranean Lamb Burger", 
    description: "Succulent lamb patty with feta cheese, cucumber slices, red onion, and tzatziki sauce, served on a warm pita bread.", 
    imagePath: "assets/images/bug3.jpg", 
    price: 110, 
    category: FoodCategory.burgers, 
    availableddons: [Addon(name: "Hummus", price: 35), Addon(name: "Olives", price: 30), Addon(name: "Roasted Red Peppers", price: 40), Addon(name: "Spinach", price: 20), Addon(name: "Grilled Halloumi", price: 50)]
),


Food(
    name: "BBQ Bacon Burger", 
    description: "A hearty beef patty slathered in smoky BBQ sauce, topped with crispy bacon, cheddar cheese, lettuce, and tomato, in a toasted potato bun.", 
    imagePath: "assets/images/bug4.jpg", 
    price: 100, 
    category: FoodCategory.burgers, 
    availableddons: [Addon(name: "Onion Straws", price: 35), Addon(name: "Coleslaw", price: 25), Addon(name: "Grilled Pineapple", price: 30), Addon(name: "Extra Bacon", price: 45), Addon(name: "Jalapeño Ranch", price: 20)]
),

Food(
    name: "Veggie Garden Burger", 
    description: "A wholesome veggie patty made with black beans, corn, and spices, topped with fresh lettuce, tomato, red onion, and avocado, served on a whole grain bun.", 
    imagePath: "assets/images/bug5.jpg", 
    price: 85, 
    category: FoodCategory.burgers, 
    availableddons: [Addon(name: "Vegan Cheese", price: 30), Addon(name: "Roasted Red Pepper Hummus", price: 40), Addon(name: "Sprouts", price: 25), Addon(name: "Pickled Red Onions", price: 20), Addon(name: "Vegan Mayo", price: 20)]
),
Food(
    name: "Citrus Breeze", 
    description: "A refreshing blend of orange, lemon, and lime juices with a splash of sparkling water.", 
    imagePath: "assets/images/drk1.jpg", 
    price: 45, 
    category: FoodCategory.drinks, 
    availableddons: [Addon(name: "Mint Leaves", price: 15), Addon(name: "Extra Lime", price: 10), Addon(name: "Soda Water", price: 20), Addon(name: "Sugar Rim", price: 10), Addon(name: "Crushed Ice", price: 5)]
),
Food(
    name: "Berry Bliss Smoothie", 
    description: "A delightful mix of strawberries, blueberries, and raspberries blended with yogurt and a touch of honey.", 
    imagePath: "assets/images/drk2.jpg", 
    price: 60, 
    category: FoodCategory.drinks, 
    availableddons: [Addon(name: "Chia Seeds", price: 15), Addon(name: "Protein Powder", price: 25), Addon(name: "Spinach", price: 10), Addon(name: "Extra Berries", price: 20), Addon(name: "Almond Milk", price: 15)]
),
Food(
    name: "Classic Iced Tea", 
    description: "Cool and crisp black tea brewed to perfection, served over ice with a hint of lemon.", 
    imagePath: "assets/images/drk3.jpg", 
    price: 35, 
    category: FoodCategory.drinks, 
    availableddons: [Addon(name: "Fresh Mint", price: 10), Addon(name: "Peach Syrup", price: 15), Addon(name: "Honey", price: 10), Addon(name: "Extra Lemon", price: 10), Addon(name: "Ginger", price: 15)]
),
Food(
    name: "Mocha Frappe", 
    description: "A rich blend of coffee, chocolate, and milk, topped with whipped cream and a drizzle of chocolate syrup.", 
    imagePath: "assets/images/drk4.jpg", 
    price: 55, 
    category: FoodCategory.drinks, 
    availableddons: [Addon(name: "Caramel Drizzle", price: 15), Addon(name: "Extra Coffee Shot", price: 20), Addon(name: "Almond Milk", price: 15), Addon(name: "Coconut Flakes", price: 10), Addon(name: "Hazelnut Syrup", price: 15)]
),
Food(
    name: "Tropical Paradise Juice", 
    description: "A vibrant combination of pineapple, mango, and passion fruit juices for a taste of the tropics.", 
    imagePath: "assets/images/drk5.jpg", 
    price: 50, 
    category: FoodCategory.drinks, 
    availableddons: [Addon(name: "Coconut Water", price: 20), Addon(name: "Mango Chunks", price: 15), Addon(name: "Passion Fruit Seeds", price: 20), Addon(name: "Extra Pineapple", price: 15), Addon(name: "Mint", price: 10)]
),

Food(
    name: "Caesar Supreme", 
    description: "Crisp romaine lettuce, Parmesan cheese, croutons, and Caesar dressing.", 
    imagePath: "assets/images/sld1.jpg", 
    price: 75, 
    category: FoodCategory.salads, 
    availableddons: [Addon(name: "Grilled Chicken", price: 40), Addon(name: "Anchovies", price: 30), Addon(name: "Bacon Bits", price: 35), Addon(name: "Avocado", price: 50), Addon(name: "Boiled Egg", price: 20)]
),

Food(
    name: "Greek Delight", 
    description: "Mixed greens with cucumbers, tomatoes, red onions, olives, and feta cheese, drizzled with a tangy Greek vinaigrette.", 
    imagePath: "assets/images/sld2.jpg", 
    price: 80, 
    category: FoodCategory.salads, 
    availableddons: [Addon(name: "Grilled Lamb", price: 55), Addon(name: "Hummus", price: 35), Addon(name: "Dolmas", price: 25), Addon(name: "Roasted Red Peppers", price: 30), Addon(name: "Pita Chips", price: 20)]
),
Food(
    name: "Harvest Salad", 
    description: "A blend of mixed greens, roasted butternut squash, cranberries, pecans, and goat cheese, topped with apple cider vinaigrette.", 
    imagePath: "assets/images/sld3.jpg", 
    price: 85, 
    category: FoodCategory.salads, 
    availableddons: [Addon(name: "Grilled Turkey", price: 50), Addon(name: "Quinoa", price: 35), Addon(name: "Apples", price: 25), Addon(name: "Pumpkin Seeds", price: 20), Addon(name: "Blue Cheese", price: 30)]
),
Food(
    name: "Southwest Fiesta Salad", 
    description: "Romaine lettuce, black beans, corn, avocado, cherry tomatoes, and tortilla strips, served with a cilantro-lime dressing.", 
    imagePath: "assets/images/sld4.jpg", 
    price: 90, 
    category: FoodCategory.salads, 
    availableddons: [Addon(name: "Grilled Shrimp", price: 55), Addon(name: "Jalapeños", price: 20), Addon(name: "Queso Fresco", price: 25), Addon(name: "Extra Avocado", price: 50), Addon(name: "Chipotle Chicken", price: 45)]
),
Food(
    name: "Asian Fusion Salad", 
    description: "Mixed greens, edamame, shredded carrots, mandarin oranges, and crispy wontons, with a sesame-ginger dressing.", 
    imagePath: "assets/images/sld5.jpg", 
    price: 88, 
    category: FoodCategory.salads, 
    availableddons: [Addon(name: "Grilled Salmon", price: 60), Addon(name: "Tofu", price: 30), Addon(name: "Avocado", price: 50), Addon(name: "Cashews", price: 25), Addon(name: "Sliced Almonds", price: 20)]
),

Food(
    name: "Chocolate Lava Cake", 
    description: "A decadent chocolate cake with a gooey molten center, served warm with a scoop of vanilla ice cream.", 
    imagePath: "assets/images/dst1.jpg", 
    price: 70, 
    category: FoodCategory.desserts, 
    availableddons: [Addon(name: "Caramel Drizzle", price: 15), Addon(name: "Fresh Berries", price: 25), Addon(name: "Whipped Cream", price: 10), Addon(name: "Chocolate Shavings", price: 20), Addon(name: "Mint Sprig", price: 10)]
),
Food(
    name: "Berry Cheesecake", 
    description: "Creamy cheesecake topped with a medley of fresh berries and a sweet berry compote.", 
    imagePath: "assets/images/dst2.jpg", 
    price: 75, 
    category: FoodCategory.desserts, 
    availableddons: [Addon(name: "Chocolate Drizzle", price: 15), Addon(name: "Extra Berries", price: 20), Addon(name: "Whipped Cream", price: 10), Addon(name: "Almond Slices", price: 15), Addon(name: "Mint Leaves", price: 10)]
),
Food(
    name: "Apple Crumble", 
    description: "Warm apple filling with a buttery crumble topping, served with a scoop of vanilla ice cream.", 
    imagePath: "assets/images/dst3.jpg", 
    price: 65, 
    category: FoodCategory.desserts, 
    availableddons: [Addon(name: "Caramel Sauce", price: 15), Addon(name: "Walnuts", price: 20), Addon(name: "Raisins", price: 10), Addon(name: "Cinnamon Sprinkle", price: 10), Addon(name: "Extra Ice Cream", price: 25)]
),
Food(
    name: "Lemon Meringue Pie", 
    description: "Tangy lemon filling with a fluffy meringue topping, set in a crisp pastry crust.", 
    imagePath: "assets/images/dst4.jpg", 
    price: 68, 
    category: FoodCategory.desserts, 
    availableddons: [Addon(name: "Raspberry Sauce", price: 15), Addon(name: "Whipped Cream", price: 10), Addon(name: "Lemon Zest", price: 10), Addon(name: "Extra Meringue", price: 20), Addon(name: "Mint Garnish", price: 10)]
),
Food(
    name: "Tiramisu Delight", 
    description: "Layers of coffee-soaked ladyfingers and rich mascarpone cream, dusted with cocoa powder.", 
    imagePath: "assets/images/dst5.jpg", 
    price: 80, 
    category: FoodCategory.desserts, 
    availableddons: [Addon(name: "Chocolate Shavings", price: 15), Addon(name: "Extra Espresso", price: 20), Addon(name: "Caramel Drizzle", price: 15), Addon(name: "Whipped Cream", price: 10), Addon(name: "Coffee Beans", price: 10)]
),

Food(
    name: "Garlic Parmesan Fries", 
    description: "Crispy fries tossed in garlic and Parmesan cheese.", 
    imagePath: "assets/images/sid1.jpg", 
    price: 45, 
    category: FoodCategory.sides, 
    availableddons: [Addon(name: "Truffle Oil", price: 25), Addon(name: "Rosemary", price: 15), Addon(name: "Extra Parmesan", price: 20), Addon(name: "Bacon Bits", price: 30), Addon(name: "Aioli Dip", price: 15)]
),
Food(
    name: "Sweet Potato Wedges", 
    description: "Baked sweet potato wedges seasoned with a hint of cinnamon and paprika.", 
    imagePath: "assets/images/sid2.jpg", 
    price: 50, 
    category: FoodCategory.sides, 
    availableddons: [Addon(name: "Honey Drizzle", price: 15), Addon(name: "Marshmallow Dip", price: 20), Addon(name: "Chili Flakes", price: 10), Addon(name: "Lime Zest", price: 10), Addon(name: "Avocado Dip", price: 20)]
),
Food(
    name: "Coleslaw", 
    description: "A classic mix of shredded cabbage and carrots in a tangy mayo-based dressing.", 
    imagePath: "assets/images/sid3.jpg", 
    price: 30, 
    category: FoodCategory.sides, 
    availableddons: [Addon(name: "Pineapple Chunks", price: 15), Addon(name: "Jalapeños", price: 10), Addon(name: "Raisins", price: 10), Addon(name: "Sunflower Seeds", price: 15), Addon(name: "Apple Slices", price: 15)]
),
Food(
    name: "Onion Rings", 
    description: "Thick-cut onions battered and fried to golden perfection.", 
    imagePath: "assets/images/sid4.jpg", 
    price: 40, 
    category: FoodCategory.sides, 
    availableddons: [Addon(name: "BBQ Sauce", price: 10), Addon(name: "Ranch Dip", price: 15), Addon(name: "Spicy Ketchup", price: 10), Addon(name: "Melted Cheese", price: 20), Addon(name: "Extra Crispy", price: 10)]
),
Food(
    name: "Mozzarella Sticks", 
    description: "Breaded mozzarella sticks fried until crispy and served with marinara sauce.", 
    imagePath: "assets/images/sid5.jpg", 
    price: 55, 
    category: FoodCategory.sides, 
    availableddons: [Addon(name: "Ranch Dip", price: 15), Addon(name: "Spicy Marinara", price: 10), Addon(name: "Extra Cheese", price: 20), Addon(name: "Garlic Butter", price: 15), Addon(name: "Jalapeño Dip", price: 15)]
)
  ];

  //? Getters
  List<Food> get menu =>_menu;
  List<CartItem> get cart => _cart;
  String _deliveryaddress = 'B4 shivdhara Apt';

  /*
    *Operations
  */ 
   List<CartItem> _cart = [];
  /*
    * Add to cart
    * remove from cart
    * total price
    * total items
    * clear cart
  */
  String get deliveraddress => _deliveryaddress;

  void addtoCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartitem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;

      bool isSameAddons = ListEquality().equals(item.selectedaddon,selectedAddons);

      return isSameFood && isSameAddons ;
    });

    if(cartitem != null){
      cartitem.quantity++;
    }

    else {
      _cart.add(CartItem(food: food, selectedaddon: selectedAddons));
    }

    notifyListeners();
  }
  void removeFromCart(CartItem cartItem){
    int cartindex = _cart.indexOf(cartItem);
    if(cartindex != -1){
      if(_cart[cartindex].quantity > 1){
        _cart[cartindex].quantity--;
      }else
      {
        _cart.removeAt(cartindex);
      }
    }
  }

  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart){
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedaddon){
          itemTotal += addon.price; 
      }
      itemTotal+=itemTotal* cartItem.quantity;

    }
    return total ;
  }

  void updateDeliveryAddress(String newAddress) {
    _deliveryaddress = newAddress;
    notifyListeners();
  }

  int GetTotalItemCount() {
    int totalitemCount = 0;
    for(CartItem cartItem in _cart){
      totalitemCount+=cartItem.quantity;
    }
    return totalitemCount;
  }

  void clearCart(){
    _cart.clear();
    notifyListeners();
  }

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here is your receipt");
    receipt.writeln();

    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-----------------");

    for (final cartItem in _cart) {
      receipt.writeln(
          '${cartItem.quantity}x ${cartItem.food.name} - ${_formatprice(cartItem.food.price)}');
          if (cartItem.selectedaddon.isNotEmpty){
            receipt.writeln("   Add ons :   ${_formatAddon(cartItem.selectedaddon)}");
          }
          receipt.writeln();
    }
    
    receipt.writeln("------------------");
    receipt.writeln();
    receipt.writeln('Total Items: ${GetTotalItemCount()}');
    receipt.writeln('Total Price: ₹ ${_formatprice(getTotalPrice())}');

    return receipt.toString();
  }
  String _formatprice (double price) {
    return "₹${price.toStringAsFixed(2)}";
  }

  String _formatAddon( List<Addon> addons) {
    return addons
    .map((addon) => "${addon.name} (${_formatprice(addon.price)})" )
    .join(", ");
  }

}