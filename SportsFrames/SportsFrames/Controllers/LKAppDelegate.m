//
//  LKAppDelegate.m
//

#import "LKAppDelegate.h"
#import "ContentsViewController.h"

@implementation LKAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  UIViewController *controller = ContentsViewController.new;
  [(UINavigationController *)self.window.rootViewController pushViewController:controller animated:NO];
  controller.navigationItem.title = @"SportsFrames";

  return YES;
}

@end
