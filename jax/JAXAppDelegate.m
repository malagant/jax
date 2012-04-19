//
//  JAXAppDelegate.m
//  jax
//
//  Created by Michael Johann on 18.04.12.
//  Copyright (c) 2012 rails-experts.com. All rights reserved.
//

#import "JAXAppDelegate.h"
#import "JAXViewController.h"

@implementation JAXAppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    JAXViewController *jvc = [[JAXViewController alloc] init];
    UINavigationController *unc = [[UINavigationController alloc] initWithRootViewController:jvc];
    unc.navigationBar.tintColor = [UIColor blackColor];
    unc.navigationBar.topItem.title = @"JAX 2012";
    self.window.rootViewController = unc;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
