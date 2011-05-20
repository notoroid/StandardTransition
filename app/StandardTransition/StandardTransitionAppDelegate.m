//
//  StandardTransitionAppDelegate.m
//  StandardTransition
//
//  Created by Kaname Noto on 11/05/20.
//  Copyright 2011 Irimasu Densan Planning. All rights reserved.
//

#import "StandardTransitionAppDelegate.h"

#import "StandardTransitionViewController.h"

@implementation StandardTransitionAppDelegate

@synthesize window=_window;
@synthesize navigationController=_navigationController;
@synthesize setupViewController=_setupViewController;


- (void) firedStart:(id)sender 
{
    [UIView transitionFromView:self.setupViewController.view toView:self.navigationController.view
                      duration:1.0f options:UIViewAnimationOptionTransitionFlipFromRight completion:^(BOOL finished){
            self.window.rootViewController = self.navigationController;
          self.navigationController = nil;
        }
    ];
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window.rootViewController = self.setupViewController;
    [self.window makeKeyAndVisible];
    
    [self performSelector:@selector(firedStart:) withObject:nil afterDelay:3.0f];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{

}

- (void)applicationDidEnterBackground:(UIApplication *)application
{

}

- (void)applicationWillEnterForeground:(UIApplication *)application
{

}

- (void)applicationDidBecomeActive:(UIApplication *)application
{

}

- (void)applicationWillTerminate:(UIApplication *)application
{

}

- (void)dealloc
{
    [_window release];
    [_navigationController release];
    [_setupViewController release];
    [super dealloc];
}

@end
