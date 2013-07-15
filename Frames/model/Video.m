//
//  Video.m
//
//  This model was created on 2013-05-27 by LaneKit.
//
//

#import "Video.h"
#import "MobileCoreServices/MobileCoreServices.h"
#import "SystemConfiguration/SystemConfiguration.h"
#import "RestKit.h"


@implementation Video

+ (void)initialize
{
  if (self == [Video class])
  {
  }
}

// Returns the RKObjectMapping for this class
+ (RKObjectMapping *)modelMapping
{
  RKObjectMapping *mapping = [RKObjectMapping mappingForClass:[Video class]];
  [mapping addAttributeMappingsFromDictionary:@{
    @"duration": @"duration",
    @"headline": @"headline",
    @"image.uri": @"image",
    @"location": @"location"
  }];

  
  return mapping;
}

@end
