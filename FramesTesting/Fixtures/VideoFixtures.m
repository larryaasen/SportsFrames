//
//  VideoFixtures.m
//
//  This model fixture was created on 2013-10-12 by LaneKit v0.2.1.
//
// The following LaneKit command was used to generate this file:
// lanekit generate model Video duration:string headline:string id:integer image:string itemDate:date location:string
//

#import "VideoFixtures.h"

@implementation VideoFixtures

+ (Video *)one
{
  Video *video = Video.new;

  video.duration = @"MyString";
  video.headline = @"MyString";
  video.id = [NSNumber numberWithInteger:1];
  video.image = @"MyString";
  video.itemDate = NSDate.new;
  video.location = @"MyString";

  return video;
}

+ (Video *)two
{
  Video *video = Video.new;

  video.duration = @"MyString";
  video.headline = @"MyString";
  video.id = [NSNumber numberWithInteger:1];
  video.image = @"MyString";
  video.itemDate = NSDate.new;
  video.location = @"MyString";

  return video;
}

@end
