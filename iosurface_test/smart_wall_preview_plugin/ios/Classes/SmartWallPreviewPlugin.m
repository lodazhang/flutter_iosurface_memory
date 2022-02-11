#import "SmartWallPreviewPlugin.h"
#import "SmartWallPlayView.h"
#import "SmartWallPreviewFactory.h"

@interface SmartWallPreviewPlugin()

@property (nonatomic, strong) SmartWallPreviewFactory *factory;

@end

@implementation SmartWallPreviewPlugin

+ (instancetype)sharedInstance
{
    static id instance = nil;
    @synchronized (self) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            if (!instance) {
                instance = [[self alloc] init];
            }
        });
    }
    return instance;
}


+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
    SmartWallPreviewPlugin *instance = [SmartWallPreviewPlugin sharedInstance];
    instance.factory = [[SmartWallPreviewFactory alloc] initWithMessenger:registrar.messenger];
    [registrar registerViewFactory:instance.factory withId:@"smart_wall_preview_view"];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getPlatformVersion" isEqualToString:call.method]) {
    result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
  } else {
    result(FlutterMethodNotImplemented);
  }
}


- (SmartWallPreviewFactory *)previewFactory
{
    return _factory;
}

@end
