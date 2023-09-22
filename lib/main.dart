import 'package:flutter/material.dart';

import 'package:product_list/UI/ProductList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.comfortable
      ),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}



class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  // static const platform = const
  // MethodChannel('flutterapp.tutorialspoint.com/browser');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth > 500) {
              return landscapeView();
            } else {
              return portraitView();
            }
          }),
    );
  }
}




