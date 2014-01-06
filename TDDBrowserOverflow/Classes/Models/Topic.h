//
//  Topic.h
//  TDDBrowserOverflow
//
//  Created by Jirat K. on 1/6/2557 BE.
//  Copyright (c) 2557 Jirat K. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Question;

@interface Topic : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *tag;
@property (nonatomic, strong) NSArray *question;

- (instancetype)initWithName:(NSString *)newName;
- (instancetype)initWithName:(NSString *)newName tag:(NSString *)newTag;

- (void)addQuestion:(Question *)question;

- (NSArray *)recentQuestions;

@end
