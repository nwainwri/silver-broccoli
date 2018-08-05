//
//  KitchenDelegate.h
//  PizzaRestaurant
//
//  Created by Nathan Wainwright on 2018-08-05.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

@class Kitchen;

@protocol KitchenDelegate

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

@optional
-(void)kitchenDidMakePizza:(Pizza *)pizza;

@end

