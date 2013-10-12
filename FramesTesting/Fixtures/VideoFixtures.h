//
//  VideoFixtures.h
//
//  This model fixture was created on 2013-10-12 by LaneKit v0.2.1.
//
// The following LaneKit command was used to generate this file:
// lanekit generate model Video duration:string headline:string id:integer image:string itemDate:date location:string
//

#import <Foundation/Foundation.h>
#import "Video.h"

@interface VideoFixtures : NSObject

+ (Video *)one;
+ (Video *)two;

@end
