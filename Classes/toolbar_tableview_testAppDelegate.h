//
//  toolbar_tableview_testAppDelegate.h
//  toolbar-tableview-test
//
//  Created by Chris Kimpton on 23/12/2008.
//  Copyright __MyCompanyName__ 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

@class toolbar_tableview_testViewController;

@interface toolbar_tableview_testAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    toolbar_tableview_testViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet toolbar_tableview_testViewController *viewController;

@end

