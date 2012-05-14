//
//  ViewController.m
//  Artistreeapp
//
//  Created by Galina Rybatsky on 4/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize bioContainer;
@synthesize scroller;
@synthesize biolabel, artists, connections;

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
    
    [self createArtists];
    
    Artists* artistToDisplay = [artists objectAtIndex:0];
    //biolabel.text = artistToDisplay.bio;
    
    bioContainer.alpha = 0;
    [scroller setContentSize:CGSizeMake(2022, 1764)];

}

- (IBAction)connectArtists:(id)sender {
    UIButton* buttonTapped = sender;
    
    [bioContainer setFrame:CGRectMake(buttonTapped.frame.origin.x, buttonTapped.frame.origin.y, biolabel.frame.size.width, biolabel.frame.size.height)];
    [UIView beginAnimations:@"fadeIn" context:nil];
    bioContainer.alpha = 1;
    [UIView commitAnimations];
}

- (IBAction)hideBio:(id)sender {
    [UIView beginAnimations:@"fadeOut" context:nil];
    bioContainer.alpha = 0;
    [UIView commitAnimations];
}



-(void)createArtists
{
    Artists* davinci;
    davinci = [[Artists alloc] init];
    davinci.bio = @"djaflfjdas;lkfjas;dlfkjaf";
    
    Artists* michelangelo;
    michelangelo = [[Artists alloc] init];
    michelangelo.bio = @"riutworueirquro";
    
    self.artists = [[NSMutableArray alloc]initWithObjects: davinci, michelangelo, nil]; 
    
}

- (void)viewDidUnload
{
    [self setBiolabel:nil];
    [self setScroller:nil];
    [self setBioContainer:nil];
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
    return YES;
}

@end
