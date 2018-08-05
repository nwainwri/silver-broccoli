//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//
#import "Kitchen.h"
#import "TestManager.h"
#import "GoManager.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    
    NSString *pizzaSize;
    if (size == 0){
        pizzaSize = @("small");
    }
    if (size == 1){
        pizzaSize = @("medium");
    }
    if (size == 2){
        pizzaSize = @("large");
    }
    if (self.delegate){
        //NSLog(@"Delegate");
        if ([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]){
            if ([self.delegate kitchenShouldUpgradeOrder:self]){
                NSLog(@"UPGRADE! The order is for a size large pizza with %@ toppings", toppings);
                return [[Pizza alloc]initWithSize:2 andToppings:toppings];
            }
            else {
                NSLog(@"NORMAL: The order is for a size %@, pizza with %@ toppings", pizzaSize, toppings);
                return [[Pizza alloc]initWithSize:size andToppings:toppings];
            }
        }else{
            return nil;
        }
    }
    else{
        NSLog(@"No pizza for you!");
        return nil;
    }
}
@end
    
