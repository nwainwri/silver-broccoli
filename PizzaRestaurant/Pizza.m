//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Nathan Wainwright on 2018-08-03.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    self = [super init];
    if (self) {
        _size = size;
        _toppingsPizza = toppings;
    }
    return self;
}

+ (PizzaSize) pizzaSizeForString: (NSString*)string{
    if ([string isEqualToString:@"small"]){
        return PizzaSizeSmall;
    }
    else if ([string isEqualToString:@"medium"]){
        return PizzaSizeMedium;
    }
    else {
        return PizzaSizeLarge;
    }
}

@end
