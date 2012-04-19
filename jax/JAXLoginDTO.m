//
//  JAXLoginDTO.m
//  jax
//
//  Created by Michael Johann on 18.04.12.
//  Copyright (c) 2012 rails-experts.com. All rights reserved.
//

#import "JAXLoginDTO.h"

@implementation JAXLoginDTO

@synthesize username = _username;
@synthesize password = _password;
@synthesize status = _status;


+(void)initMap:(RKObjectManager *)manager {
    manager.serializationMIMEType = RKMIMETypeJSON;
    RKObjectMapping *mapping = [RKObjectMapping mappingForClass:[JAXLoginDTO class]];
    [mapping mapAttributes:@"username", @"password", @"status", nil];
    [manager.mappingProvider setSerializationMapping:[mapping inverseMapping] forClass:[JAXLoginDTO class]];
    [manager.mappingProvider setMapping:mapping forKeyPath:@"result"];
    [manager.router routeClass:[JAXLoginDTO class] toResourcePath:@"/logins"];
}

@end
