import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartSamples extends StatelessWidget {
  const CartSamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (String imageName in [
          'sneaker',
          'sandals',
          'afro',
          'bracelet'
        ])
        Container(
          height: 110,
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Row(
            children: [

              Radio(
                  value: "",
                  groupValue: "",
                  activeColor: Colors.blueAccent,
                  onChanged: (index) {}),
              Container(
                height: 70,
                width: 70,
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: Image.asset('assets/images/$imageName.jpeg'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'product title',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent),
                    ),
                    Text(
                      '\$20',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent),
                    )
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      CupertinoIcons.delete,
                      color: Colors.red,
                      size: 32,
                    ),
                    Row(
                      children: [
                        Container(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow:  [
                                  BoxShadow(color: Colors.transparent.withOpacity(0.5),
                                   blurRadius: 10,
                                    spreadRadius: 1,
                                  )
                                ]),
                        child: const Icon(
                          CupertinoIcons.plus,
                          color: Colors.black,size: 20,
                        ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow:  [
                                BoxShadow(color: Colors.transparent.withOpacity(0.5),
                                  blurRadius: 10,
                                  spreadRadius: 1,
                                )
                              ]),
                          child: const Icon(
                            CupertinoIcons.minus,
                            color: Colors.black,size: 20,
                          ),

                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
