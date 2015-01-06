//
//  InterfaceController.m
//  watchkitCounter WatchKit Extension
//
//  Created by JAVIER CALATRAVA LLAVERIA on 05/01/15.
//  Copyright (c) 2015 JAVIER CALATRAVA LLAVERIA. All rights reserved.
//

#import "InterfaceController.h"
#import "Model.h"


@interface InterfaceController()

@property (weak, nonatomic) IBOutlet WKInterfaceLabel *lblCounter;

@end


@implementation InterfaceController

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (self){
        
        // Initialize variables here.
        // Configure interface objects here.
        NSLog(@"%@ initWithContext", self);
        
        [self.lblCounter setText:[[NSString alloc] initWithFormat:@"%d",[Model getCounter]]];
        
        [NSTimer scheduledTimerWithTimeInterval:0.5
                                         target:self
                                       selector:@selector(refreshValue)
                                       userInfo:nil
                                        repeats:YES];
        
    }
    return self;
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    NSLog(@"%@ will activate", self);
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}

-(void) refreshValue{
    int iCounter=[Model getCounter];

    
    [self.lblCounter setText:[[NSString alloc] initWithFormat:@"%d",iCounter]];

    
}

@end



