import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_descriptionbox.dart';
import 'package:food_delivery_app/components/my_drawer.dart';
import 'package:food_delivery_app/components/my_food_page.dart';
import 'package:food_delivery_app/components/my_food_tile.dart';
import 'package:food_delivery_app/components/my_location.dart';
import 'package:food_delivery_app/components/my_sliver_appbar.dart';
import 'package:food_delivery_app/components/my_tab_bar.dart';
import 'package:food_delivery_app/model/food.dart';
import 'package:food_delivery_app/model/restaurant.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  late TabController _tabController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: FoodCategory.values.length, vsync: this);
  }


  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  List<Food> _filterMenuByCategory (FoodCategory category,List<Food> fullMenu){
    return fullMenu.where((food) => food.category == category).toList();
  } 

  List<Widget> getFoodInThisCategory(List<Food> fullMenu){
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);
      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context,index){
          final food = categoryMenu[index];
          return MyFoodTile(
            food: food, 
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FoodPage(food: food,)))
          );
        },
        );
    }).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(headerSliverBuilder: (context,innerBoxisScrolled) =>[
        MySliverAppBar(
        title: MyTabBar(tabController: _tabController),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              indent: 25,
              endIndent: 25,
              color: Theme.of(context).colorScheme.secondary,
              ),

              MyCurrentLocation(),

              MyDescriptionBox()

          ],
        ), 
        
        //title: MyTabBar(tabController: _tabController))
        //title: Text("Title"),
        )
      ], 
      
      body: Consumer<Restaurant> (
        builder: (context,restaurant,child) => TabBarView(
          controller: _tabController,
          children: getFoodInThisCategory(restaurant.menu)),
      )
      ),
    );
  }
}
