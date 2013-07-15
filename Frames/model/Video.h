//
//  Video.h
//
//  This model was created on 2013-05-27 by LaneKit.
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

+ (RKObjectMapping *)modelMapping;

@end
