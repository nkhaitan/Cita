//
//  AppDelegate.m
//  Cita
//
//  Copyright (c) 2012 Khaitan. All rights reserved.
//

#import "AppDelegate.h"
#import <KinveyKit/KinveyKit.h>
#import <FacebookSDK/FacebookSDK.h>
//#import "KCSSignInDelegate.h"
#import "LoginViewContoller.h"

@implementation AppDelegate
@synthesize session;
@synthesize window = _window;


// This is the way Kinvey sets up the sign in window in the KWSignIn app. This incorporates Twitter integration and e-mail verification to name a few.

/*
- (void) setupApplication
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{ //don't call twice but make sure is called on both iOS5 & iOS6
        // Kinvey use Code
        // if not using Twitter for sign in - remove these options keys (set to nil), otherwise supply your app's Twitter credentials
        (void)[[KCSClient sharedClient] initializeKinveyServiceForAppKey:@"kid_TPFFZVGMPJ"
                                                           withAppSecret:@"4a93db8079c94140b745de2a81b19b2f"
                                                            usingOptions:@{KCS_TWITTER_CLIENT_KEY : @"JCXyRzwNyUxm8zPJAzfyw", KCS_TWITTER_CLIENT_SECRET : @"iJUe6XFZX9tP4zBPJqlWKxuR6bHZtZeghtDWuVcs"}];
        
        
        //If not using Facebookf or sign in - remove all the FBSession stuff from your code, otherwise supply your app's Facebook credentials
        //You'll also need supply the appropriate fb### URL callback in the Info.plist file
        self.session = [[FBSession alloc] initWithAppID:@"294122220689439"
                                            permissions:nil
                                        urlSchemeSuffix:nil
                                     tokenCacheStrategy:nil];
        
        
        //Create the Sign-In stuff:
        KCSSignInDelegate* signindelegate = [[KCSSignInDelegate alloc] init];
        signindelegate.signInResponder = self;
        
        //Uncomment to turn on email verification - it's NO by default --> Uncommented.
        signindelegate.shouldSendEmailVerificationAfterSignup = YES;
        signindelegate.emailVerificationRequired = YES; //separate bool to check that verification is required to use the app - some apps allow use even if not verified
        self.signInDelegate = signindelegate;
        
        LoginViewContoller* signInViewController = [[LoginViewContoller alloc] init];
        //signInViewController.signInDelegate = signindelegate;
        
        //Uncomment to use text instead of an image as the Title
        //view.title = @"Welcome to Kinvey SignIn";
        //view.titleType = KWSIgnInViewControllerTitleText;
        
        // set up window
        self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
        self.window.backgroundColor = [UIColor whiteColor];
        
        //Create a navigation controller to put hold signin controller (required)
        UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController:signInViewController];
        nav.navigationBar.barStyle = UIBarStyleBlack;
#if _IS_IOS_6
        nav.restorationIdentifier = @"nav";
#endif
        self.window.rootViewController = nav;
        
        //Uncomment and replace above code with something similiar to show the login controller as a modal view instead of added to the hierarchy
        //    UIViewController* blank = [[UIViewController alloc] init];
        //    blank.view = [[UIView alloc] init];
        //    self.window.rootViewController = blank;
        //    [view showModally];
        //#if _IS_IOS_6
        //    blank.restorationIdentifier = @"blankViewController";
        //#endif
        
        [self.window makeKeyAndVisible];
    });

*/
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //Kinvey use code: You'll need to create an app on the backend and initialize it here:
    //http://docs.kinvey.com/ios-developers-guide.html#Initializing_Programmatically
    (void) [[KCSClient sharedClient] initializeKinveyServiceForAppKey:@"kid_TPFFZVGMPJ"
                                                        withAppSecret:@"4a93db8079c94140b745de2a81b19b2f" 
                                                         usingOptions:@{KCS_TWITTER_CLIENT_KEY : @"JCXyRzwNyUxm8zPJAzfyw", KCS_TWITTER_CLIENT_SECRET : @"iJUe6XFZX9tP4zBPJqlWKxuR6bHZtZeghtDWuVcs"}];
    
   
    //NOTE: the FB APP ID also has to go in the url scheme in StatusShare-Info.plist so the FB callback has a place to go
    self.session = [[FBSession alloc] initWithAppID:@"294122220689439"
                                   permissions:nil
                               urlSchemeSuffix:nil
                            tokenCacheStrategy:nil];

    return YES;
    };

// FBSample logic
// The native facebook application transitions back to an authenticating application when the user
// chooses to either log in, or cancel. The url passed to this method contains the token in the
// case of a successful login. By passing the url to the handleOpenURL method of a session object
// the session object can parse the URL, and capture the token for use by the rest of the authenticating
// application; the return value of handleOpenURL indicates whether or not the URL was handled by the
// session object, and does not reflect whether or not the login was successful; the session object's
// state, as well as its arguments passed to the state completion handler indicate whether the login
// was successful; note that if the session is nil or closed when handleOpenURL is called, the expression
// will be boolean NO, meaning the URL was not handled by the authenticating application
- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation {
    // attempt to extract a token from the url
    return [self.session handleOpenURL:url];
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
