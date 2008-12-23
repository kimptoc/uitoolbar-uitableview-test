//
//  toolbar_tableview_testViewController.m
//  toolbar-tableview-test
//
//  Created by Chris Kimpton on 23/12/2008.
//  Copyright __MyCompanyName__ 2008. All rights reserved.
//

#import "toolbar_tableview_testViewController.h"

@implementation toolbar_tableview_testViewController

@synthesize listData;

- (IBAction) btnPressed:(id) sender
{
    UIAlertView *alert = [[UIAlertView alloc] 
                          initWithTitle:@"did it" 
                          message:@"button pressed"
                          delegate:self 
                          cancelButtonTitle:@"Phew!" 
                          otherButtonTitles:nil]; 
    [alert show]; 
    [alert release]; 
    
}


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    NSArray *array = [[NSArray alloc] initWithObjects:@"Sleepy", @"Sneezy", 
                      @"Bashful", @"Happy", @"Doc", @"Grumpy", @"Dopey", @"Thorin", 
                      @"Dorin", @"Nori", @"Ori", @"Balin", @"Dwalin", @"Fili", @"Kili", 
                      @"Oin", @"Gloin", @"Bifur", @"Bofur", @"Bombur", nil]; 
    self.listData = array; 
    [array release]; 
    
    
    [super viewDidLoad];
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
    [super dealloc];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView 
 numberOfRowsInSection:(NSInteger)section 
{ 
    return [self.listData count]; 
} 

- (UITableViewCell *)tableView:(UITableView *)tableView 
         cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{ 
    static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier"; 
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: 
                             SimpleTableIdentifier]; 
    if (cell == nil) { 
        cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero 
                                       reuseIdentifier: SimpleTableIdentifier] autorelease]; 
    } 
    NSUInteger row = [indexPath row]; 
    cell.text = [listData objectAtIndex:row]; 
    return cell; 
} 

@end
