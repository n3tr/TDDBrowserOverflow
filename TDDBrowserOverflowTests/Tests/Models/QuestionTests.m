//
//  QuestionTests.m
//  TDDBrowserOverflow
//
//  Created by Jirat K. on 1/6/2557 BE.
//  Copyright (c) 2557 Jirat K. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Question.h"

@interface QuestionTests : XCTestCase

@property (nonatomic, strong) Question *question;

@end

@implementation QuestionTests

- (void)setUp
{
    [super setUp];
    _question = [[Question alloc] init];
    _question.date = [NSDate distantPast];
    _question.title = @"Do iPhones also drean of electric sheep?";
    _question.score = 42;
}

- (void)tearDown
{
    _question = nil;
    [super tearDown];
}

- (void)testQuestionHasADate
{
    NSDate *testDate = [NSDate distantPast];
    _question.date = testDate;
    XCTAssertEqualObjects(_question.date, testDate, @"Question needs to provide its date");
}

- (void)testQuestionKeepScore
{
    XCTAssertEqual(_question.score, 42, @"Questions need a numeric score");
}

- (void)testQuestionHasATitle
{
    XCTAssertEqualObjects(_question.title, @"Do iPhones also drean of electric sheep?", @"Question should know its title");
}
 

@end
