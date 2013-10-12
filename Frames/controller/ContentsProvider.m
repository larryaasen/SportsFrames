//
//  ContentsProvider.m
//
//  This provider was created on 2013-10-12 by LaneKit v0.2.1.
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