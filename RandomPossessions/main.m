//
//  main.m
//  RandomPossessions
//
//  Created by Travis McChesney on 4/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BNRItem.h"
#import "BNRContainer.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        BNRContainer *container = [[BNRContainer alloc] initWithContainerName:@"Test" containerValue:10];
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            BNRItem *p = [BNRItem randomItem];
            [container addBNRItem:p];
        }
        
        BNRContainer *innerContainer = [[BNRContainer alloc] initWithContainerName:@"innerTest" containerValue:24];
        
        for (int i = 0; i < 10; i++) {
            BNRItem *p = [BNRItem randomItem];
            [innerContainer addBNRItem:p];
        }
        
        [container addBNRItem:innerContainer];

        /*for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }*/
        
        NSLog(@"%@", container);
        
        items = nil;
    }
    return 0;
}

