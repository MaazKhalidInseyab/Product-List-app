
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  static const platform = const
  MethodChannel('flutterapp.tutorialspoint.com/browser');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView(
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

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  show(BuildContext context){
    showDialog(
      context: context, builder: (BuildContext context) {
      // return object of type Dialog
      return AlertDialog(
        title: new Text("Price"),
        content: new Text("\$$price"),
        actions: <Widget>[
           ElevatedButton(
            child: new Text("Close"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
    );
  }


  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){show(context);},
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(this.name,
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                              Text(this.description),
                              Text("tap for price"),
                            ],
                          )))
                ]),
              ))),
    );
  }
}
