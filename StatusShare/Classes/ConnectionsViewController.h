//
//  ConnectionsViewController.h
//  Cita
//
//  Created by Nilesh Khaitan on 1/26/13.
//  Copyright (c) 2013 Khaitan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PullRefreshTableViewController.h"

@interface UpdatesCell : UITableViewCell
@end

@interface ConnectionsViewController : PullRefreshTableViewController <UITextFieldDelegate>
@end
