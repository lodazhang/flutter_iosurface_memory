import 'package:flutter/material.dart';
import 'package:memory_test/mt.dart';
import 'page1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: MyHomePage('Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage(this.title);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Root'),
        leading: GestureDetector(
          onTap: (){
            HCPWallControlMethodChannel().exitWallView();
          },
          child: Container(
            width: 40,
            height: 40,
            color: Colors.green,
          ),
        ),
      ),
      body: Container(
          color: Colors.red,
          child: GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => TPage1()));
            },
            child: Align(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.white,
              ),
            ),
          )
      ),
    );
  }


}
