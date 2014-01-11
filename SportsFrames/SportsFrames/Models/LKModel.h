//
//  LKModel.h
//
//  LaneKit is available under the MIT license. See the LICENSE file for more info.
//
//  This base model was created on 2014-01-11 by LaneKit v0.4.5.
//
// The following LaneKit command was used to generate this file:
// lanekit generate model Contents contents:array:Video
//

#import "RestKit.h"

@interface LKModel : NSObject

+ (NSDictionary *)dictionaryForRequestMappings;  // Used by providers.
+ (NSDictionary *)dictionaryForResponseMappings; // Used by providers.
+ (NSString *)keyPath;                    // Used by providers. The subset of the parsed response for which the mapping is to be used.
+ (NSString *)pathPattern;                // Used by providers. The pattern that matches against URLs for which the mapping should be used.
+ (RKObjectMapping *)requestMapping;      // Used by providers. Returns the request RKObjectMapping
+ (RKObjectMapping *)responseMapping;     // Used by providers. Returns the response RKObjectMapping


- (NSString *)descriptionForDisplay;
@end
