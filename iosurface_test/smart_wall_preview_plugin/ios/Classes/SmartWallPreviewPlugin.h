#import <Flutter/Flutter.h>

@class SmartWallPreviewFactory;

@interface SmartWallPreviewPlugin : NSObject<FlutterPlugin>


+ (instancetype)sharedInstance;

- (SmartWallPreviewFactory *)previewFactory;

@end
