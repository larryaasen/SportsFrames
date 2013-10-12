//
//  Contents.m
//
//  This model was created on 2013-10-12 by LaneKit v0.2.1.
//
// The following LaneKit command was used to generate this file:
// lanekit generate model Contents contents:array:Video
//

#import "Contents.h"
#import "Video.h"

@implementation Contents

// Dictionary to convert self to JSON
+ (NSDictionary *)dictionaryForRequestMappings
{
    return @{
             // source key path : destination attribute name
    };
}

// Dictionary to convert JSON to self
+ (NSDictionary *)dictionaryForResponseMappings
{
  return @{
           // source key path : destination attribute name
    };
}

+ (NSString *)keyPath
{
  return @"contents";
}

+ (RKObjectMapping *)responseMapping
{
    RKObjectMapping *mapping = [RKObjectMapping mappingForClass:[Contents class]];
    [mapping addAttributeMappingsFromDictionary:[self dictionaryForResponseMappings]];

    [mapping addRelationshipMappingWithSourceKeyPath:@"contents" mapping:[Video responseMapping]];
    return mapping;
}

@end
