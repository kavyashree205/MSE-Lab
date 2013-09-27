//
//  IOS_MSEViewController.m
//  Login
//
//  Created by pesit on 03/09/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "IOS_MSEViewController.h"

@implementation IOS_MSEViewController
@synthesize userName;
@synthesize password;



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Navigating from one view to another
    
    
}

- (void)viewDidUnload
{
    [self setUserName:nil];
    [self setPassword:nil];
    [super viewDidUnload];
    //Initializing
}

- (void)viewWillAppear:(BOOL)animated
{
    //Initially to show empty textbox ,and erase content after return to view
    [super viewWillAppear:animated];
    userName.text = @"";
    password.text = @"";
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
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)loginButtonAction:(id)sender {
    
    if([userName.text isEqualToString:password.text])
    {
        NSLog(@"Authenticating...");
         
        WelcomeViewController * wvc = [[WelcomeViewController alloc] initWithNibName:@"WelcomeViewController" bundle:nil];
        [wvc setUsername:userName.text];
        [self presentModalViewController:wvc animated:YES];
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Login" message:@"Mis-match between Username and password. \n Hint:Password same as Username" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }
}
- (IBAction)hideKeyboard:(id)sender {
    NSLog(@"check keyboard");
    [self.view endEditing:YES];
}


@end
