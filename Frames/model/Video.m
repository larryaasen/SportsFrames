//
//  Video.m
//
//  This model was created on 2013-08-11 by LaneKit v0.2.0.
//

#import "Video.h"
#import "RestKit.h"

@implementation Video

+ (void)initialize
{
  if (self == [Video class])
  {
  }
}

+ (NSDictionary *)dictionaryForMappings
{
    return @{
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

+ (NSString *)pathPattern
{
  return nil;
}

+ (RKObjectMapping *)requestMapping
{
    RKObjectMapping *requestMapping = [RKObjectMapping requestMapping];
    [requestMapping addAttributeMappingsFromDictionary:[self dictionaryForMappings]];
    return requestMapping;
}

+ (RKObjectMapping *)responseMapping
{
    RKObjectMapping *mapping = [RKObjectMapping mappingForClass:[Video class]];
    [mapping addAttributeMappingsFromDictionary:[self dictionaryForMappings]];
    return mapping;
}

@end
