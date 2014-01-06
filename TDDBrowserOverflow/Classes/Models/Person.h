//
//  People.h
//  TDDBrowserOverflow
//
//  Created by Jirat K. on 1/6/2557 BE.
//  Copyright (c) 2557 Jirat K. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, readonly, strong) NSURL *avatarURL;

- (instancetype)initWithName:(NSString *)newName avatarLocation:(NSString *)location;

@end
