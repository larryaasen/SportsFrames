//
//  LKResourceProvider.h
//
//  This base provider was created on 2013-10-12 by LaneKit v0.2.1.
//
// The following LaneKit command was used to generate this file:
// lanekit generate provider Contents Contents http://scores.espn.go.com/allsports/scorecenter/v2/videos/build?sport=top
//

#import "RestKit.h"

typedef void(^LKResourceProviderCallbackBlock)(NSError *error, id result);

@interface LKResourceProvider : NSObject

@property (nonatomic,strong) NSString *baseURL;

- (void)downloadWithCompletionBlock:(LKResourceProviderCallbackBlock)completionBlock;
- (Class)modelClass;
- (id)processResult:(RKMappingResult *)mappingResult withError:(NSError **)error;
- (RKResponseDescriptor *)responseDescriptor;

@end
