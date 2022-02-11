
import 'dart:async';

import 'package:flutter/services.dart';

class SmartWallPreviewPlugin {
  static const MethodChannel _channel = MethodChannel('smart_wall_preview_plugin');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<bool> get startPreview async {
    final bool result = await _channel.invokeMethod('startPreview');
    return result;
  }

}
