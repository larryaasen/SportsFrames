//
//  Contents.m
//
//  LaneKit is available under the MIT license. See the LICENSE file for more info.
//
//  This model was created on 2014-01-11 by LaneKit v0.4.5.
//
// The following LaneKit command was used to generate this file:
// lanekit generate model Contents contents:array:Video
//

#import "Contents.h"
#import "Video.h"

@implementation Contents

#pragma mark LKModel overrides

// Dictionary to convert self to JSON/XML. For XML mappings, add .text to the end of the destination attribute name like this: "title.text".
+ (NSDictionary *)dictionaryForRequestMappings
{
    return @{
             // source key path : destination attribute name
    };
}

// Dictionary to convert JSON/XML to self. For XML mappings, add .text to the end of the key path like this: "title.text".
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

- (NSString *)descriptionForDisplay
{
  return [self description];
}

@end
