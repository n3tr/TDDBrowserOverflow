//
//  QuestionTests.m
//  TDDBrowserOverflow
//
//  Created by Jirat K. on 1/6/2557 BE.
//  Copyright (c) 2557 Jirat K. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Question.h"
#import "Answer.h"

@interface QuestionTests : XCTestCase

@property (nonatomic, strong) Question *question;
@property (nonatomic, strong) Answer *lowScoreAnswer;
@property (nonatomic, strong) Answer *highScoreAnswer;

@end

@implementation QuestionTests

- (void)setUp
{
    [super setUp];
    _question = [[Question alloc] init];
    _question.date = [NSDate distantPast];
    _question.title = @"Do iPhones also drean of electric sheep?";
    _question.score = 42;
    
    Answer *acceptedAnswer = [[Answer alloc] init];
    acceptedAnswer.score = 1;
    acceptedAnswer.accepted = YES;
    [_question addAnswer:acceptedAnswer];
    
    _lowScoreAnswer = [[Answer alloc] init];
    _lowScoreAnswer.score = -4;
    [_question addAnswer:_lowScoreAnswer];
    
    _highScoreAnswer = [[Answer alloc] init];
    _highScoreAnswer.score = 4;
    [_question addAnswer:_highScoreAnswer];
}

- (void)tearDown
{
    _question = nil;
    _lowScoreAnswer = nil;
    _highScoreAnswer = nil;
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

- (void)testQuestionCanHaveAnswerAdded
{
    Answer *newAnswer = [[Answer alloc] init];
    XCTAssertNoThrow([_question addAnswer:newAnswer], @"Must be able to add answer");
}

- (void)testAcceptedAnswerAtFirst
{
    XCTAssertTrue([[_question.answers objectAtIndex: 0] isAccepted], @"Accepted answer come first");
}

- (void)testHighScoreAnswerBeforeLow
{
    NSArray *listAnswer = _question.answers;
    NSInteger highIndex = [listAnswer indexOfObject:_highScoreAnswer];
    NSInteger lowIndex = [listAnswer indexOfObject:_lowScoreAnswer];
    XCTAssertTrue(highIndex < lowIndex, @"High-score answer come first");
}

@end
