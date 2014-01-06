//
//  Question.h
//  TDDBrowserOverflow
//
//  Created by Jirat K. on 1/6/2557 BE.
//  Copyright (c) 2557 Jirat K. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic, strong) NSDate *date;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, assign) NSInteger score;

@end
