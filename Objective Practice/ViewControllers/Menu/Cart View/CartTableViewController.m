//
//  CartTableViewController.m
//  Objective Practice
//
//  Created by Muzammal Shahzad on 7/11/23.
//

#import "CartTableViewController.h"

@interface CartTableViewController ()

@property (nonatomic, strong) NSArray *titleNames;
@property (nonatomic, strong) NSArray *imageNames;

@end

@implementation CartTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Basket";
    [self addCartButtonToNavigationBar];
    self.imageNames = @[@"fork.knife", @"birthday.cake", @"wineglass"];
    self.titleNames = @[@"Food", @"Desserts", @"Drinks"];
    
}

- (void)addCartButtonToNavigationBar {
    UIBarButtonItem *cartButton = [[UIBarButtonItem alloc] initWithImage:[UIImage systemImageNamed:@"cart.fill"] style:UIBarButtonItemStylePlain target:self action:@selector(cartButtonTapped:)];
    self.navigationItem.rightBarButtonItem = cartButton;
}

- (void)cartButtonTapped:(id)sender {
   
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
     return _titleNames.count;;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cel" forIndexPath:indexPath];
    
    // Configure the cell with your data
    NSString *imageName = self.imageNames[indexPath.row];
    NSString *titleName = self.titleNames[indexPath.row];
    
    cell.imageView.image = [UIImage systemImageNamed:imageName];
    cell.textLabel.text = titleName;
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
