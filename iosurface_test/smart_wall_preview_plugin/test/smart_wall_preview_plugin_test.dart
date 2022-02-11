import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_wall_preview_plugin/smart_wall_preview_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('smart_wall_preview_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await SmartWallPreviewPlugin.platformVersion, '42');
  });
}
