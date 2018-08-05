//  main.m
//  PizzaRestaurant
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.

#import <Foundation/Foundation.h>
#import "Kitchen.h"

#import "KitchenDelegate.h"
#import "GoManager.h"
#import "TestManager.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        // init kitchen
        Kitchen *restaurantKitchen = [Kitchen new];
        
        //init managers
        TestManager *testy = [[TestManager alloc] init];
        GoManager *goGo = [[GoManager alloc] init];

        while (TRUE) {
            // Loop forever
            NSLog(@"Please change Manager: // Testy // GoGo");
            NSLog(@"> ");
            char abc[100];
            fgets (abc, 100, stdin);
            
            NSLog(@"Please pick your pizza size and toppings:");
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *managerInputString = [[NSString alloc] initWithUTF8String:abc];
            managerInputString = [managerInputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSArray *managerWord = [managerInputString componentsSeparatedByString:@" "];
            NSString *manager = managerWord[0];
            
            if ([manager isEqualToString:@"Testy"]) {
                restaurantKitchen.delegate = testy;
            }
            if ([manager isEqualToString:@"GoGo"]) {
                restaurantKitchen.delegate = goGo;
            }
            
            NSString *pizzaInputString = [[NSString alloc] initWithUTF8String:str];
            pizzaInputString = [pizzaInputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [pizzaInputString componentsSeparatedByString:@" "];
            NSString *sizeWord = commandWords[0];
            
            
            
            PizzaSize sizeEnum = [Pizza pizzaSizeForString:sizeWord];
            
            [restaurantKitchen makePizzaWithSize:sizeEnum toppings:[commandWords subarrayWithRange:NSMakeRange(1, [commandWords count]-1)]];
        }
    }
    return 0;
}

