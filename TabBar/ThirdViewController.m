//
//  ThirdViewController.m
//  TabBar
//
//  Created by Marian PAUL on 21/03/12.
//  Copyright (c) 2012 IPuP SARL. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

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
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setFrame:CGRectMake(30, 30, 280, 30)];
    [button setTitle:@"Premier controleur de la liste" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(selectFirstViewControllerOfListe:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button2 setFrame:CGRectMake(30, 70, 280, 30)];
    [button2 setTitle:@"Premier controleur" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(selectFirstViewController:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
}

- (void) selectFirstViewControllerOfListe:(id)sender 
{
    UITabBarController *tabController = self.tabBarController;
    // sélection de l'onglet le plus à gauche
    tabController.selectedIndex = 0;    
}

- (void) selectFirstViewController:(id)sender 
{
    UITabBarController *tabController = self.tabBarController;
    
    // retrouver le controleur de la classe FirstViewController
    // on parcourt le tableau des controleurs
    UIViewController *controllerToSelect = nil;
    for (UIViewController *controller in tabController.viewControllers)
        if([controller isKindOfClass:NSClassFromString(@"FirstViewController")])
        {
            controllerToSelect = controller;
            break; // on sort de la boucle
        }
    tabController.selectedViewController = controllerToSelect;    
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
