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
    NSMutableArray *containerList;
}

-(id)initWithContainerName:(NSString *)cName 
            containerValue:(int)cValue;

-(void)addBNRItem:(BNRItem *)item;

@end
