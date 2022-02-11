//
//  SmartWallPlayView.m
//  smart_wall_preview_plugin
//
//  Created by 章凯 on 2021/12/30.
//

#import "SmartWallPlayView.h"

@implementation SmartWallPlayView
{
    int64_t _viewId;
    FlutterMethodChannel *_channel;
    UIView *_view;
}

- (void)dealloc
{
    NSLog(@"SmartWallPlayView dealloc %p  View %p", self, _view);
}

- (instancetype)initWithFrame:(CGRect)frame videIdentifier:(int64_t)viewId arguments:(id)args binaryMessenger:(NSObject<FlutterBinaryMessenger> *)messenger
{
    @autoreleasepool {
        _view = [[UIView alloc] initWithFrame:frame];
        NSLog(@"=============SmartWallPlayView init============== %d %f %p  View %p PlayViewCount %ld viewCount %ld", viewId, frame.size.width, self, _view, CFGetRetainCount((__bridge CFTypeRef) self), CFGetRetainCount((__bridge CFTypeRef) _view));
        _viewId = viewId;
        if(frame.size.width == 0 && frame.size.height == 0) {
            _view.frame = CGRectMake(0, 0, 20, 20);
        }
        _view.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.5];
        
        return self;
    }
}

- (UIView *)view
{
    return _view;
}

- (int)getViewId
{
    return _viewId;
}


@end
