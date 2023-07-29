import 'package:flutter/material.dart';

class CoffeeModel {
  final List category = [
    ['ALL', 'all', Colors.orange], // Add the "ALL" category
    ['Cuppicino', 'id001', Colors.white],
    ['Latte', 'id002', Colors.white],
    ['Black', 'id003', Colors.white],
    ['Tea', 'id004', Colors.white],
  ];

  final List shopItems = [
    ['Cuppicino', '4.00',  'id001','with almond milk','images/coffee1.jpg'],
    ['Latte', '2.00', 'id002','with almond egg','images/coffee2.jpg'],
    ['Black', '7.30',  'id003','with almond milk','images/coffee1.jpg'],
    ['Tea', '1.50',  'id004','with peanut milk','images/coffee1.jpg'],
    ['Cuppicino', '4.00', 'id001','with choco milk','images/coffee2.jpg'],
    ['Latte', '2.00',  'id002','with black milk','images/coffee3.jpg'],
    ['Black', '7.30',  'id003','with creche ','images/coffee3.jpg'],
    ['Latte', '2.00',  'id002','with peanut milk','images/coffee2.jpg'],
    ['Tea', '1.50',  'id004','with maize choco','images/coffee1.jpg'],
    ['Black', '7.30',  'id003','with milky milk','images/coffee2.jpg'],
    ['Tea', '1.50', 'id004','with saturated milk','images/coffee3.jpg'],
    ['Cuppicino', '4.00', 'id001','with lemon milk','images/coffee2.jpg'],
  ];




  List filteredItems = [];
  void categorySelection(String indexCategory) {
    // Clear the previous selection by resetting the color of all categories
    for (int i = 0; i < category.length; i++) {
      category[i][2] = Colors.white; // Set font color to white
    }

    // Update the font color of the selected category to orange
    for (int i = 0; i < category.length; i++) {
      if (category[i][1] == indexCategory) {
        category[i][2] = Colors.orange; // Set font color to orange
      }
    }

    // Filter the shopItems based on the selected category
    if (indexCategory == 'all') {
      // Display all grid items
      filteredItems = shopItems;
    } else {
      // Filter grid items based on category ID
      filteredItems =
          shopItems.where((item) => item[2] == indexCategory).toList();
    }
  }
}
