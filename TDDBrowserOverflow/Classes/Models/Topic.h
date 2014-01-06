//
//  Topic.h
//  TDDBrowserOverflow
//
//  Created by Jirat K. on 1/6/2557 BE.
//  Copyright (c) 2557 Jirat K. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Topic : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *tag;

- (instancetype)initWithName:(NSString *)newName;
- (instancetype)initWithName:(NSString *)newName tag:(NSString *)newTag;

@end
