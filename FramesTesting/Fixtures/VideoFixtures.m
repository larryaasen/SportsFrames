//
//  VideoFixtures.m
//
//  This model fixture was created on 2013-08-11 by LaneKit v0.2.0.
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
