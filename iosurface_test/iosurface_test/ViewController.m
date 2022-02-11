//
//  ViewController.m
//  iosurface_test
//
//  Created by 章凯 on 2022/1/19.
//

#import "ViewController.h"
#import "MyFlutterViewController.h"
#import <Masonry.h>
#import <GeneratedPluginRegistrant.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *gotoFlutter = [UIButton new];
    [gotoFlutter setTitle:@"GO2 Flutter" forState:UIControlStateNormal];
    [gotoFlutter setBackgroundColor:[UIColor redColor]];
    [gotoFlutter addTarget:self action:@selector(gotoFlutter) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:gotoFlutter];
    [gotoFlutter mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(@(100));
        make.height.equalTo(@(50));
        make.center.equalTo(self.view);
    }];
    
    
    
}


- (void)gotoFlutter
{
    MyFlutterViewController *vc = [[MyFlutterViewController alloc] init];
    
    [GeneratedPluginRegistrant registerWithRegistry:vc];
    
    [self presentViewController:vc animated:YES completion:nil];
}


@end
