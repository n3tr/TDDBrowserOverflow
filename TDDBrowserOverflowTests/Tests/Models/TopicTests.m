//
//  TopicTests.m
//  TDDBrowserOverflow
//
//  Created by Jirat K. on 1/6/2557 BE.
//  Copyright (c) 2557 Jirat K. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Topic.h"

@interface TopicTests : XCTestCase

@property (nonatomic, strong) Topic *topic;

@end

@implementation TopicTests

- (void)setUp
{
    [super setUp];
    _topic = [[Topic alloc] initWithName:@"iPhone" tag:@"iphone"];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
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

@end
