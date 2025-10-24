import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottonNavBar extends StatelessWidget {
  final void Function(int) whenTapButton;
  const MyBottonNavBar({super.key, required this.whenTapButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      
      child: GNav(
        onTabChange: (value)=>whenTapButton(value),
        color: Colors.grey.shade700,
        activeColor: Colors.grey,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 20,
        tabActiveBorder: Border.all(color: Colors.white60),
        tabBackgroundColor: Colors.white38,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'shop',
          ),
          GButton(
            icon: Icons.shop_outlined,
            text: 'cart',
          )
        ],
      ),
    );
  }
}
