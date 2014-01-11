//
//  VideoFixtures.m
//
//  LaneKit is available under the MIT license. See the LICENSE file for more info.
//
//  This model fixture was created on 2014-01-11 by LaneKit v0.4.5.
//
// The following LaneKit command was used to generate this file:
// lanekit generate model Video headline:string duration:string id:integer image:string itemDate:date location:string
//

#import "VideoFixtures.h"

@implementation VideoFixtures

+ (Video *)one
{
  Video *video = Video.new;

  video.headline = @"MyString";
  video.duration = @"MyString";
  video.id = [NSNumber numberWithInteger:1];
  video.image = @"MyString";
  video.itemDate = NSDate.new;
  video.location = @"MyString";

  return video;
}

+ (Video *)two
{
  Video *video = Video.new;

  video.headline = @"MyString";
  video.duration = @"MyString";
  video.id = [NSNumber numberWithInteger:1];
  video.image = @"MyString";
  video.itemDate = NSDate.new;
  video.location = @"MyString";

  return video;
}

@end
