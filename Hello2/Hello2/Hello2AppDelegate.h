//
//  Hello2AppDelegate.h
//  Hello2
//
//  Created by Alexandre Nascimento on 09/07/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Hello2ViewController;

@interface Hello2AppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet Hello2ViewController *viewController;

@end
