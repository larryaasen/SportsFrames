//
//  Video.m
//
//  LaneKit is available under the MIT license. See the LICENSE file for more info.
//
//  This model was created on 2014-01-11 by LaneKit v0.4.5.
//
// The following LaneKit command was used to generate this file:
// lanekit generate model Video headline:string duration:string id:integer image:string itemDate:date location:string
//

#import "Video.h"

@implementation Video

#pragma mark LKModel overrides

// Dictionary to convert self to JSON/XML. For XML mappings, add .text to the end of the destination attribute name like this: "title.text".
+ (NSDictionary *)dictionaryForRequestMappings
{
    return @{
             // source key path : destination attribute name
             @"headline": @"headline",
             @"duration": @"duration",
             @"id": @"id",
             @"image": @"image.uri",
             @"itemDate": @"itemDate",
             @"location": @"location"
    };
}

// Dictionary to convert JSON/XML to self. For XML mappings, add .text to the end of the key path like this: "title.text".
+ (NSDictionary *)dictionaryForResponseMappings
{
  return @{
           // source key path : destination attribute name
             @"headline": @"headline",
             @"duration": @"duration",
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

- (NSString *)descriptionForDisplay
{
  return [NSString stringWithFormat:@"%@", self.headline];
}

@end
