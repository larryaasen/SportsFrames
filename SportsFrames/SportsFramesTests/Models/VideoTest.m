//
//  VideoTest.m
//
//  LaneKit is available under the MIT license. See the LICENSE file for more info.
//
//  This model test was created on 2014-01-11 by LaneKit v0.4.5.
//
// The following LaneKit command was used to generate this file:
// lanekit generate model Video headline:string duration:string id:integer image:string itemDate:date location:string
//

#import "VideoTest.h"
#import "VideoFixtures.h"

@implementation VideoTest

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

- (void)testVideoNewOne
{
  Video *video = VideoFixtures.one;
  STAssertNotNil(video, @"video is nil");

  STAssertTrue([video.headline isEqualToString:@"MyString"], @"headline not correct value");
  STAssertTrue([video.duration isEqualToString:@"MyString"], @"duration not correct value");
  STAssertTrue(video.id.integerValue == [NSNumber numberWithInteger:1].integerValue, @"id not [NSNumber numberWithInteger:1]");
  STAssertTrue([video.image isEqualToString:@"MyString"], @"image not correct value");
  STAssertNotNil(video.itemDate, @"itemDate is nil");
  STAssertTrue([video.location isEqualToString:@"MyString"], @"location not correct value");
}

- (void)testVideoNewTwo
{
  Video *video = VideoFixtures.two;
  STAssertNotNil(video, @"video is nil");

  STAssertTrue([video.headline isEqualToString:@"MyString"], @"headline not correct value");
  STAssertTrue([video.duration isEqualToString:@"MyString"], @"duration not correct value");
  STAssertTrue(video.id.integerValue == [NSNumber numberWithInteger:1].integerValue, @"id not [NSNumber numberWithInteger:1]");
  STAssertTrue([video.image isEqualToString:@"MyString"], @"image not correct value");
  STAssertNotNil(video.itemDate, @"itemDate is nil");
  STAssertTrue([video.location isEqualToString:@"MyString"], @"location not correct value");
}

- (void)testMapping
{
  RKObjectMapping *requestMapping = [Video requestMapping];
  STAssertNotNil(requestMapping, @"[Video requestMapping] returned nil.");
  
  RKObjectMapping *responseMapping = [Video responseMapping];
  STAssertNotNil(responseMapping, @"[Video responseMapping] returned nil.");
}

@end
