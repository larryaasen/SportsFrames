//
//  Video.h
//
//  This model was created on 2013-08-11 by LaneKit v0.2.0.
//
// The following LaneKit command was used to generate this model:
// lanekit generate model Video duration:string headline:string id:integer image:string itemDate:date location:string
//

#import <Foundation/Foundation.h>

@class RKObjectMapping;

@interface Video : NSObject

@property (nonatomic,strong) NSString *duration;
@property (nonatomic,strong) NSString *headline;
@property (nonatomic,strong) NSNumber *id;
@property (nonatomic,strong) NSString *image;
@property (nonatomic,strong) NSDate *itemDate;
@property (nonatomic,strong) NSString *location;

+ (NSString *)keyPath;        // Used by providers. The subset of the parsed response for which the mapping is to be used.
+ (NSString *)pathPattern;    // Used by providers. The pattern that matches against URLs for which the mapping should be used.
+ (RKObjectMapping *)requestMapping;    // Used by providers. Returns the request RKObjectMapping
+ (RKObjectMapping *)responseMapping;   // Used by providers. Returns the response RKObjectMapping

@end
