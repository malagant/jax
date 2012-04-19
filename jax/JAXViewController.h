//
//  JAXViewController.h
//  jax
//
//  Created by Michael Johann on 18.04.12.
//  Copyright (c) 2012 rails-experts.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JAXViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *menu;


@property(nonatomic, strong) NSMutableArray *menuItems;
@end
