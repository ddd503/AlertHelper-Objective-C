//
//  AlertHelper.h
//  Alert
//
//  Created by kawaharadai on 2017/10/18.
//  Copyright © 2017年 dai kawahara. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol AlertHelperDelegate <NSObject>
- (void)hogehoge;
@end

@interface AlertHelper : NSObject
@property (nonatomic, weak) id<AlertHelperDelegate> delegate;
- (UIAlertController *)alertWithProtocol:(NSString *)title
                                 messege:(NSString *)messege;
+ (UIAlertController *)alertWithClosure:(NSString *)title
                                messege:(NSString *)messege
                                handler:(void (^)(UIAlertAction *action))handler;
@end
