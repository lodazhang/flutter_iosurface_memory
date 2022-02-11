//
//  SmartWallPreviewFactory.m
//  smart_wall_preview_plugin
//
//  Created by 章凯 on 2021/12/30.
//

#import "SmartWallPreviewFactory.h"
#import "SmartWallPlayView.h"

@implementation SmartWallPreviewFactory
{
    NSObject<FlutterBinaryMessenger> *_messenger;
    
    NSMutableArray *_viewList;
}

- (instancetype)initWithMessenger:(NSObject<FlutterBinaryMessenger> *)messenger
{
    if(self = [super init]) {
        _messenger = messenger;
        _viewList = [NSMutableArray array];
    }
    
    return self;
}

- (NSObject<FlutterMessageCodec> *)createArgsCodec
{
    return [FlutterStandardMessageCodec sharedInstance];
}

- (NSObject<FlutterPlatformView> *)createWithFrame:(CGRect)frame viewIdentifier:(int64_t)viewId arguments:(id)args
{
    SmartWallPlayView *playView = [[SmartWallPlayView alloc] initWithFrame:frame videIdentifier:viewId arguments:args binaryMessenger:_messenger];
        
    [_viewList addObject:playView];
    return playView;
}


- (UIView *)playViewWithId:(int)viewId;
{
    for(SmartWallPlayView *playView in _viewList) {
        if([playView getViewId] == viewId) {
            return playView.view;
        }
    }
    
    return nil;
}


- (void)removeViewWithId:(int)viewId
{
    UIView *view;
    for(SmartWallPlayView *playView in _viewList) {
        if([playView getViewId] == viewId) {
            view = playView;
            break;
        }
    }
    
    if(view) {
        NSLog(@"removeViewWithId %d %@", viewId, view);
        [_viewList removeObject:view];
    }
}

- (void)clearAllView
{
    [_viewList removeAllObjects];
}


@end
