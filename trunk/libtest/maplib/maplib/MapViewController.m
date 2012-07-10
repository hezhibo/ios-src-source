//
//  MapViewController.m
//  maplib
//
//  Created by Laurence Tsang on 12-7-9.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "MapViewController.h"
#import "ChatViewController.h"
#import "NSBundle+Extension.h"

@interface MapViewController ()

@end

@implementation MapViewController

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

- (NSBundle *)getLibraryResourceBundle
{
    return [NSBundle mapResourcesBundle];
}

- (NSString *)getNibName
{
    return nil;//@"MapViewController";
}

- (IBAction)starChat:(id)sender {
    
    ChatViewController *chat = [[[ChatViewController alloc] init] autorelease];
    [self.navigationController pushViewController:chat animated:YES];
}
@end
