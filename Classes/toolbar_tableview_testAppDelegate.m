//
//  toolbar_tableview_testAppDelegate.m
//  toolbar-tableview-test
//
//  Created by Chris Kimpton on 23/12/2008.
//  Copyright __MyCompanyName__ 2008. All rights reserved.
//

#import "toolbar_tableview_testAppDelegate.h"
#import "toolbar_tableview_testViewController.h"

@implementation toolbar_tableview_testAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
