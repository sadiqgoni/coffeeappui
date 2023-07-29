import 'dart:ui';

import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String name;
  final bool isSelected;

  const MyTab({required this.name, this.isSelected = false, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSelected ? Colors.orange : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          name,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.white : Colors.orange,
          ),
        ),
      ),
    );
  }
}
