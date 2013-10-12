//
//  LKModel.m
//
//  This base model was created on 2013-10-12 by LaneKit v0.2.1.
//
// The following LaneKit command was used to generate this file:
// lanekit generate model Video duration:string headline:string id:integer image:string itemDate:date location:string
//

#import "LKModel.h"

@implementation LKModel

// Dictionary to convert self to JSON
// Subclasses may need to override this method
+ (NSDictionary *)dictionaryForRequestMappings
{
  return @{
           };
}

// Dictionary to convert JSON to self
// Subclasses may need to override this method
+ (NSDictionary *)dictionaryForResponseMappings
{
  return @{
           };
}

// Subclasses should override this method
+ (NSString *)keyPath
{
  return nil;
}

// Subclasses may need to override this method
+ (NSString *)pathPattern
{
  return nil;
}

// Returns the request RKObjectMapping for this class
+ (RKObjectMapping *)requestMapping
{
  RKObjectMapping *mapping = [RKObjectMapping requestMapping];
  [mapping addAttributeMappingsFromDictionary:[self dictionaryForRequestMappings]];
  return mapping;
}

// Returns the response RKObjectMapping for this class
// Subclasses may need to override this method
+ (RKObjectMapping *)responseMapping
{
  RKObjectMapping *mapping = [RKObjectMapping mappingForClass:self.class];
  [mapping addAttributeMappingsFromDictionary:[self dictionaryForResponseMappings]];
  return mapping;
}

@end
