//
//  FourthViewController.m
//  TabBar
//
//  Created by Marian PAUL on 21/03/12.
//  Copyright (c) 2012 iPuP SARL. All rights reserved.
//

#import "FourthViewController.h"

@interface FourthViewController ()

@end

@implementation FourthViewController

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
    // on met le badge à la valeur 0
    self.tabBarItem.badgeValue = @"0";
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setFrame:CGRectMake(30, 30, 100, 30)];
    [button setTitle:@"++" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(addBadgeValue:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

- (void) addBadgeValue:(id)sender 
{
    // on récupère la valeur du badge
    NSInteger theInteger = [self.tabBarItem.badgeValue integerValue];
    // on incrémente la valeur
    theInteger++;
    // on affiche cette nouvelle valeur
    self.tabBarItem.badgeValue = [NSString stringWithFormat:@"%d", theInteger];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
