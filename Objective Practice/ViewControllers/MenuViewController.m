//
//  NextViewController.m
//  Objective Practice
//
//  Created by Muzammal Shahzad on 7/4/23.
//

#import "MenuViewController.h"
#import "CartTableViewController.h"
#import "FoodmenuViewController.h"


@interface MenuViewController () <UITableViewDataSource, UITableViewDelegate>


@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSMutableArray *data;
@property (nonatomic, strong) NSArray *imageNames;
@property (nonatomic, strong) NSArray *titleNames;


@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Menu";
    [self addCartButtonToNavigationBar];
    
    // Inside your ViewController's viewDidLoad method
    self.navigationItem.largeTitleDisplayMode = UINavigationItemLargeTitleDisplayModeAlways;
    [self.navigationController.navigationBar setPrefersLargeTitles:YES];

    // Initialize the data array
    self.data = [[NSMutableArray alloc] init];
    
    // Initialize the arrays
    self.imageNames = @[@"fork.knife", @"birthday.cake", @"wineglass"];
    self.titleNames = @[@"Food", @"Desserts", @"Drinks"];
    
 
    
    // Create and configure the table view
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.tableView.backgroundView.layer.cornerRadius = 10.0;
    self.tableView.backgroundView.clipsToBounds = YES;
    
}

- (void)addCartButtonToNavigationBar {
    UIBarButtonItem *cartButton = [[UIBarButtonItem alloc] initWithImage:[UIImage systemImageNamed:@"cart.fill"] style:UIBarButtonItemStylePlain target:self action:@selector(cartButtonTapped:)];
    self.navigationItem.rightBarButtonItem = cartButton;
}

- (void)cartButtonTapped:(id)sender {
    // Handle cart button tap action here
    CartTableViewController *halfScreenVC = [[CartTableViewController alloc] init];
    halfScreenVC.modalPresentationStyle = UIModalPresentationPageSheet;
    [self presentViewController:halfScreenVC animated:YES completion:nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _titleNames.count; // Return the desired number of rows
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    // Configure the cell with your data
    NSString *imageName = self.imageNames[indexPath.row];
    NSString *titleName = self.titleNames[indexPath.row];
    

    cell.imageView.image = [UIImage systemImageNamed:imageName];
    cell.textLabel.text = titleName;
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    MenuViewController *foodViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"FoodmenuViewController"];
    [self.navigationController pushViewController:foodViewController animated:YES];
    // Perform any other actions you want when a row is selected
}



- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 50.0; // Set the desired height for the section header
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return the desired row height
    return 45.0; // Adjust the value as needed
}



- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    NSString *searchText = searchBar.text;
    // Perform search based on the entered text
    [self performSearchWithText:searchText];
}

- (void)performSearchWithText:(NSString *)searchText {
    // Perform the search logic here
    // Display search results or update the UI accordingly
}



#pragma mark - CRUD Operations


#pragma mark - Create DataObject

- (void)createDataObject: (NSString*)dataObject {
    printf("Create Data Object");
}


#pragma mark - ReadDataObjectAtIndex
- (NSString *)ReadDataObjectAtIndex: (NSInteger)index{
    if (index > 0 && index < self.data.count){
        return self.data[index];
    }else{
        return  nil;
    }
}


#pragma mark - UpdateDataObject
- (void) updateDataObject: (NSString *)dataObject atIndex:(NSInteger)index{
    if (index > 0 && index < self.data.count ){
        self.data[index]  = dataObject ;
    }
}

#pragma mark - DeleteDataObjectAtIndex
- (void) DeleteDataObjectAtIndex: (NSInteger)index{
    if (index > 0 && index < self.data.count){
        [self.data removeObjectAtIndex: index];
    }
}

@end

