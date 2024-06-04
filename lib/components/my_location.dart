import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/model/restaurant.dart';
import 'package:provider/provider.dart';

class MyCurrentLocation extends StatelessWidget {
   MyCurrentLocation({super.key});
  final textcontroller = TextEditingController();
  void openLocationSearchBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Your Location"),
              content: TextFormField(
                 controller: textcontroller,
                decoration: InputDecoration(
                  hintText: "Enter Address...",
                ),
              ),
              actions: [
                MaterialButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text("Cancel")),
                MaterialButton(
                    onPressed: () { 
                      String newAddress = textcontroller.text;
                      context.read<Restaurant>().updateDeliveryAddress(newAddress);
                      Navigator.pop(context);
                      },
                    child: Text("Save")),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 10.0, top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver Now",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                Consumer<Restaurant>(builder:(context,restaurant , child) => 
                Text(
                  restaurant.deliveraddress,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold),
                ),
                ),
                Icon(Icons.keyboard_arrow_down_rounded),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
