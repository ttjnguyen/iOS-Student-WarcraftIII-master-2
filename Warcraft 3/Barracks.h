//
//  Barracks.h
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import <Foundation/Foundation.h>
#import "Footman.h"
#import "Peasant.h"
#import "Unit.h"

@interface Barracks : NSObject

@property (assign) int gold;
@property (assign) int food;

-(Footman *)trainFootman;
-(Peasant*)trainPeasant;
@end