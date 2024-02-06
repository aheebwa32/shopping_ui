import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white38,
      padding: const EdgeInsets.all(2.0),
      child: Row(
        children: [
          const Icon(
            Icons.sort,
            size: 28.0,
            color: Colors.black,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "STEVE'S",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Spacer(),
          badges.Badge(
            badgeContent:
                const Text('3', style: TextStyle(color: Colors.white)),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "CartPage");
              },
              child: const Icon(
                Icons.shopping_bag_outlined,
                size: 30.0,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
