//
//  ContentsTest.m
//
//  This model test was created on 2013-10-12 by LaneKit v0.2.1.
//
// The following LaneKit command was used to generate this file:
// lanekit generate model Contents contents:array:Video
//

#import "ContentsTest.h"
#import "ContentsFixtures.h"

@implementation ContentsTest

- (void)setUp
{
  [super setUp];
  
  // Set-up code here.
}

- (void)tearDown
{
  // Tear-down code here.
  
  [super tearDown];
}

- (void)testContentsNewOne
{
  Contents *contents = ContentsFixtures.one;
  STAssertNotNil(contents, @"contents is nil");


}

- (void)testContentsNewTwo
{
  Contents *contents = ContentsFixtures.two;
  STAssertNotNil(contents, @"contents is nil");


}

- (void)testMapping
{
  RKObjectMapping *requestMapping = [Contents requestMapping];
  STAssertNotNil(requestMapping, @"[Contents requestMapping] returned nil.");
  
  RKObjectMapping *responseMapping = [Contents responseMapping];
  STAssertNotNil(responseMapping, @"[Contents responseMapping] returned nil.");
}

@end
