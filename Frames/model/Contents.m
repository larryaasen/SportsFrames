//
//  Contents.m
//
//  This model was created on 2013-05-27 by LaneKit.
//
//

#import "Contents.h"
#import "MobileCoreServices/MobileCoreServices.h"
#import "SystemConfiguration/SystemConfiguration.h"
#import "RestKit.h"
#import "Video.h"

@implementation Contents

+ (void)initialize
{
  if (self == [Contents class])
  {
  }
}

// Returns the RKObjectMapping for this class
+ (RKObjectMapping *)modelMapping
{
  RKObjectMapping *mapping = [RKObjectMapping mappingForClass:[Contents class]];
  [mapping addAttributeMappingsFromDictionary:@{
  }];

  [mapping addRelationshipMappingWithSourceKeyPath:@"contents" mapping:[Video modelMapping]];

  
  return mapping;
}

@end
