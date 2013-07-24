//
//  FramesTesting.m
//  FramesTesting
//
//  Created by Larry Aasen on 7/23/13.
//  Copyright (c) 2013 Larry Aasen. All rights reserved.
//

#import "FramesTesting.h"
#import "Video.h"

@implementation FramesTesting

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testVideo
{
  VideoTesting *videoTesting = VideoTesting.new;
  [videoTesting testMapping];
}

@end
