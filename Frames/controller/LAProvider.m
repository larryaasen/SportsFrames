/*
 The MIT License
 
 Copyright (c) 2013 Larry Aasen
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

#import "LAProvider.h"

@implementation LAProvider

- (void)create:(NSObject *)modelObject completionBlock:(LAProviderCallbackBlock)completionBlock
{
}

- (void)getAllWithCompletionBlock:(LAProviderCallbackBlock)completionBlock
{
  NSString *requestURL = [self requestURL];
  NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:requestURL]];
  RKResponseDescriptor *responseDescriptor = [self responseDescriptor];
  RKObjectRequestOperation *operation = [[RKObjectRequestOperation alloc] initWithRequest:request responseDescriptors:@[responseDescriptor]];
  
  [operation setCompletionBlockWithSuccess:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult) {
    NSError *error = nil;
    id result = [self processResult:mappingResult withError:&error];
    completionBlock(nil, result);
  } failure:^(RKObjectRequestOperation *operation, NSError *error) {
    completionBlock(error, nil);
  }];
  [operation start];
}

#pragma mark #import "Contents.h"


- (NSString *)requestURL
{
  return nil;
}

- (RKResponseDescriptor *)responseDescriptor
{
  return nil;
}

- (id)processResult:(RKMappingResult *)mappingResult withError:(NSError **)error
{
  return nil;
}

@end
