//
//  MenuItems.h
//  Objective Practice
//
//  Created by Muzammal Shahzad on 7/12/23.
//

#import <Foundation/Foundation.h>

@protocol MenuItem <NSObject>
@property (nonatomic, strong) NSString *id;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *description;
@property (nonatomic, strong) NSDecimalNumber *price;
@property (nonatomic, strong) NSArray<Ingredient *> *ingredients;
@property (nonatomic, strong) NSArray<Allergie *> *allergies;
@property (nonatomic, strong) NSArray<Location *> *locations;
@end

@interface Food : NSObject <MenuItem>
@property (nonatomic, strong) NSString *id;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *description;
@property (nonatomic, strong) NSDecimalNumber *price;
@property (nonatomic, strong) NSArray<Ingredient *> *ingredients;
@property (nonatomic, strong) NSArray<Allergie *> *allergies;
@property (nonatomic, strong) NSArray<Location *> *locations;
@end

@interface Drink : NSObject <MenuItem>
@property (nonatomic, strong) NSString *id;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *description;
@property (nonatomic) BOOL isFizzy;
@property (nonatomic, strong) NSDecimalNumber *price;
@property (nonatomic, strong) NSArray<Ingredient *> *ingredients;
@property (nonatomic, strong) NSArray<Allergie *> *allergies;
@property (nonatomic, strong) NSArray<Location *> *locations;
@end

@interface Dessert : NSObject <MenuItem>
@property (nonatomic, strong) NSString *id;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *description;
@property (nonatomic) BOOL isCold;
@property (nonatomic, strong) NSDecimalNumber *price;
@property (nonatomic, strong) NSArray<Ingredient *> *ingredients;
@property (nonatomic, strong) NSArray<Allergie *> *allergies;
@property (nonatomic, strong) NSArray<Location *> *locations;
@end

@interface Ingredient : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic) double quantity;

- (instancetype)initWithName:(NSString *)name quantity:(double)quantity;
@end

@interface Allergie : NSObject
@property (nonatomic, strong) NSString *name;
@end

@interface Location : NSObject
@property (nonatomic, strong) NSString *id;
@property (nonatomic, strong) NSString *name;
@property (nonatomic) double longitude;
@property (nonatomic) double latitude;
@end

@implementation Food
@end

@implementation Drink
@end

@implementation Dessert
@end

@implementation Ingredient
@end

@implementation Allergie
@end

@implementation Location
@end

NSArray<Food *> *foods() {
    return @[
        [[Food alloc] initWithId:@"Burrito_Burrito" name:@"🌯" title:@"Burrito" description:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry." price:[NSDecimalNumber decimalNumberWithString:@"7.99"] ingredients:@[
            [[Ingredient alloc] initWithName:@"Ingredient 1" quantity:10],
            [[Ingredient alloc] initWithName:@"Ingredient 2" quantity:5],
            [[Ingredient alloc] initWithName:@"Ingredient 3" quantity:5]
        ] allergies:@[
            [[Allergie alloc] initWithName:@"Allergie 1"],
            [[Allergie alloc] initWithName:@"Allergie 2"],
            [[Allergie alloc] initWithName:@"Allergie 3"]
        ] locations:@[
            [[Location alloc] initWithId:@"Location 1" name:@"Location 1" longitude:-0.1275 latitude:51.507222],
            [[Location alloc] initWithId:@"Location 2" name:@"Location 2" longitude:-0.1275 latitude:51.507222],
            [[Location alloc] initWithId:@"Location 3" name:@"Location 3" longitude:-0.1275 latitude:51.507222],
            [[Location alloc] initWithId:@"Location 4" name:@"Location 4" longitude:-0.1275 latitude:51.507222]
        ]],
        // Add other food items here
    ];
}

NSArray<Drink *> *drinks() {
    return @[
        [[Drink alloc] initWithId:@"Soda_Soda" name:@"🥤" title:@"Soda" description:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry." isFizzy:YES price:[NSDecimalNumber decimalNumberWithString:@"2.99"] ingredients:@[
            [[Ingredient alloc] initWithName:@"Ingredient 1" quantity:10],
            [[Ingredient alloc] initWithName:@"Ingredient 2" quantity:5],
            [[Ingredient alloc] initWithName:@"Ingredient 3" quantity:5]
        ] allergies:nil locations:@[
            [[Location alloc] initWithId:@"Location 1" name:@"Location 1" longitude:-0.1275 latitude:51.507222],
            [[Location alloc] initWithId:@"Location 2" name:@"Location 2" longitude:-0.1275 latitude:51.507222],
            [[Location alloc] initWithId:@"Location 3" name:@"Location 3" longitude:-0.1275 latitude:51.507222],
            [[Location alloc] initWithId:@"Location 4" name:@"Location 4" longitude:-0.1275 latitude:51.507222]
        ]],
        // Add other drink items here
    ];
}

NSArray<Dessert *> *desserts() {
    return @[
        [[Dessert alloc] initWithId:@"Ice Cream_Ice Cream" name:@"🍦" title:@"Ice Cream" description:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry." isCold:YES price:[NSDecimalNumber decimalNumberWithString:@"0.99"] ingredients:@[
            [[Ingredient alloc] initWithName:@"Ingredient 1" quantity:10],
            [[Ingredient alloc] initWithName:@"Ingredient 2" quantity:5],
            [[Ingredient alloc] initWithName:@"Ingredient 3" quantity:5]
        ] allergies:@[
            [[Allergie alloc] initWithName:@"Allergie 1"],
            [[Allergie alloc] initWithName:@"Allergie 2"],
            [[Allergie alloc] initWithName:@"Allergie 3"]
        ] locations:@[
            [[Location alloc] initWithId:@"Location 1" name:@"Location 1" longitude:-0.1275 latitude:51.507222],
            [[Location alloc] initWithId:@"Location 2" name:@"Location 2" longitude:-0.1275 latitude:51.507222],
            [[Location alloc] initWithId:@"Location 3" name:@"Location 3" longitude:-0.1275 latitude:51.507222],
            [[Location alloc] initWithId:@"Location 4" name:@"Location 4" longitude:-0.1275 latitude:51.507222]
        ]],
        // Add other dessert items here
    ];
}
