//
//  JAXLoginDTO.h
//  jax
//
//  Created by Michael Johann on 18.04.12.
//  Copyright (c) 2012 rails-experts.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JAXLoginDTO : NSObject

@property(nonatomic, copy) NSString *username;
@property(nonatomic, copy) NSString *password;
@property(nonatomic, copy) NSString *status;

+(void)initMap:(RKObjectManager *)manager;

@end
