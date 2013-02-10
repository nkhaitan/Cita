//
//  LocationViewController.h
//  Cita
//
//  Created by Nilesh Khaitan on 1/26/13.
//  Copyright (c) 2013 Kinvey. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "PullRefreshTableViewController.h"

@interface UpdateLocationCells : UITableViewCell
@end

@interface LocationViewController : PullRefreshTableViewController <UITextFieldDelegate>
@end
