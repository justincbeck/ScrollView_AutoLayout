//
//  BPViewController.m
//  ScrollView_AutoLayout
//
//  Created by Justin C. Beck on 5/20/14.
//  Copyright (c) 2014 BeckProduct. All rights reserved.
//

#import "BPViewController.h"

@interface BPViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation BPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIView *longView = [[[NSBundle mainBundle] loadNibNamed:@"BPEmbeddedView" owner:nil options:nil] objectAtIndex:0];
    
    [[longView layer] setBorderColor:[UIColor redColor].CGColor];
    [[longView layer] setBorderWidth:1.0];
    
    [[self scrollView] addSubview:longView];
    [[self scrollView] setContentSize:CGSizeMake(longView.frame.size.width, longView.frame.size.height)];
    
    [[[self scrollView] layer] setBorderColor:[UIColor orangeColor].CGColor];
    [[[self scrollView] layer] setBorderWidth:1.0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
