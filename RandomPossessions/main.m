//
//  main.m
//  RandomPossessions
//
//  Created by Travis McChesney on 4/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        BNRItem *backpack = [[BNRItem alloc] init];
        [backpack setItemName:@"Backpack"];
        [items addObject:backpack];
        
        BNRItem *calculator = [[BNRItem alloc] init];
        [calculator setItemName:@"Calculator"];
        [items addObject:calculator];
        
        [backpack setContainedItem:calculator];
        
        NSLog(@"Setting items to nil...");
        items = nil;
    }
    return 0;
}

