//
//  JAXLoginViewController.m
//  jax
//
//  Created by Michael Johann on 18.04.12.
//  Copyright (c) 2012 rails-experts.com. All rights reserved.
//

#import "JAXLoginViewController.h"
#import "JAXLoginDTO.h"

@interface JAXLoginViewController ()

@end

@implementation JAXLoginViewController
@synthesize username;
@synthesize password;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload {
    [self setUsername:nil];
    [self setPassword:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)login:(id)sender {
    JAXLoginDTO *loginDTO = [[JAXLoginDTO alloc] init];
    loginDTO.username = self.username.text;
    loginDTO.password = self.password.text;

    RKObjectManager *manager = [RKObjectManager sharedManager];
    if ([[RKObjectManager sharedManager].client isNetworkAvailable]) {
        [manager postObject:loginDTO delegate:self];
    } else {
        [[UIAlertView alloc] initWithTitle:@"ERROR" message:@"Network unreachable. Please try again." delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
    }
}

- (void)objectLoader:(RKObjectLoader *)objectLoader didFailWithError:(NSError *)error {
    NSLog(@"Error: %@", error);
    [[UIAlertView alloc] initWithTitle:@"ERROR" message:[NSString stringWithFormat:@"%@", error.description] delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
}

@end
