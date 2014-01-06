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

@end

@implementation TopicTests

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testThatTopicExists
{
    Topic *newTopic = [[Topic alloc] init];
    XCTAssertNotNil(newTopic, @"should be able to create a Topic object");
}

- (void)testThatTopicCanBeNamed
{
    Topic *newTopic = [[Topic alloc] initWithName: @"iPhone"];
    XCTAssertEqualObjects(newTopic.name, @"iPhone", @"the Topic should have the name I gave it");
}

- (void)testThatTopicHasATag
{
    Topic *taggedTopic = [[Topic alloc] initWithName:@"iPhone" tag:@"iphone"];
    XCTAssertEqualObjects(taggedTopic.tag, @"iphone", @"Topics need to have tags");
}

@end
