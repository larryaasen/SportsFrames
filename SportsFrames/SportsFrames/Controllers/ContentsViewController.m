//
//  ContentsViewController.m
//
//  LaneKit is available under the MIT license. See the LICENSE file for more info.
//
//  This model was created on 2014-01-11 by LaneKit v0.4.5.
//
// The following LaneKit command was used to generate this file:
// lanekit generate tableviewcontroller Contents -r LKFeedCell
//

#import "ContentsViewController.h"
#import "ContentsProvider.h"
#import "NSObject+LKConventions.h"
#import "LKFeedCell.h"
#import "Video.h"
#import <MediaPlayer/MPMoviePlayerController.h>
#import <MediaPlayer/MPMoviePlayerViewController.h>

@interface ContentsViewController ()
@property (nonatomic,strong) NSArray *contents;
- (void)refreshProvider;
@end

@implementation ContentsViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;

    [self.tableView registerClass:[LKFeedCell class] forCellReuseIdentifier:@"Cell"];

    self.tableView.rowHeight = LKFeedCell.cellHeight;
    self.tableView.separatorStyle = UITableViewCellSelectionStyleNone;

    UIRefreshControl *refreshControl = UIRefreshControl.new;
    [refreshControl addTarget:self action:@selector(refreshProvider) forControlEvents:UIControlEventValueChanged];
    self.refreshControl = refreshControl;
    
    [self.refreshControl beginRefreshing];
    [self refreshProvider];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)refreshProvider
{
    __unsafe_unretained typeof(self) weakSelf = self;

    ContentsProvider *provider = ContentsProvider.new;
    [provider downloadWithCompletionBlock:^(NSError *error, id result) {
      Contents *contents = result;
      weakSelf.contents = contents.contents;
      [weakSelf.refreshControl endRefreshing];
      [weakSelf.tableView reloadData];
    }];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.contents.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    LKModel *model = [self.contents objectAtIndex:indexPath.row];
    cell.textLabel.text = [model descriptionOfTopProperty];
    
    if ([model respondsToSelector:@selector(image)] && [cell respondsToSelector:@selector(imageView)])
    {
        NSString *imageURL = (NSString *)[(id)model image];
        if ([imageURL isKindOfClass:[NSString class]])
        {
            [cell.imageView setImageWithURL:[NSURL URLWithString:imageURL] placeholderImage:[UIImage imageNamed:@"placeholder"]];
        }
    }

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    LKModel *model = [self.contents objectAtIndex:indexPath.row];
    NSLog(@"[%@ %@] model selected: %@", [self description], NSStringFromSelector(_cmd), model);
    Video *video = (Video *)model;
    if (video.location.length)
    {
      MPMoviePlayerViewController *player = [[MPMoviePlayerViewController alloc] initWithContentURL:[NSURL URLWithString:video.location]];
      player.moviePlayer.controlStyle = MPMovieControlStyleFullscreen;
      player.moviePlayer.fullscreen = YES;
      [self presentMoviePlayerViewControllerAnimated:player];
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
