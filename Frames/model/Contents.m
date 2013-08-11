//
//  Contents.m
//
//  This model was created on 2013-08-11 by LaneKit v0.2.0.
//

#import "Contents.h"
#import "RestKit.h"
#import "Video.h"

@implementation Contents

+ (void)initialize
{
  if (self == [Contents class])
  {
  }
}

+ (NSDictionary *)dictionaryForMappings
{
    return @{
    };
}

+ (NSString *)keyPath
{
  return @"contents";
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
    RKObjectMapping *mapping = [RKObjectMapping mappingForClass:[Contents class]];
    [mapping addAttributeMappingsFromDictionary:[self dictionaryForMappings]];

    [mapping addRelationshipMappingWithSourceKeyPath:@"contents" mapping:[Video responseMapping]];
    return mapping;
}

@end
