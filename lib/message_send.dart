import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
   var _name="Mussabaheen";
    String f_message;

   ChatMessage()
   {
     this.f_message;
   }

  @override
  Widget build(BuildContext context) {




    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            margin:  const EdgeInsets.only(right: 16.0),
            child: new CircleAvatar(
              child: new Text(_name),

            ),

          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(_name,style: Theme.of(context).textTheme.subhead),
              new Container(
                margin: const EdgeInsets.only(top: 2.0),
                child: new Text(f_message),
              ),
            ],
          )
        ],

      ),
    );
  }
}
