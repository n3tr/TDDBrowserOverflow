//
//  Answer.m
//  TDDBrowserOverflow
//
//  Created by Jirat K. on 1/6/2557 BE.
//  Copyright (c) 2557 Jirat K. All rights reserved.
//

#import "Answer.h"

@implementation Answer

- (NSComparisonResult)compare:(Answer *)otherAnswer
{
    if (_accepted && !otherAnswer.accepted) {
        return NSOrderedAscending;
    }else if(!_accepted && otherAnswer.accepted){
        return NSOrderedDescending;
    }else if(_score < otherAnswer.score){
        return NSOrderedDescending;
    }else if(_score > otherAnswer.score){
        return NSOrderedAscending;
    }
    
    return NSOrderedSame;
}

@end
