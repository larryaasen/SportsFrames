//
//  ContentsProvider.m
//
//  LaneKit is available under the MIT license. See the LICENSE file for more info.
//
//  This provider was created on 2014-01-11 by LaneKit v0.4.5.
//
// The following LaneKit command was used to generate this file:
// lanekit generate provider Contents Contents http://scores.espn.go.com/allsports/scorecenter/v2/videos/build?sport=top
//

#import "ContentsProvider.h"

@implementation ContentsProvider

- (NSString *)baseURL
{
  return @"http://scores.espn.go.com/allsports/scorecenter/v2/videos/build?sport=top";
}

- (Class)modelClass
{
  return [Contents class];
}

- (id)processResult:(RKMappingResult *)mappingResult withError:(NSError **)error
{
  Contents *results = [mappingResult firstObject];
  id result = results;
  return result;
}

@end