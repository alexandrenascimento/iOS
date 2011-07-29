//
//  HelloAppDelegate.m
//  Hello
//
//  Created by Alexandre Nascimento on 09/07/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HelloAppDelegate.h"

//importar tela
#import "TelaInicialViewController.h"

@implementation HelloAppDelegate

@synthesize window=_window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSLog(@"Olá!");
    NSString * nome = @"Alexandre";
    NSString * sobreNome = @" Nascimento";
    //Concatenando Strings
    NSString * nomeCompleto = [nome stringByAppendingString:sobreNome];
    
    NSLog(@"Olá %@, eu posso concatenar mais strings como %@ e %@",nomeCompleto, nome, sobreNome);
    
    
    //Váriável tela
    TelaInicialViewController * tela;
    
    //Alocar espaço para a tela
    tela = [TelaInicialViewController alloc];
    
    //inicia tela comod dados da TelaInicialViewController.xib
    //tela = [tela initWithNibName:@"TelaInicialViewController" bundle:nil];
    self.window.rootViewController = tela;
    
    //faz a tela aparecer na window
    [self.window addSubview:tela.view];
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    //Aplicação sairá para background
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
        //Aplicação saiu para background
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

@end
