//
//  TopicTests.m
//  TDDBrowserOverflow
//
//  Created by Jirat K. on 1/6/2557 BE.
//  Copyright (c) 2557 Jirat K. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Topic.h"
#import "Question.h"

@interface TopicTests : XCTestCase

@property (nonatomic, strong) Topic *topic;

@end

@implementation TopicTests

- (void)setUp
{
    [super setUp];
    _topic = [[Topic alloc] initWithName:@"iPhone" tag:@"iphone"];
}

- (void)tearDown
{
    _topic = nil;
    [super tearDown];
}

- (void)testThatTopicExists
{
    XCTAssertNotNil(_topic, @"should be able to create a Topic object");
}

- (void)testThatTopicCanBeNamed
{
    XCTAssertEqualObjects(_topic.name, @"iPhone", @"the Topic should have the name I gave it");
}

- (void)testThatTopicHasATag
{
    XCTAssertEqualObjects(_topic.tag, @"iphone", @"Topics need to have tags");
}

- (void)testForAListOfQuestions {
    XCTAssertTrue([[_topic recentQuestions] isKindOfClass:[NSArray class]], @"Topic should provide a list of recent questions");
}

- (void)testForInitiallyEmptyQusetionList
{
    XCTAssertEqual((NSUInteger)[[_topic recentQuestions] count], (NSUInteger)0, @"No questions added yet, count should be zero");
}

- (void)testAddingAQuestionToTheList
{
    Question *newQuestion = [[Question alloc] init];
    [_topic addQuestion: newQuestion];
    XCTAssertEqual((NSUInteger)[[_topic recentQuestions] count], (NSUInteger)1, @"Add a question, and the count of questions should go up");
}

@end
