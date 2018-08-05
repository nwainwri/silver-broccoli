//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Nathan Wainwright on 2018-08-03.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, PizzaSize) {
    PizzaSizeSmall,
    PizzaSizeMedium,
    PizzaSizeLarge
};

@interface Pizza : NSObject

@property PizzaSize size;
@property NSArray* toppingsPizza;

- (instancetype)initWithSize: (PizzaSize)size andToppings: (NSArray *)toppings;

+ (PizzaSize) pizzaSizeForString: (NSString*)string;


@end
