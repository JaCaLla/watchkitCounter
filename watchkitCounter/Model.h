//
//  Model.h
//  WatchHelloWorld
//
//  Created by JAVIER CALATRAVA LLAVERIA on 27/12/14.
//  Copyright (c) 2014 JAVIER CALATRAVA LLAVERIA. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifdef TARGET_APP_NO_WATCH
#else
#import "InterfaceController.h"
#endif



@interface Model : NSObject



+(Model*)getInstance;
+(int)getCounter;
+(void)setCounter:(int)count;


@end
