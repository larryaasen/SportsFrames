//
//  Video.h
//
//  This model was created on 2013-07-23 by LaneKit v0.1.6.
//
// The following LaneKit command was used to generate this model:
// lanekit generate model Video duration:string headline:string image:string location:string
//

#import <Foundation/Foundation.h>

@class RKObjectMapping;

@interface Video : NSObject

@property (nonatomic,strong) NSString *duration;
@property (nonatomic,strong) NSString *headline;
@property (nonatomic,strong) NSString *image;     // add special mapping image.uri
@property (nonatomic,strong) NSString *location;

+ (RKObjectMapping *)requestMapping;
+ (RKObjectMapping *)responseMapping;

@end
