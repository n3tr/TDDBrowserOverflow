//
//  AnswerTests.m
//  TDDBrowserOverflow
//
//  Created by Jirat K. on 1/6/2557 BE.
//  Copyright (c) 2557 Jirat K. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Answer.h"
#import "Person.h"

@interface AnswerTests : XCTestCase

@property (nonatomic, strong) Answer *answer;
@property (nonatomic, strong) Answer *otherAnswer;

@end

@implementation AnswerTests

- (void)setUp
{
    [super setUp];
    _answer = [[Answer alloc] init];
    _answer.text = @"The answer is 42";
    _answer.person = [[Person alloc] initWithName:@"Jirat K." avatarLocation:@"http://example.com/avatar.png"];
    _answer.score = 42;
    
    _otherAnswer = [[Answer alloc] init];
    _otherAnswer.text = @"I Have the answer you need";
    _otherAnswer.score = 42;
}

- (void)tearDown
{
    _answer = nil;
    _otherAnswer = nil;
    [super tearDown];
}

- (void)testAnswerHasSomeText
{
    XCTAssertEqualObjects(_answer.text, @"The answer is 42", @"Answer need to contain some text");
}

- (void)testSomeOneProvidedTheAnswer
{
    XCTAssertTrue([_answer.person isKindOfClass:[Person class]], @"A Person gave this Answer");
}

- (void)testAnswerNotAcceptedByDefault
{
    XCTAssertFalse(_answer.accepted, @"Answer not accepted by default");
}

- (void)testAnswerCanBeAccepted
{
    XCTAssertNoThrow(_answer.accepted = YES, @"It is possible to accept an answer");
}

- (void)testAnswerHasAScore
{
    XCTAssertTrue(_answer.score == 42, @"Answer's score can be retrieved");
}

- (void)testAcceptedAnswerComesBeforeUnAccept
{
    _otherAnswer.accepted = YES;
    _otherAnswer.score = _answer.score + 10;
    
    XCTAssertEqual([_answer compare: _otherAnswer], NSOrderedDescending, @"Accepted answer should come first");
    XCTAssertEqual([_otherAnswer compare:_answer], NSOrderedAscending, @"Unaccepted answer should come last");
}

- (void)testAnswersWithEqualScoresCompareEqually
{
    XCTAssertEqual([_answer compare: _otherAnswer], NSOrderedSame, @"Both answer of equal rank");
    XCTAssertEqual([_otherAnswer compare:_answer], NSOrderedSame, @"Both answer of equal rank");
}

- (void)testLowerScoringAnswerComesAfterHigher
{
    _otherAnswer.score = _answer.score + 10;
    XCTAssertEqual([_answer compare:_otherAnswer], NSOrderedDescending, @"Higher score come first");
    XCTAssertEqual([_otherAnswer compare:_answer], NSOrderedAscending, @"Lower score come last");

}
@end
