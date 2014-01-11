//
//  ContentsTest.m
//
//  LaneKit is available under the MIT license. See the LICENSE file for more info.
//
//  This model test was created on 2014-01-11 by LaneKit v0.4.5.
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
