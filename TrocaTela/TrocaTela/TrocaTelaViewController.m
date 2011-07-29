//
//  TrocaTelaViewController.m
//  TrocaTela
//
//  Created by Alexandre Nascimento on 10/07/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TrocaTelaViewController.h"
#import "SegundaTelaViewController.h"

@implementation TrocaTelaViewController


-(IBAction)abreSegundaTela{
 //cria objeto com a segunda tela (usando o xib como base)
    SegundaTelaViewController * segTela=[[SegundaTelaViewController alloc]initWithNibName:@"SegundaTelaViewController" bundle:nil];
    //muda a animação de transação
    segTela.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    
    //apresenta a segunda tela de forma modal (sobre a anterior)
    [self presentModalViewController:segTela animated:YES];
    //essa tela já está sendo executada pelo controlador de telas, deve ser liberada!
    [segTela release];
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

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

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
