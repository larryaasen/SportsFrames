//
//  Contents.h
//
//  This model was created on 2013-08-11 by LaneKit v0.2.0.
//
// The following LaneKit command was used to generate this model:
// lanekit generate model Contents contents:array:Video
//

#import <Foundation/Foundation.h>

@class RKObjectMapping;

@interface Contents : NSObject

@property (nonatomic,strong) NSArray *contents;  // relates to: Video

+ (NSString *)keyPath;        // Used by providers. The subset of the parsed response for which the mapping is to be used.
+ (NSString *)pathPattern;    // Used by providers. The pattern that matches against URLs for which the mapping should be used.
+ (RKObjectMapping *)requestMapping;    // Used by providers. Returns the request RKObjectMapping
+ (RKObjectMapping *)responseMapping;   // Used by providers. Returns the response RKObjectMapping

@end
