import 'package:flutter/services.dart';

class HCPWallControlMethodChannel {

  static MethodChannel _channel =  MethodChannel('smart_wall_control_method_channel');

  static final HCPWallControlMethodChannel _hcpWallControlMethodChannel = HCPWallControlMethodChannel._interval();

  // 单例方法
  factory HCPWallControlMethodChannel() {
    return _hcpWallControlMethodChannel;
  }

  HCPWallControlMethodChannel._interval();


  // 获取多语言信息
  Future language(List<String> keyList) async {
    return _channel.invokeMethod('language', {'keyList' : keyList});
  }



  // 开始预览
  Future<bool> startPreview(Map<String, dynamic> deviceInfo)  async{
    final bool result = await _channel.invokeMethod('startPreview', deviceInfo);
    return result;
  }

  // 停止整墙回显
  Future<bool> stopWallPreview() async {
    final bool result = await _channel.invokeMethod('stopWallPreview');
    return result;
  }

  // 停止所有信号源的预览
  void stopAllSignalPreview() async {
    _channel.invokeMethod('stopAllPreview');
  }


  // 跳转到设置界面
  void gotoMine() {
    _channel.invokeMethod('gotoMine');
  }

  // 退出电视墙界面
  void exitWallView() {
    _channel.invokeMethod('exitWallView');
  }

  // 处理原生发送过来的消息
  void setMethodCallHandler(Future<dynamic> Function(MethodCall call) handler) {
    _channel.setMethodCallHandler(handler);
  }


}