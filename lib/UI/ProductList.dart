import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product_list/UI/ProductBox.dart';
import 'package:product_list/UI/ProductDetails.dart';
import 'package:product_list/main.dart';

class portraitView extends StatelessWidget {
  const portraitView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: [
          ProductBox(
              name: "Iphone 1",
              description: "Another phone with an apple on the back",
              price: 2000,
              image: "iphone1.png"),
          ProductBox(
              name: "Iphone 3",
              description: "Another phone with an apple on the back",
              price: 2001,
              image: "iphone3.png"),
          ProductBox(
              name: "Iphone 4",
              description: "Another phone with an apple on the back",
              price: 2002,
              image: "iphone4.png"),
          ProductBox(
              name: "Iphone 5",
              description: "Another phone with an apple on the back",
              price: 2003,
              image: "iphone5.png"),
          ProductBox(
              name: "Iphone 6",
              description: "Another phone with an apple on the back",
              price: 2004,
              image: "iphone6.png"),
          ProductBox(
              name: "Iphone SE",
              description: "Another phone with an apple on the back",
              price: 2005,
              image: "iphoneSe.png"),
          ProductBox(
              name: "Iphone 7",
              description: "Another phone with an apple on the back",
              price: 2006,
              image: "iphone7.png"),
          ProductBox(
              name: "Iphone 8",
              description: "Another phone with an apple on the back",
              price: 2007,
              image: "iphone8.png"),
          ProductBox(
              name: "Iphone 10",
              description: "Another phone with an apple on the back",
              price: 2008,
              image: "iphone10.png"),
          ProductBox(
              name: "Iphone 11",
              description: "Another phone with an apple on the back",
              price: 2009,
              image: "iphone11.png"),
          ProductBox(
              name: "Iphone 12",
              description: "Another phone with an apple on the back",
              price: 20010,
              image: "iphone12.png"),
        ],
      ),
    );
  }
}



class landscapeView extends StatelessWidget {
  const landscapeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
              children: [
                ProductBox(
                    name: "Iphone 1",
                    description: "Another phone with an apple on the back",
                    price: 2000,
                    image: "iphone1.png"),
                ProductBox(
                    name: "Iphone 3",
                    description: "Another phone with an apple on the back",
                    price: 2001,
                    image: "iphone3.png"),
                ProductBox(
                    name: "Iphone 4",
                    description: "Another phone with an apple on the back",
                    price: 2002,
                    image: "iphone4.png"),
                ProductBox(
                    name: "Iphone 5",
                    description: "Another phone with an apple on the back",
                    price: 2003,
                    image: "iphone5.png"),
                ProductBox(
                    name: "Iphone 6",
                    description: "Another phone with an apple on the back",
                    price: 2004,
                    image: "iphone6.png"),
                ProductBox(
                    name: "Iphone SE",
                    description: "Another phone with an apple on the back",
                    price: 2005,
                    image: "iphoneSe.png"),
                ProductBox(
                    name: "Iphone 7",
                    description: "Another phone with an apple on the back",
                    price: 2006,
                    image: "iphone7.png"),
                ProductBox(
                    name: "Iphone 8",
                    description: "Another phone with an apple on the back",
                    price: 2007,
                    image: "iphone8.png"),
                ProductBox(
                    name: "Iphone 10",
                    description: "Another phone with an apple on the back",
                    price: 2008,
                    image: "iphone10.png"),
                ProductBox(
                    name: "Iphone 11",
                    description: "Another phone with an apple on the back",
                    price: 2009,
                    image: "iphone11.png"),
                ProductBox(
                    name: "Iphone 12",
                    description: "Another phone with an apple on the back",
                    price: 20010,
                    image: "iphone12.png"),
              ],
            ),
          ), Expanded(flex: 3, child: productDetails(name: '',description: '',price: 0,))
        ],
      ),
    );
  }
}