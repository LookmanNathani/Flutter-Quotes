import 'package:flutter/material.dart';
import './quotes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List quotes = [
    'You are the driver of your own life, don\'t let others drive it',
    'Be simple, Be Amazing',
    'Perfection is an illusion',
    'Success is always slow'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.grey[850],
          title: Text('Awesome Quotes'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ...quotes.map((quote) {
              return Quotes(
                  quote: quote,
                  delete_quote: (){
                    setState(() {
                      quotes.remove(quote);
                    });
                  });
            })
          ],
        ),
      ),
    );
  }
}
