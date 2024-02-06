import 'package:flutter/material.dart';

import '../widgets/cartBottom_navBar.dart';
import '../widgets/cart_appBar.dart';
import '../widgets/cart_samples.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.grey,
        body: ListView(
          children: [
            const CartAppBar(),
            Container(
              height: 700,
              padding: const EdgeInsets.only(top: 15),
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(35.0),
                    topLeft: Radius.circular(35.0),
                  )),
              child: Column(
                children: [
                  const CartSamples(),
                  Container(
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(15.0)
                    margin: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20.0),
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.add,
                            size: 18,
                            color: Colors.black,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Add to cart',
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: const CartBottomBar());
  }
}
