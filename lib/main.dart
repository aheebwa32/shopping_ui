import 'package:ecommerce_ui/pages/cart_page.dart';
import 'package:ecommerce_ui/pages/home_page.dart';
import 'package:ecommerce_ui/pages/product_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        "/":(context)=>const HomePage(),
        "CartPage":(context)=>const CartPage(),
        "ProductPage":(context)=>const ProductPage()
      },
    );
  }
}