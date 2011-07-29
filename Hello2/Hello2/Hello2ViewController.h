//
//  Hello2ViewController.h
//  Hello2
//
//  Created by Alexandre Nascimento on 09/07/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Hello2ViewController : UIViewController {
    IBOutlet UIButton * botao;
    IBOutlet UIButton * botao2;    
    IBOutlet UILabel *label;
    IBOutlet UILabel *labelLoad;
    IBOutlet UISlider * slider;
    UILabel * propLabel;
    IBOutlet UISwitch * meuswitch;
}

@property (nonatomic, retain) UILabel * propLabel;

-(IBAction)botaoClicado:(id)sender;
-(IBAction)botaoClicado2:(id)sender;
-(IBAction)fazTransparencia:(id)sender;
-(IBAction)apagaLabel:(id)sender;

@end
