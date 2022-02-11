import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SmartWallPreviewView extends StatefulWidget {
  int viewId = -1;

  SmartWallPreviewView(this.viewId);

  @override
  _SmartWallPreviewViewState createState() => _SmartWallPreviewViewState();
}

class _SmartWallPreviewViewState extends State<SmartWallPreviewView> {
  @override
  void dispose() {
    super.dispose();
    print('_SmartWallPreviewViewState dispose');
  }


  @override
  Widget build(BuildContext context) {
    if(defaultTargetPlatform == TargetPlatform.iOS) {
      return UiKitView(
        viewType: 'smart_wall_preview_view',
        onPlatformViewCreated: _onPlatformViewCreated,
      );
    }

    return const Text('UnSupport');
  }

  void _onPlatformViewCreated(int id) {
    widget.viewId = id;
  }
}





// class SmartWallPreviewView extends StatelessWidget {
//   int viewId = -1;
//
//   @override
//   Widget build(BuildContext context) {
//     if(defaultTargetPlatform == TargetPlatform.iOS) {
//       return UiKitView(
//         viewType: 'smart_wall_preview_view',
//         creationParams: {},
//         creationParamsCodec:const StandardMessageCodec(),
//         onPlatformViewCreated: _onPlatformViewCreated,
//       );
//     }
//
//     return const Text('UnSupport');
//   }
//
//   void _onPlatformViewCreated(int id) {
//     viewId = id;
//   }
//
// }
