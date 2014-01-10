//
//  PeopleTests.m
//  TDDBrowserOverflow
//
//  Created by Jirat K. on 1/6/2557 BE.
//  Copyright (c) 2557 Jirat K. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Person.h"
@interface PersonTests : XCTestCase

@property (nonatomic, strong) Person *person;

@end

@implementation PersonTests

- (void)setUp
{
    [super setUp];
    _person = [[Person alloc] initWithName:@"Jirat K." avatarLocation:@"http://example.com/avatar.png"];
}

- (void)tearDown
{
    _person = nil;
    [super tearDown];
}

- (void)testThatPersonExists
{
    XCTAssertNotNil(_person, @"it should be able to creaet");
}

- (void)testThatPersonHasTheRightName
{
    XCTAssertEqualObjects(_person.name, @"Jirat K.", @"expecting a person to provide its name");
}


- (void)testThatPersonHasAnAvatarURL
{
    XCTAssertTrue([_person.avatarURL isKindOfClass:[NSURL class]], @"Expecting avatar url is instance of NSURL");
    
    NSURL *url = _person.avatarURL;
    XCTAssertEqualObjects([url absoluteString], @"http://example.com/avatar.png", @"The Person's avatar should be represented by a URL");
}


@end
