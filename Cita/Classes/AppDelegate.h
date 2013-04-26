//
//  AppDelegate.h
//  Cita
//
//  Copyright (c) 2012 Khaitan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) FBSession* session;
@property (nonatomic, strong) id signInDelegate;

@end
