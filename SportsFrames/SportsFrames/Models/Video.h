//
//  Video.h
//
//  LaneKit is available under the MIT license. See the LICENSE file for more info.
//
//  This model was created on 2014-01-11 by LaneKit v0.4.5.
//
// The following LaneKit command was used to generate this file:
// lanekit generate model Video headline:string duration:string id:integer image:string itemDate:date location:string
//

#import "LKModel.h"

@interface Video : LKModel

@property (nonatomic,strong) NSString *headline;
@property (nonatomic,strong) NSString *duration;
@property (nonatomic,strong) NSNumber *id;
@property (nonatomic,strong) NSString *image;
@property (nonatomic,strong) NSDate *itemDate;
@property (nonatomic,strong) NSString *location;

@end
