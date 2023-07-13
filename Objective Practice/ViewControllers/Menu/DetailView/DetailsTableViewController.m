//
//  DetailsTableViewController.m
//  Objective Practice
//
//  Created by Muzammal Shahzad on 7/11/23.
//

#import "DetailsTableViewController.h"
#import "MapViewController.h"


@interface DetailsTableViewController ()

@property (nonatomic, strong) NSArray<NSArray<NSString *> *> *titleNames;
@property (nonatomic, strong) NSArray *titleHeader;

@end

@implementation DetailsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = [NSString stringWithFormat:@"%@", _selectedTitle];
    self.titleHeader = @[@"", @"DESCRIPTION", @"DIETRY", @"LOCATIONS"];
    self.titleNames = @[
        @[@"Burrito", @"Remen", @"Burger", @"Pizza"],
        @[@"Burrito", @"Remen"],
        @[@"Burrito", @"Remen", @"Burger", @"Pizza"],
        @[@"Burrito", @"Spag Bol"]
    ];
    
    // Uncomment the following line to preserve selection between presentations.
     self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
     self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _titleNames.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray<NSString *> *sectionItems = self.titleNames[section];
    return sectionItems.count ;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    // Configure the cell with your data
    NSArray<NSString *> *sectionItems = self.titleNames[indexPath.section];
    NSString *item = sectionItems[indexPath.row];
    
    cell.textLabel.text = item;
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return _titleHeader[section];
}


// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}


// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    UIStoryboard *mapStoryboard = [UIStoryboard storyboardWithName:@"MapView" bundle:nil];
    MapViewController *mapViewController = [mapStoryboard instantiateViewControllerWithIdentifier:@"MapViewController"];
    [self.navigationController pushViewController:mapViewController animated:YES];
    
}



@end
