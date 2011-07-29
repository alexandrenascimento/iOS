//
//  Hello2ViewController.m
//  Hello2
//
//  Created by Alexandre Nascimento on 09/07/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Hello2ViewController.h"

@implementation Hello2ViewController



-(IBAction)botaoClicado:(id)sender{
    label.text = @"Olá Mundo!";
    label.textAlignment = UITextAlignmentCenter;
    label.backgroundColor = [UIColor brownColor];
    label.textColor = [UIColor blueColor];
    
    self.view.backgroundColor = [UIColor whiteColor];
}

-(IBAction)botaoClicado2:(id)sender{
    botao.enabled = NO;
    botao.titleLabel.textColor = [UIColor grayColor];
}

-(IBAction)fazTransparencia:(id)sender{
    labelLoad.alpha = slider.value;
}

-(IBAction)apagaLabel:(id)sender{
    if (meuswitch.on){
        labelLoad.hidden = NO;
        [slider setValue:1.0 animated:YES]; 
    }else{
        labelLoad.hidden = YES;        
        [slider setValue:0.0 animated:YES]; 
    }
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


//Vem comentada por padrão mas é a ação de quando a tela é inicializada.
- (void)viewDidLoad
{
    [super viewDidLoad];
    labelLoad.text = @"ViewDidLoad";
    //criando um label na mão (declaracao, instaciacao e inicializacao) 
    propLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, 150, 20)];
    propLabel.text = @"outro texto";
    [self.view addSubview:propLabel];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
