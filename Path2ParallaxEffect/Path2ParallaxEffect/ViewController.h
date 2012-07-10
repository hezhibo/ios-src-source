//
//  ViewController.h
//  Path2ParallaxEffect
//
//  Created by Laurence Tsang on 12-7-10.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    CGFloat _headerImageYOffset;
    UIImageView *_headerImage;
}

@property (retain, nonatomic) IBOutlet UITableView *ibTableView;
@end
