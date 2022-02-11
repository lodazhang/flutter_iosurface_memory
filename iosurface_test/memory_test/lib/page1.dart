import 'package:flutter/material.dart';
import 'package:memory_test/page2.dart';
import 'package:smart_wall_preview_plugin/smart_wall_preview_view.dart';

import 'mt.dart';


class TPage1 extends StatefulWidget {
  @override
  _TPage1State createState() => _TPage1State();
}

class _TPage1State extends State<TPage1> {

  @override
  void dispose() {
    super.dispose();
    HCPWallControlMethodChannel().exitWallView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page1'),
      ),
      body: Container(
        color: Colors.red,
        alignment: Alignment.center,
        child: ListView.builder(
          itemCount: 1000,
          itemBuilder: (context, index) {
            return Container(
              width: 100,
              height: 100,
              padding: EdgeInsets.all(10),
              child: SmartWallPreviewView(1),
            );
          },
        ),
      ),
    );
  }

}

