//
//  UpdatesViewController.h
//  Cita
//
//  Copyright (c) 2012 Khaitan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PullRefreshTableViewController.h"

@interface UpdatesCell : UITableViewCell 
@end

@interface UpdatesViewController : PullRefreshTableViewController <UITextFieldDelegate>
- (void) startCompose:(id)sender;
- (void) logout;
@end
