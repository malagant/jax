//
//  JAXLoginViewController.h
//  jax
//
//  Created by Michael Johann on 18.04.12.
//  Copyright (c) 2012 rails-experts.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JAXLoginViewController : UIViewController <RKObjectLoaderDelegate>
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;

- (IBAction)login:(id)sender;
@end
