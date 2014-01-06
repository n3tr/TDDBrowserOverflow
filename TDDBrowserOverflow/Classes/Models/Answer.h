//
//  Answer.h
//  TDDBrowserOverflow
//
//  Created by Jirat K. on 1/6/2557 BE.
//  Copyright (c) 2557 Jirat K. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Person;

@interface Answer : NSObject

@property (nonatomic, copy) NSString *text;
@property (nonatomic, strong) Person *person;
@property (nonatomic, assign) NSInteger score;
@property (nonatomic, assign, getter = isAccepted) BOOL accepted;

- (NSComparisonResult)compare:(Answer *)otherAnswer;

@end
