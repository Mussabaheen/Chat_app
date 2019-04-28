import 'package:flutter/material.dart';
import 'Chat_module.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Pakistan Chat"),
      ),
      body: new ChatScreen(),

    );
  }
}
