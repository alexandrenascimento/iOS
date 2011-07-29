//
//  TrocaTelaAppDelegate.h
//  TrocaTela
//
//  Created by Alexandre Nascimento on 10/07/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TrocaTelaViewController;

@interface TrocaTelaAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet TrocaTelaViewController *viewController;

@end
