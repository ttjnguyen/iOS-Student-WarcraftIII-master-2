//
//  Barracks.m
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"

@implementation Barracks

-(instancetype)init{
    _gold = 1000;
    _food = 80;
    
    return self;
}

-(BOOL)canTrainFootman{
    if (self.food >= 2 && self.gold >= 135) {
        return YES;
    } else {
        return NO;
    }
}

-(BOOL)canTrainPeasant {
    if (self.food >= 5 && self.gold >= 90) {
        return YES;
    } else {
        return NO;
    }
}


-(Footman *)trainFootman{
    if ([self canTrainFootman]) {
        self.gold -= 135;
        self.food -= 2;
        Footman *footman = [Footman new];
        
        return footman;
    } else {
        return nil;
    }
}


-(Peasant*)trainPeasant{
    if ([self canTrainPeasant]) {
        self.gold -= 90;
        self.food -= 5;
        Peasant *peasant = [Peasant new];
        
        return peasant;
    } else {
        return nil;
    }
}


@end
