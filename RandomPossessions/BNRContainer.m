//
//  BNRContainer.m
//  RandomPossessions
//
//  Created by Travis McChesney on 4/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

-(id)init
{
    return [self initWithContainerName:@"Container"
                        containerValue:0];
}

-(id)initWithContainerName:(NSString *)cName 
            containerValue:(int)cValue;
{
    self = [super initWithItemName:cName valueInDollars:cValue serialNumber:@""];
    
    if (self) {
        containerList = [[NSMutableArray alloc] init];
    }
    
    return self;
}

-(NSString *)description
{
    int totalValue = [self valueInDollars];

    NSString *contained = [[NSString alloc] init];
    
    for (BNRItem *listItem in containerList) {
        contained = [contained stringByAppendingString: [[NSString alloc] initWithFormat:@"  - %@\n", [listItem description]]];
    }
    
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ - Total Worth: $%d, Containing: \n%@\n", 
                         [self itemName],
                         totalValue,
                         contained];
    
    return descriptionString;
}

-(void)addBNRItem:(BNRItem *)item
{
    [containerList addObject:item];
}

- (int)valueInDollars
{
    int valueInt = valueInDollars;
    
    for (BNRItem *listItem in containerList) {
        valueInt += [listItem valueInDollars];
    }
    
    return valueInt;
}

@end
