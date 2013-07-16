/*
 The MIT License
 
 Copyright (c) 2013 Larry Aasen
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

#import "LARequest.h"
#import "AppDelegate.h"
#import "MobileCoreServices/MobileCoreServices.h"
#import "SystemConfiguration/SystemConfiguration.h"
#import "RestKit.h"
#import "Contents.h"
#import "Video.h"

@implementation LARequest

- (void)start
{
  // http://scores.espn.go.com/allsports/scorecenter/v2/videos/build?sport=top

  // GET a single Article from /articles/1234.json and map it into an object
  // JSON looks like {"article": {"title": "My Article", "author": "Blake", "body": "Very cool!!"}}
  NSIndexSet *statusCodes = RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful); // Anything in 2xx
  RKResponseDescriptor *responseDescriptor = [RKResponseDescriptor responseDescriptorWithMapping:[Contents modelMapping]
                                                                                          method:RKRequestMethodGET
                                                                                     pathPattern:nil
                                                                                         keyPath:@"contents"
                                                                                     statusCodes:statusCodes];
  
  NSString *espnURL = @"http://scores.espn.go.com/allsports/scorecenter/v2/videos/build?sport=top";
  NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:espnURL]];
  RKObjectRequestOperation *operation = [[RKObjectRequestOperation alloc] initWithRequest:request responseDescriptors:@[responseDescriptor]];
  
  [operation setCompletionBlockWithSuccess:^(RKObjectRequestOperation *operation, RKMappingResult *result) {
    if ([self.delegate respondsToSelector:@selector(request:completedWithContents:)])
    {
      Contents *contents = [result firstObject];
      [self.delegate request:self completedWithContents:contents];
    }
  } failure:^(RKObjectRequestOperation *operation, NSError *error) {
    NSLog(@"Failed with error: %@", [error localizedDescription]);
  }];
  [operation start];
}

@end
