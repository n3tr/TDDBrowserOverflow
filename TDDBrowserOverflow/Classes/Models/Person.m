//
//  People.m
//  TDDBrowserOverflow
//
//  Created by Jirat K. on 1/6/2557 BE.
//  Copyright (c) 2557 Jirat K. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString *)newName avatarLocation:(NSString *)location
{
    self = [super init];
    if (!self) {
        return nil;
    }
    
    _name = newName;
    _avatarURL = [NSURL URLWithString:location];
    
    return self;
}

@end
