import 'package:coffeeappui/screeens/coffee_details.dart';
import 'package:flutter/material.dart';

import '../model/coffee_model.dart';
import '../utils/coffee_tile.dart';
import '../utils/coffee_type.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final coffeeModel = CoffeeModel();

  @override
  void initState() {
    super.initState();
    coffeeModel.filteredItems = coffeeModel.shopItems;
    // Set initial value to all grid items
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: const Icon(Icons.menu),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.person),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: " "),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: " "),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: " "),
          ],
        ),
        backgroundColor: Colors.grey[900],
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Find the best coffee for you ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 42),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: "Find your coffee",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade600)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade600))),
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
                height: 50,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: coffeeModel.category.length,
                    itemBuilder: (context, index) {
                      final currentCategoryName =
                          coffeeModel.category[index][0];
                      final currentCategoryId = coffeeModel.category[index][1];
                      final currentCategoryColor =
                          coffeeModel.category[index][2];
                      return CoffeeType(
                          coffeeType: currentCategoryName,
                          color: currentCategoryColor,
                          onTap: () {
                            setState(() {
                              coffeeModel.categorySelection(currentCategoryId);
                            });
                          });
                    })),
            Expanded(
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 2.1,
                    ),
                    padding: const EdgeInsets.all(12.0),
                    itemCount: coffeeModel.filteredItems.length,
                    itemBuilder: (context, index) {
                      final currentCoffeeName =
                          coffeeModel.filteredItems[index][0];
                      final currentCoffeePrice =
                          coffeeModel.filteredItems[index][1];
                      final currentCoffeeTopping =
                          coffeeModel.filteredItems[index][3];
                      final currentCoffeePath =
                          coffeeModel.filteredItems[index][4];
                      return CoffeeTile(
                          itemPath: currentCoffeePath,
                          itemName: currentCoffeeName,
                          itemTopping: currentCoffeeTopping,
                          itemPrice: currentCoffeePrice,
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CoffeeDetails(
                                            currentCoffeeName:
                                                currentCoffeeName,
                                        currentCoffeePath: currentCoffeePath,
                                          )));
                            });
                          });
                    }))
          ],
        ));
  }
}
