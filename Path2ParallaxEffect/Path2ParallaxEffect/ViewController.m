//
//  ViewController.m
//  Path2ParallaxEffect
//
//  Created by Laurence Tsang on 12-7-10.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize ibTableView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Create an empty table header view with small bottom border view
    UIView *tableHeaderView = [[UIView alloc] initWithFrame: CGRectMake(0.0, 0.0, self.view.frame.size.width, 180.0)];
    UIView *blackBorderView = [[UIView alloc] initWithFrame: CGRectMake(0.0, 179.0, self.view.frame.size.width, 1.0)];
    blackBorderView.backgroundColor = [UIColor colorWithRed: 0.0 green: 0.0 blue: 0.0 alpha: 0.8];
    [tableHeaderView addSubview: blackBorderView];
    [blackBorderView release];
    ibTableView.tableHeaderView = tableHeaderView;
    [tableHeaderView release];
    
    // Create the underlying imageview and offset it
    _headerImageYOffset = -50.0;
    _headerImage = [[UIImageView alloc] initWithImage: [UIImage imageNamed: @"1.jpg"]];
    CGRect headerImageFrame = _headerImage.frame;
    headerImageFrame.origin.y = _headerImageYOffset;
    _headerImage.frame = headerImageFrame;
    [self.view addSubview:_headerImage];
    [self.view insertSubview: _headerImage belowSubview: ibTableView];
    
    //ibTableView.separatorStyle               = UITableViewCellSeparatorStyleNone;
    [ibTableView setBackgroundColor:[UIColor clearColor]];
}

- (void)viewDidUnload
{
    [self setIbTableView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)dealloc {
    [ibTableView release];
    [super dealloc];
}

#pragma mark - UITableViewDelegate

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentity1 = @"CellIdentity1";
    
    UITableViewCell *cell = nil; 
    {
        cell = [tableView dequeueReusableCellWithIdentifier:cellIdentity1];
        if (!cell) {
            cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentity1] autorelease];
            cell.contentView.backgroundColor = [UIColor whiteColor];
            cell.selectionStyle              = UITableViewCellSelectionStyleNone;
        }
    }
    
    return cell;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView 
{
    CGFloat scrollOffset = scrollView.contentOffset.y;
    CGRect headerImageFrame = _headerImage.frame;
    
    if (scrollOffset < 0) 
    {
        // Adjust image proportionally
        headerImageFrame.origin.y = _headerImageYOffset - ((scrollOffset / 3));
        if (headerImageFrame.origin.y  > 0) 
        {
            headerImageFrame.origin.y = 0;
        }
    } else {
        // We're scrolling up, return to normal behavior
        headerImageFrame.origin.y = _headerImageYOffset - scrollOffset;
    }
    _headerImage.frame = headerImageFrame;
}
@end
