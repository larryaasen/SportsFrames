//
//  Video.h
//
//  This model was created on 2013-09-16 by LaneKit v0.2.1.
//
// The following LaneKit command was used to generate this model:
// lanekit generate model Video duration:string headline:string id:integer image:string itemDate:date location:string
//

#import "LKModel.h"

@interface Video : LKModel

@property (nonatomic,strong) NSString *duration;
@property (nonatomic,strong) NSString *headline;
@property (nonatomic,strong) NSNumber *id;
@property (nonatomic,strong) NSString *image;
@property (nonatomic,strong) NSDate *itemDate;
@property (nonatomic,strong) NSString *location;

@end
