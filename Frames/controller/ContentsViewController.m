/*
 The MIT License
 
 Copyright (c) 2013 Larry Aasen
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

#import "ContentsViewController.h"
#import "ContentsProvider.h"
#import "LAFeedCell.h"
#import "Video.h"
#import "UIImageView+AFNetworking.h"
#import <MediaPlayer/MPMoviePlayerController.h>
#import <MediaPlayer/MPMoviePlayerViewController.h>

static NSString *CellIdentifier = @"LAFeedCell";

@interface ContentsViewController ()
@property (nonatomic,strong) NSArray *contents;
@property (nonatomic,strong) MPMoviePlayerViewController *player;
@end

@implementation ContentsViewController

- (void)viewDidLoad
{
  [super viewDidLoad];

  [self.tableView registerClass:[LAFeedCell class] forCellReuseIdentifier:CellIdentifier];
  
  self.tableView.rowHeight = LAFeedCell.cellHeight;
  self.tableView.separatorStyle = UITableViewCellSelectionStyleNone;

  ContentsProvider *provider = ContentsProvider.new;
  [provider getAllWithCompletionBlock:^(NSError *error, id result) {
    Contents *contents = result;
    self.contents = contents.contents;
    [self.tableView reloadData];
  }];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  // Return the number of rows in the section.
  return self.contents.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  LAFeedCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
  
  Video *video = [self.contents objectAtIndex:indexPath.row];
  cell.textLabel.text = video.headline;
  [cell.imageView setImageWithURL:[NSURL URLWithString:video.image] placeholderImage:[UIImage imageNamed:@"placeholder"]];
  return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  Video *video = [self.contents objectAtIndex:indexPath.row];

  if (video.location.length)
  {
    self.player = [[MPMoviePlayerViewController alloc] initWithContentURL:[NSURL URLWithString:video.location]];
    self.player.moviePlayer.controlStyle = MPMovieControlStyleFullscreen;
    self.player.moviePlayer.fullscreen = YES;
    [self presentMoviePlayerViewControllerAnimated:self.player];
  }
}
@end
