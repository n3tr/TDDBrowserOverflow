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
    NSArray *newQuestions = [_question arrayByAddingObject:question];
    if ([newQuestions count] > 20) {
        newQuestions = [self sortQuestionsLatestFirst:newQuestions];
        newQuestions = [newQuestions subarrayWithRange:NSMakeRange(0, 20)];
    }

    _question = newQuestions;
}


- (NSArray *)recentQuestions
{
    return [self sortQuestionsLatestFirst:_question];
}

- (NSArray *)sortQuestionsLatestFirst:(NSArray *)questions
{
    return [questions sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        Question *q1 = (Question *)obj1;
        Question *q2 = (Question *)obj2;
        return [q2.date compare:q1.date];
    }];
    
   
}

@end
