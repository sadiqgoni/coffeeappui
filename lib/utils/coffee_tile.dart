import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String itemPath;
  final String itemName;
  final String itemTopping;
  final String itemPrice;
final  Function()? onTap;
  const CoffeeTile({
    super.key,
    required this.itemPath,
    required this.itemName,
    required this.itemTopping,
    required this.itemPrice, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    itemPath,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        itemName,
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        itemTopping,
                        style: TextStyle(color: Colors.grey[700]),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$$itemPrice'),
                      Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(6)),
                          child: const Icon(Icons.add)),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
