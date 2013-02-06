//
//  RequestsViewController.h
//  Cita
//
//  Created by Nilesh Khaitan on 2/1/13.
//  Copyright (c) 2013 Kinvey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PullRefreshTableViewController.h"

@interface UpdateThemCells : UITableViewCell
@end

@interface RequestsViewController : PullRefreshTableViewController <UITextFieldDelegate>
@end
