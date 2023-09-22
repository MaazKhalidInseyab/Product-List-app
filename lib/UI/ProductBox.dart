import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product_list/UI/ProductDetails.dart';

class ProductBox extends StatelessWidget {
  ProductBox({Key? key,
    required this.name,
    required this.description,
    required this.price,
    required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;



  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        productDetails(name: name, description: description, price: price,);
        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
            productDetails(
              name: name, description: description, price: price,),));
      },
      child: Container(
          padding: EdgeInsets.all(2),
          height: 120,
          child: Card(
              color: Colors.white54,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset("assets/images/" + image),
                      Expanded(
                          child: Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text(this.name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text(this.description),
                                  Text("tap for price"),
                                ],
                              )))
                    ]),
              ))),
    );
  }


}