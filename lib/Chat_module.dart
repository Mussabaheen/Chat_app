import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController txtcontrol=new TextEditingController();

  void _handledsubmt(String msg)
  {
    txtcontrol.clear();

  }


  Widget _textcomposerWidget ()
  {
    return new IconTheme(
      data: new IconThemeData(
        color: Colors.green,
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: new Row(
          children: <Widget>[
            new Flexible(child: new TextField(
              decoration: new InputDecoration.collapsed(
                hintText: "Enter Your Message",

              ),
              controller: txtcontrol,
              onSubmitted: _handledsubmt,
            ),
            ),
            new Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: new IconButton(
                icon: new Icon(Icons.send),
                onPressed:()=>_handledsubmt(txtcontrol.text),


                ),
            )
          ],
        )
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return _textcomposerWidget();
  }
}
