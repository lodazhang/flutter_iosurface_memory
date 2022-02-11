//
//  SmartWallPlayView.h
//  smart_wall_preview_plugin
//
//  Created by 章凯 on 2021/12/30.
//

#import <Flutter/Flutter.h>

NS_ASSUME_NONNULL_BEGIN

@interface SmartWallPlayView : NSObject <FlutterPlatformView>

- (instancetype)initWithFrame:(CGRect)frame videIdentifier:(int64_t)viewId arguments:(id _Nullable)args binaryMessenger:(NSObject<FlutterBinaryMessenger> *)messenger;

// 返回viewID
- (int)getViewId;

@end

NS_ASSUME_NONNULL_END
