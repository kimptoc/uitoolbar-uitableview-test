//
//  toolbar_tableview_testViewController.h
//  toolbar-tableview-test
//
//  Created by Chris Kimpton on 23/12/2008.
//  Copyright __MyCompanyName__ 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface toolbar_tableview_testViewController : UITableViewController 
 <UITableViewDelegate, UITableViewDataSource>   {
   NSArray *listData;
     IBOutlet UITableView* tableView;
}

@property (nonatomic, retain) UITableView* tableView;
@property (nonatomic, retain) NSArray *listData;

- (IBAction) btnPressed:(id) sender;

-(IBAction)toggleEdit:(id)sender; 

@end

