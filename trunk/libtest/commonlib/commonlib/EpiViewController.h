//
//  EpiViewController.h
//  commonlib
//
//  Created by Laurence Tsang on 12-7-9.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol EpiViewControllerProtocol <NSObject>

@optional
- (NSBundle *)getLibraryResourceBundle;
- (NSString *)getNibName;

@end

@interface EpiViewController : UIViewController<EpiViewControllerProtocol>

@end
