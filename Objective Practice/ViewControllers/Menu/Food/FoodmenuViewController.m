//
//  FoodmenuViewController.m
//  Objective Practice
//
//  Created by Muzammal Shahzad on 7/10/23.
//

#import "FoodmenuViewController.h"
#import "DetailsTableViewController.h"


@interface FoodmenuViewController () <UITableViewDelegate, UITableViewDataSource>


@property (weak, nonatomic) IBOutlet UITableView *tableView;
// Initialize the arrays

@property (nonatomic, strong) NSArray *imageNames;
@property (nonatomic, strong) NSArray *titleNames;

@end

@implementation FoodmenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Food";
    
    self.imageNames = @[@"fork.knife", @"birthday.cake", @"wineglass", @"fork.knife", @"birthday.cake", @"wineglass",@"fork.knife"];
    self.titleNames = @[@"Burrito", @"Remen", @"Burger", @"Pizza", @"Hotdog", @"Falafel", @"Spag Bol"];
    
    self.tableView.delegate= self;
    self.tableView.dataSource = self;
    
    // Do any additional setup after loading the view.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _titleNames.count ;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    // Configure the cell with your data
    NSString *imageName = self.imageNames[indexPath.row];
    NSString *titleName = self.titleNames[indexPath.row];

    cell.imageView.image = [UIImage systemImageNamed:imageName];
    cell.textLabel.text = titleName;
    cell.detailTextLabel.text = titleName;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 45;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NSString *selectedTitle = self.titleNames[indexPath.row];
    DetailsTableViewController *detailsViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailsTableViewController"];
    detailsViewController.selectedTitle = selectedTitle;
    [self.navigationController pushViewController:detailsViewController animated:YES];
   
}

@end
