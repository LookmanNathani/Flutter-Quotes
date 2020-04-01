import 'package:flutter/material.dart';
import './main.dart';

class Quotes extends StatelessWidget {
  final String quote;
  final Function delete_quote;
  Quotes({this.quote,this.delete_quote});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      margin: EdgeInsets.fromLTRB(18.0, 16.0, 18.0, 0.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              quote,
              style: TextStyle(
                fontSize: 22,
              ),
            ),
          ),
          FlatButton.icon(
            onPressed: delete_quote,
            label: Text('Remove'),
            icon: Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
