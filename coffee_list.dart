import 'package:flutter/material.dart';

import 'coffee.dart';

class CoffeeList extends StatelessWidget {
  void Function()? onPressed;
  CoffeeList({
    super.key,
    required this.coffee,
    required this.onPressed,
    required this.icon,
  });
   final Coffee coffee;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.only(bottom: 13),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: ListTile(
        leading: Image.asset(coffee.imagePath),
        title: Text(coffee.name),
        subtitle: Text("${coffee.price}"),
        trailing: IconButton(
          icon: icon,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
