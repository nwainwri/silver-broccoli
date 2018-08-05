//
//  GoManager.m
//  PizzaRestaurant
//
//  Created by Nathan Wainwright on 2018-08-05.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "GoManager.h"

@implementation GoManager




- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    NSLog(@"I love work work work");
    return YES;
}

@end
