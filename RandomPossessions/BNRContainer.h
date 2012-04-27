//
//  BNRContainer.h
//  RandomPossessions
//
//  Created by Travis McChesney on 4/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem
{
    NSMutableArray *list;
    NSString *name;
    int value;
}

-(id)initWithContainerName:(NSString *)cName 
            containervalue:(int)cValue;

-(void)addBNRItem:(BNRItem *)item;

-(void)setName:(NSString *)cName;
-(NSString *)name;

-(void)setValue:(int)cValue;
-(int)value;

@end
