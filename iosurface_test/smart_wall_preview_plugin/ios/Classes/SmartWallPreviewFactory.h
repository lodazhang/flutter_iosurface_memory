//
//  SmartWallPreviewFactory.h
//  smart_wall_preview_plugin
//
//  Created by 章凯 on 2021/12/30.
//

#import <Flutter/Flutter.h>

NS_ASSUME_NONNULL_BEGIN

@interface SmartWallPreviewFactory : NSObject

- (instancetype)initWithMessenger:(NSObject <FlutterBinaryMessenger> *)messenger;

- (NSObject<FlutterMessageCodec> *)createArgsCodec;

- (NSObject<FlutterPlatformView> *)createWithFrame:(CGRect)frame viewIdentifier:(int64_t)viewId arguments:(id)args;

// 根据ID找到View
- (UIView *)playViewWithId:(int)viewId;

// 根据ID删除指定View
- (void)removeViewWithId:(int)viewId;

// 清空所有的View
- (void)clearAllView;


@end

NS_ASSUME_NONNULL_END
