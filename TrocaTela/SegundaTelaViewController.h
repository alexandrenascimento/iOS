//
//  SegundaTelaViewController.h
//  TrocaTela
//
//  Created by Alexandre Nascimento on 10/07/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SegundaTelaViewController : UIViewController {
    IBOutlet UILabel * lblinfo; 
}
-(IBAction)voltar;

@property (nonatomic, retain) UILabel * lblinfo;

@end
