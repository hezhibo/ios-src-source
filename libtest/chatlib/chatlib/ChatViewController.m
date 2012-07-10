//
//  ChatViewController.m
//  chatlib
//
//  Created by Laurence Tsang on 12-7-9.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ChatViewController.h"
#import "NSBundle+Extension.h"

@interface ChatViewController ()

@end

@implementation ChatViewController
@synthesize ibImageView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIImage *image = [UIImage imageWithContentsOfFile:[[[NSBundle chatResourcesBundle] resourcePath] stringByAppendingPathComponent:@"2.png"]];
    self.ibImageView.image = image;
}

- (void)viewDidUnload
{
    [self setIbImageView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (NSBundle *)getLibraryResourceBundle
{
    return [NSBundle chatResourcesBundle];
}

- (NSString *)getNibName
{
    return @"ChatViewController";
}

- (void)dealloc {
    [ibImageView release];
    [super dealloc];
}
@end
