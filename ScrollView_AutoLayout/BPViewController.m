//
//  BPViewController.m
//  ScrollView_AutoLayout
//
//  Created by Justin C. Beck on 5/20/14.
//  Copyright (c) 2014 BeckProduct. All rights reserved.
//

#import "BPViewController.h"

@interface BPViewController ()
{
    UIView *_longView;
}

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation BPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _longView = [[[NSBundle mainBundle] loadNibNamed:@"BPEmbeddedView" owner:nil options:nil] objectAtIndex:0];
    
    [[_longView layer] setBorderColor:[UIColor redColor].CGColor];
    [[_longView layer] setBorderWidth:1.0];
    
    [[self scrollView] addSubview:_longView];
    
    [[[self scrollView] layer] setBorderColor:[UIColor orangeColor].CGColor];
    [[[self scrollView] layer] setBorderWidth:1.0];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [[self scrollView] setContentSize:CGSizeMake(_longView.frame.size.width, _longView.frame.size.height)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
