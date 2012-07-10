//
//  EpiViewController.m
//  commonlib
//
//  Created by Laurence Tsang on 12-7-9.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "EpiViewController.h"

@interface EpiViewController ()

@end

@implementation EpiViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)init
{
    NSBundle *bundle = nil;
    NSString *nibName = nil;
    if ([self performSelector:@selector(getLibraryResourceBundle)]) 
    {
        bundle = [self getLibraryResourceBundle];
    }
    
    if ([self respondsToSelector:@selector(getNibName)]) 
    {
        nibName = [self getNibName];
        
        if (!nibName) 
        {
            nibName = NSStringFromClass([self class]);
        }
    }
    else 
    {
        nibName = NSStringFromClass([self class]);
    }
    
    if ((self = [super initWithNibName:nibName bundle:bundle])) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
