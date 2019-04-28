import 'package:flutter/material.dart';

import 'package:chat_app/Home_page.dart';
void main()
{

  runApp(new MyApp());

}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.teal,
      ),
      title: "Pakistan Chat",
      home: new HomePage(),
    );

  }

}

