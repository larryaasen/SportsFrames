//
//  ContentsFixtures.m
//
//  LaneKit is available under the MIT license. See the LICENSE file for more info.
//
//  This model fixture was created on 2014-01-11 by LaneKit v0.4.5.
//
// The following LaneKit command was used to generate this file:
// lanekit generate model Contents contents:array:Video
//

#import "ContentsFixtures.h"
#import "VideoFixtures.h"

@implementation ContentsFixtures

+ (Contents *)one
{
  Contents *contents = Contents.new;

  contents.contents = @[VideoFixtures.one];

  return contents;
}

+ (Contents *)two
{
  Contents *contents = Contents.new;

  contents.contents = @[VideoFixtures.one, VideoFixtures.two];

  return contents;
}

@end
