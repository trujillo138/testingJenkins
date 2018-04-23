//
//  JenkinsProjectTests.m
//  JenkinsProjectTests
//
//  Created by Tomas Trujillo on 4/23/18.
//  Copyright © 2018 Tomas. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Model.h"

@interface JenkinsProjectTests : XCTestCase
@property (strong, nonatomic) Model* model;
@end

@implementation JenkinsProjectTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.model = [[Model alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    self.model = nil;
    [super tearDown];
}

- (void)testAddingProducts {
    int product1 = 1;
    int product2 = 2;
    int result = [self.model addProducts:product1 product2:product2];
    XCTAssertTrue(result == 3);
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

@end
