//import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.68,
      ),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for (String imageName in [
          'sneaker',
          'sandals',
          'ad',
          'afro',
          'bracelet'
        ])
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0), color: Colors.white),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.redAccent,
                        ),
                        child: const Text(
                          '-20%',
                          style: TextStyle(fontSize: 5.0),
                        ),
                      ),
                      const Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.red,
                        size: 30.0,
                      ),
                    ]),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "ProductPage");
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    // padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/images/$imageName.jpeg',
                      height: 80,
                      width: 80,
                    ),
                  ),
                ),
                //SizedBox(height: 50,),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Text(
                    'Product Name',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  //padding: const EdgeInsets.only(bottom: 10.0),
                  child: const Text(
                    'Description',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$55",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 8.0,
                        ),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout,
                        size: 30.0,
                        color: Colors.amber,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}
