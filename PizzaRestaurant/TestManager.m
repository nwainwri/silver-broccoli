//
//  TestManager.m
//  PizzaRestaurant
//
//  Created by Nathan Wainwright on 2018-08-05.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "TestManager.h"

@implementation TestManager



- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    if ([toppings containsObject:@"anchovies"]){
        NSLog(@"sorry we don't serve their kind here (SW Reference)");
        return NO;
    } else {
        return YES;
    }
    
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return NO;
}

@end
