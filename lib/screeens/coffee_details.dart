import 'package:flutter/material.dart';

class CoffeeDetails extends StatelessWidget {
  final currentCoffeeName;
  final currentCoffeePath;
  CoffeeDetails({
    Key? key,
    required this.currentCoffeeName,
    required this.currentCoffeePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   actions: [
      //     Container(
      //       padding: EdgeInsets.all(8),
      //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),   color: Colors.grey[700],),
      //
      //       child: IconButton(
      //         icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
      //         onPressed: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //     )
      //   ],
      //   leading:  Container(
      //     padding: EdgeInsets.all(8),
      //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),   color: Colors.grey[700],),
      //
      //     child: IconButton(
      //       icon: Icon(Icons.favorite,color: Colors.white,),
      //       onPressed: () {
      //
      //         Navigator.pop(context);
      //       },
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(currentCoffeePath),
              )
            ],
          ),
        ),
      ),
    );
  }
}
