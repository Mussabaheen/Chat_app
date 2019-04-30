import 'package:flutter/material.dart';
import 'message_send.dart';
class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController txtcontrol=new TextEditingController();
  final List<ChatMessage> _message=<ChatMessage>[];

  void _handledsubmt(String msg)
  {
    txtcontrol.clear();
    ChatMessage chatMessage=new ChatMessage(
      f_message: msg,
    );

    setState(() {
      _message.insert(0, chatMessage);
    });

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
    return new Column(
      children: <Widget>[
        new Flexible(

          child: new ListView.builder(padding: new EdgeInsets.all(8.0),
          reverse: true,
            itemBuilder: (_,int index)=>_message[index],
            itemCount: _message.length,
          ),

        ),
        new Divider(height: 1.0,),
        new Container(
          decoration: new BoxDecoration(
            color: Theme.of(context).cardColor,

          ),
          child: _textcomposerWidget(),
        )

      ],

    );
  }
}
