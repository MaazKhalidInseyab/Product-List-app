import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class productDetails extends StatefulWidget {
   productDetails({required this.name, required this.description, required this.price});

  late String name2;
  late int price2;
  late String description2;
   String name;
   int price;
   String description;

  @override
  State<productDetails> createState() => _productDetailsState();
}

class _productDetailsState extends State<productDetails> {
  @override
  void initState() {
    // TODO: implement initState

    setState(() {
      widget.name2=this.widget.name;
      widget.price2=this.widget.price;
      widget.description2=this.widget.description;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.name2),
          Text(widget.description2),
          Text("Price : \$"+widget.price2.toString()),
        ],
      ),),
    );
  }
}