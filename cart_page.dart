import 'package:flutter/material.dart';
import 'package:practice_app/model/coffee.dart';
import 'package:practice_app/model/coffee_list.dart';
import 'package:practice_app/model/coffee_shop.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeCart(Coffee coffee){
    Provider.of<CoffeeShop>(context,listen: false).removeItemFromCart(coffee);
  }
  
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
   builder: (context, value, child) => SafeArea(
  child: Padding(padding:EdgeInsets.all(25),
  child: Column(
    children: [

      Expanded(
        child: ListView.builder(
        itemCount: value.userCart.length,
        itemBuilder: (context,index){
          Coffee eachCoffee=value.userCart[index];
          return CoffeeList(coffee: eachCoffee, onPressed:()=>removeCart(eachCoffee), icon: Icon(Icons.delete));
        }),
      )
    ],

  ),
  
  
  ),


  ),

    );
  }
}
