import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/categories_list.dart';
import '../widgets/home_appBar.dart';
import '../widgets/product_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            const HomeAppBar(),
            Container(
              padding: const EdgeInsets.only(),
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0))),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    height: 50.0,
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: "search here...",
                              hintStyle: TextStyle(
                                color: Colors.black, // Set hint text color
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.search,
                          size: 25.0,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text('Categories',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[800])),
                  ),
                  const CategoriesList(),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 20.0),
                    child: const Text(
                      'Popular',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const ProductList()
                ],
              ),
            )
          ],
        ),
        extendBody: true,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 4.0,
          child: CurvedNavigationBar(
            items: const [
               Icon(
                Icons.home,
                size: 30,
                color: Colors.black,
              ),
              Icon(Icons.shopping_cart, size: 30, color: Colors.black),
              Icon(Icons.list, size: 30, color: Colors.black),
            ],
            backgroundColor: Colors.blueAccent,
            height: 50.0,
            onTap: (index) {},
          ),
        ));
  }
}
