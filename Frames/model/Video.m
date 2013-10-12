//
//  Video.m
//
//  This model was created on 2013-10-12 by LaneKit v0.2.1.
//
// The following LaneKit command was used to generate this file:
// lanekit generate model Video duration:string headline:string id:integer image:string itemDate:date location:string
//

#import "Video.h"

@implementation Video

// Dictionary to convert self to JSON
+ (NSDictionary *)dictionaryForRequestMappings
{
    return @{
             // source key path : destination attribute name
             @"duration": @"duration",
             @"headline": @"headline",
             @"id": @"id",
             @"image": @"image.uri",
             @"itemDate": @"itemDate",
             @"location": @"location"
    };
}

// Dictionary to convert JSON to self
+ (NSDictionary *)dictionaryForResponseMappings
{
  return @{
           // source key path : destination attribute name
             @"duration": @"duration",
             @"headline": @"headline",
             @"id": @"id",
             @"image.uri": @"image",
             @"itemDate": @"itemDate",
             @"location": @"location"
    };
}

+ (NSString *)keyPath
{
  return @"video";
}

@end
