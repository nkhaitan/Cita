//
//  MessagesViewController.h
//  Cita
//
//  Created by Nilesh Khaitan on 1/26/13.
//  Copyright (c) 2013 Kinvey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PullRefreshTableViewController.h"

@interface UpdateMessageCells : UITableViewCell
@end

@interface MessagesViewController : PullRefreshTableViewController <UITextFieldDelegate>
@end
