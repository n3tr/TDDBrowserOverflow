//
//  Topic.m
//  TDDBrowserOverflow
//
//  Created by Jirat K. on 1/6/2557 BE.
//  Copyright (c) 2557 Jirat K. All rights reserved.
//

#import "Topic.h"
#import "Question.h"

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
    _question = [[NSArray alloc] init];
    
    return self;
}

- (void)addQuestion:(Question *)question
{
    _question = [_question arrayByAddingObject:question];
}

- (NSArray *)recentQuestions
{
    NSArray *sortedArray = [_question sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        Question *q1 = (Question *)obj1;
        Question *q2 = (Question *)obj2;
        return [q2.date compare:q1.date];
    }];
    
    if (sortedArray.count < 21) {
        return sortedArray;
    }
    else{
        return [sortedArray subarrayWithRange:NSMakeRange(0, 20)];
    }
}

@end
