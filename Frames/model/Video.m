//
//  Video.m
//
//  This model was created on 2013-07-23 by LaneKit v0.1.6.
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

+ (NSDictionary *)dictionaryForMappings
{
    return @{
        @"duration": @"duration",
        @"headline": @"headline",
        @"image.uri": @"image",
        @"location": @"location"
    };
}

// Returns the request RKObjectMapping
+ (RKObjectMapping *)requestMapping
{
    RKObjectMapping *requestMapping = [RKObjectMapping requestMapping];
    [requestMapping addAttributeMappingsFromDictionary:[self dictionaryForMappings]];
    return requestMapping;
}

// Returns the response RKObjectMapping
+ (RKObjectMapping *)responseMapping
{
    RKObjectMapping *mapping = [RKObjectMapping mappingForClass:[Video class]];
    [mapping addAttributeMappingsFromDictionary:[self dictionaryForMappings]];
    return mapping;
}

@end

#pragma mark SenTestingKit test cases

#if defined(SEN_TESTING)
@implementation VideoTesting

- (void)testMapping
{
    RKObjectMapping *requestMapping = [Video requestMapping];
    STAssertNotNil(requestMapping, @"[Video requestMapping] returned nil.");

    RKObjectMapping *responseMapping = [Video responseMapping];
    STAssertNotNil(responseMapping, @"[Video responseMapping] returned nil.");

    Video *video = Video.new;
    STAssertNotNil(video, @"Video.new returned nil.");

    video.duration = @"value";
    STAssertTrue([video.duration isEqualToString:@"value"], @"video.duration has incorrect value.");
    video.headline = @"value";
    STAssertTrue([video.headline isEqualToString:@"value"], @"video.headline has incorrect value.");
    video.image = @"value";
    STAssertTrue([video.image isEqualToString:@"value"], @"video.image has incorrect value.");
    video.location = @"value";
    STAssertTrue([video.location isEqualToString:@"value"], @"video.location has incorrect value.");
}

@end
#endif
