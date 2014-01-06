//
//  Question.m
//  TDDBrowserOverflow
//
//  Created by Jirat K. on 1/6/2557 BE.
//  Copyright (c) 2557 Jirat K. All rights reserved.
//

#import "Question.h"

@interface Question()

@property (nonatomic, strong) NSMutableSet *anwserSet;

@end

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (!self) {
        return nil;
    }
    
    _anwserSet = [[NSMutableSet alloc] init];
    
    return self;
}

- (void)addAnswer:(Answer *)answer
{
    [_anwserSet addObject:answer];
}

- (NSArray *)answers
{
    return [[_anwserSet allObjects] sortedArrayUsingSelector:@selector(compare:)];
}

@end
