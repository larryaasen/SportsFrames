## SportsFrames

SportFrames is a fully functional iOS sample app created to demonstrate the use of [LaneKit](https://github.com/larryaasen/LaneKit), a tool that provides Objective-C models for integration with [RestKit](https://github.com/RestKit/RestKit). This app displays a nice list of current sports related images. Tapping on a image plays the corresponding video. There are two models in this app that were both created by LaneKit version 0.2.1.

- [Source code for SportsFrames](https://github.com/LarryAasen/SportsFrames/zipball/master) from [GitHub](http://github.com).
- Questions? [Stack Overflow](http://stackoverflow.com/questions/tagged/lanekit) is the best place to find answers.

## How To Get Started

1. Download the source code from [GitHub](https://github.com/LarryAasen/SportsFrames/zipball/master).
2. Open the Frames.xcworkspace file using Xcode.
3. Run the app in the iOS Simulator.

## Screenshots
This screenshot was taken from the iOS 7.0.3 Simulator on Jan 11, 2014.

<img src="https://github.com/larryaasen/SportsFrames/wiki/images/iOS%20Simulator%20Screen%20shot1.png" />

## Creating Sports Frames Using LaneKit version 0.4.5

    1. $ lanekit new SportsFrames
    2. $ cd SportsFrames
    3. $ lanekit generate model Video headline:string duration:string id:integer image:string itemDate:date location:string
    4. $ lanekit generate model Contents contents:array:Video
    5. $ lanekit generate provider Contents Contents http://scores.espn.go.com/allsports/scorecenter/v2/videos/build?sport=top
    6. $ lanekit generate tableviewcontroller Contents -r LKFeedCell
    7. modify +[Video dictionaryForRequestMappings] method, line @"image": @"image" to @"image": @"image.uri".
    8. modify +[Video dictionaryForResponseMappings] method, line @"image": @"image" to @"image.uri": @"image".
    9. modify -[LKAppDelegate application:didFinishLaunchingWithOptions:] method, change this "UIViewController.new" to "ContentsViewController.new". Also add an import line at the top of the file: #import "ContentsViewController.h".
    10. modify file ContentsViewController.m: add these lines to the top of the file:
    #import "Video.h"
    #import <MediaPlayer/MPMoviePlayerController.h>
    #import <MediaPlayer/MPMoviePlayerViewController.h>
    11. modify file ContentsViewController.m: add these lines to -[ContentsViewController tableView:didSelectRowAtIndexPath:] method:
      Video *video = (Video *)model;
      if (video.location.length)
      {
        MPMoviePlayerViewController *player = [[MPMoviePlayerViewController alloc] initWithContentURL:[NSURL URLWithString:video.location]];
        player.moviePlayer.controlStyle = MPMovieControlStyleFullscreen;
        player.moviePlayer.fullscreen = YES;
        [self presentMoviePlayerViewControllerAnimated:player];
      }

## Credits

SportFrames was created by [Larry Aasen](https://github.com/larryaasen).

## Contact

Follow Larry Aasen on Twitter [@LarryAasen](https://twitter.com/LarryAasen).

## License

SportFrames is available under the MIT license. See the LICENSE file for more info.
