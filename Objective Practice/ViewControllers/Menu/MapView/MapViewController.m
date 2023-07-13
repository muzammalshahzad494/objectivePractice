//
//  MapViewController.m
//  Objective Practice
//
//  Created by Muzammal Shahzad on 7/11/23.
//

#import "MapViewController.h"
#import <MapKit/MapKit.h>

@interface MapViewController ()
@property (nonatomic, strong) MKMapView *mapView;
@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.mapView = [[MKMapView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.mapView];
   
}


@end
