//
//  RootViewController.m
//  GraphNotifications
//
//  Created by Allen Ballway on 8/23/18.
//  Copyright © 2018 Microsoft. All rights reserved.
//

#import "RootViewController.h"
#import "LoginViewController.h"
#import "NotificationsManager.h"
#import "NotificationsViewController.h"


@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    LoginViewController* loginViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"LoginViewController"];
    NotificationsViewController* notificationsViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"NotificationsViewController"];

    UITabBarItem* loginItem = [[UITabBarItem alloc] initWithTitle:@"Login" image:nil tag:1];
    UITabBarItem* notificationsItem = [[UITabBarItem alloc] initWithTitle:@"Notifications" image:nil tag:2];

    loginViewController.tabBarItem = loginItem;
    notificationsViewController.tabBarItem = notificationsItem;


    self.tabBarController = [UITabBarController new];
    self.tabBarController.viewControllers = @[loginViewController, notificationsViewController];
    self.tabBarController.selectedIndex = 0;

    [self addChildViewController:self.tabBarController];
    [self.view addSubview:self.tabBarController.view];

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
