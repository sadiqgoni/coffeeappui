import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  final String coffeeType;
  final  color;
  final Function()? onTap;
   CoffeeType({
    super.key,
    required this.coffeeType,
     required this.onTap, this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: GestureDetector(
        onTap:  onTap,
        child: Text(
          coffeeType,
          style:  TextStyle(
            fontSize: 18,
            color: color,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
