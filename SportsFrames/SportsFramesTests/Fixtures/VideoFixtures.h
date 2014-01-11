//
//  VideoFixtures.h
//
//  LaneKit is available under the MIT license. See the LICENSE file for more info.
//
//  This model fixture was created on 2014-01-11 by LaneKit v0.4.5.
//
// The following LaneKit command was used to generate this file:
// lanekit generate model Video headline:string duration:string id:integer image:string itemDate:date location:string
//

#import <Foundation/Foundation.h>
#import "Video.h"

@interface VideoFixtures : NSObject

+ (Video *)one;
+ (Video *)two;

@end
