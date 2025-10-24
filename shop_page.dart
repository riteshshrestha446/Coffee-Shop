import 'package:flutter/material.dart';
import 'package:practice_app/model/coffee.dart';
import 'package:practice_app/model/coffee_list.dart';
import 'package:practice_app/model/coffee_shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addToCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).addItemFromCart(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.all(25),
          child: Column( 
            children: [

              Text(" Coffee Khani Ho?", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              SizedBox(height: 20,),
              Expanded(
                child: ListView.builder(
                  itemCount: value.coffeeshop.length,
                  itemBuilder: (context, index) {
                    Coffee eachCoffee = value.coffeeshop[index];
                    return CoffeeList(
                      coffee: eachCoffee,
                      icon: Icon(Icons.add),
                      onPressed: () => addToCart(eachCoffee),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
