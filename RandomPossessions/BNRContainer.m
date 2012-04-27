//
//  BNRContainer.m
//  RandomPossessions
//
//  Created by Travis McChesney on 4/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

-(id)initWithContainerName:(NSString *)cName 
            containerValue:(int)cValue
{
    self = [super init];
    
    if (self) {
        [self setName:cName];
        [self setValue:cValue];
        
        list = [[NSMutableArray alloc] init];
    }
    
    return self;
}

-(id)init
{
    return [self initWithContainerName:@"Container"
                        containerValue:0];
}

-(NSString *)description
{
    return name;
}

-(void)addBNRItem:(BNRItem *)item
{
    [list addObject:item];
}

-(void)setName:(NSString *)cName
{
    name = cName;
}
-(NSString *)name
{
    return name;
}

-(void)setValue:(int)cValue
{
    value = cValue;
}
-(int)value
{
    return value;
}

@end
