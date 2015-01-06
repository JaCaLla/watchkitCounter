//
//  Model.m
//  WatchHelloWorld
//
//  Created by JAVIER CALATRAVA LLAVERIA on 27/12/14.
//  Copyright (c) 2014 JAVIER CALATRAVA LLAVERIA. All rights reserved.
//

#import "Model.h"
#import "AppDelegate.h"



#define SHARED_GROUP    @"group.watchkitCounter"
#define KEY_COUNTER   @"Counter"



@implementation Model;

static Model *aModelClassInstance;



-(id)init
{
    self = [super init];
    if(self)
    {
        //Initialize
        aModelClassInstance=self;
        
    }
    
    return self;
}


+(id)getInstance
{
    return aModelClassInstance;
}


    
+(int)getCounter {
    
    NSUserDefaults *sharedDefaults = [[NSUserDefaults alloc] initWithSuiteName:SHARED_GROUP];
    NSNumber *aCounter = [sharedDefaults objectForKey:KEY_COUNTER];
    
    return [aCounter intValue];
}


+(void)setCounter:(int)count{
    
    NSUserDefaults *sharedDefaults = [[NSUserDefaults alloc] initWithSuiteName:SHARED_GROUP];
    [sharedDefaults setObject:[[NSNumber alloc] initWithInt:count] forKey:KEY_COUNTER];
    [sharedDefaults synchronize];

}

@end
