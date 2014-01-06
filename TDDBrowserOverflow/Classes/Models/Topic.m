//
//  Topic.m
//  TDDBrowserOverflow
//
//  Created by Jirat K. on 1/6/2557 BE.
//  Copyright (c) 2557 Jirat K. All rights reserved.
//

#import "Topic.h"

@implementation Topic

- (instancetype)initWithName:(NSString *)newName
{
    return [self initWithName:newName tag:nil];
}

- (instancetype)initWithName:(NSString *)newName tag:(NSString *)newTag
{
    self = [super init];
    if (!self) {
        return nil;
    }
    
    _name = newName;
    _tag = newTag;
    
    return self;
}

@end
