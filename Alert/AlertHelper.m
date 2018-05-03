//
//  AlertHelper.m
//  Alert
//
//  Created by kawaharadai on 2017/10/18.
//  Copyright © 2017年 dai kawahara. All rights reserved.
//

#import "AlertHelper.h"

@implementation AlertHelper

- (UIAlertController *)alertWithProtocol:(NSString *)title
                                 messege:(NSString *)messege {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title
                                                                   message:messege
                                                            preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK"
                                                       style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction * _Nonnull action) {
        __weak typeof(self) wself = self;
        if ([wself.delegate respondsToSelector:@selector(hogehoge)]) {
            [wself.delegate hogehoge];
        }
    }];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"cancel"
                                                           style:UIAlertActionStyleCancel
                                                         handler:nil];
    [alert addAction:okAction];
    [alert addAction:cancelAction];
    
    return alert;
}

+ (UIAlertController *)alertWithHandler:(NSString *)title
                                messege:(NSString *)messege
                                handler:(void (^)(UIAlertAction *action))handler {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title
                                                                   message:messege
                                                            preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK"
                                                       style:UIAlertActionStyleDefault
                                                     handler:handler];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"cancel"
                                                           style:UIAlertActionStyleCancel
                                                         handler:nil];
    [alert addAction:okAction];
    [alert addAction:cancelAction];
    
    return alert;
}

@end
