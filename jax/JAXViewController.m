//
//  JAXViewController.m
//  jax
//
//  Created by Michael Johann on 18.04.12.
//  Copyright (c) 2012 rails-experts.com. All rights reserved.
//

#import "JAXViewController.h"
#import "JAXLoginViewController.h"

@interface JAXViewController ()

@end

@implementation JAXViewController
@synthesize menu;
@synthesize menuItems = _menuItems;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.menuItems = [[NSMutableArray alloc] initWithCapacity:2];

        UITableViewCell *registerCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"registerCell"];
        registerCell.textLabel.text = @"Register";
        registerCell.tag = 1;
        registerCell.detailTextLabel.text = @"Register a new account";

        UITableViewCell *loginCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"loginCell"];
        loginCell.textLabel.text = @"Login";
        loginCell.tag = 2;
        loginCell.detailTextLabel.text = @"Login to your account";

        [self.menuItems addObject:registerCell];
        [self.menuItems addObject:loginCell];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 1) {
        JAXLoginViewController *jvc = [[JAXLoginViewController alloc] init];
        [self.navigationController pushViewController:jvc animated:YES];
    }
}

- (void)viewDidUnload
{
    [self setMenu:nil];
    self.menuItems = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.menuItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [self.menuItems objectAtIndex:(NSUInteger) indexPath.row];
}


@end
