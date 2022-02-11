

import 'package:flutter/material.dart';
import 'package:memory_test/page1.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page2'),
      ),
      body: Container(
        color: Colors.green,
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => TPage1()));
          },
          child: Align(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.black38,
            ),
          ),
        ),
      ),
    );
  }
}
