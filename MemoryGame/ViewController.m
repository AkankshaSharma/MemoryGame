//
//  ViewController.m
//  MemoryGame
//
//  Created by Guest User on 11-11-15.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize imageviews, topToolbar, bottomToolbar;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    NSArray *cards = [[NSArray alloc] initWithObjects:[UIImage imageNamed:@"Card0.png"],
                                                    [UIImage imageNamed:@"Card1.png"],
                                                    [UIImage imageNamed:@"Card2.png"],
                                                    [UIImage imageNamed:@"Card3.png"],
                                                    [UIImage imageNamed:@"Card4.png"],
                                                    [UIImage imageNamed:@"Card5.png"],
                                                    [UIImage imageNamed:@"Card6.png"],
                                                    [UIImage imageNamed:@"Card7.png"],
                                                    [UIImage imageNamed:@"Card8.png"],
                                                    [UIImage imageNamed:@"CardBack.png"],
                      
                                                        nil];
    
    for(int i = 0; i < 8; i++){
    
        [[imageviews objectAtIndex: i] setImage: [cards objectAtIndex:i]];
        [[imageviews objectAtIndex: i+8] setImage: [cards objectAtIndex:i]];
        
    }
    
    
    [bottomToolbar setTintColor:[[UIColor alloc] initWithRed:.1 green:1 blue:.1 alpha:1]];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
