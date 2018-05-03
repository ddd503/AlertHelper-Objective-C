//
//  ViewController.m
//  Alert
//
//  Created by kawaharadai on 2017/10/18.
//  Copyright © 2017年 dai kawahara. All rights reserved.
//

#import "ViewController.h"
#import "AlertHelper.h"

@interface ViewController () <AlertHelperDelegate>
@property (nonnull) AlertHelper *alertHelper;
@end

@implementation ViewController

#pragma mark - LifeCycle Methods
- (void)viewDidLoad {
    [super viewDidLoad];
    self.alertHelper = [AlertHelper new];
    self.alertHelper.delegate = self;
}

#pragma mark - Action Methods
/// プロトコルでメソッド実行
- (IBAction)protocolAlert:(id)sender {
    UIAlertController *alert = [self.alertHelper alertWithProtocol:@"アラート"
                                                           messege:@"プロトコルでアクションを実行"];
    [self presentViewController:alert animated:YES completion:nil];
}

/// ハンドラーでメソッド実行(インスタンス化なし・実行メソッドはコントローラーで指定)
- (IBAction)handlerAlert:(id)sender {
    UIAlertController *alert = [AlertHelper alertWithHandler:@"アラート"
                                                     messege:@"ハンドラーでアクション実行"
                                                     handler:^(UIAlertAction *action) {
                                                         [self hoge];
                                                     }];
    [self presentViewController:alert animated:YES completion:nil];
}

#pragma mark - Private Methods
- (void)hoge {
    NSLog(@"ハンドラーアクション実行");
}

#pragma mark - AlertHelperDelegate Methods
- (void)hogehoge {
    NSLog(@"プロトコルアクション実行");
}

@end
