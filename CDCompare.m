//
//  CDCompare.m
//  YouTubeConnect
//
//  Created by TAKEMOTO KOUHEI on 2015/03/14.
//  Copyright (c) 2015年 citrus.tk. All rights reserved.
//

#import "CDCompare.h"

@implementation CDCompare

// emptyかどうか比較
+ (BOOL)empty:(id)objectValue
{
    BOOL result = NO;
    
    if(objectValue == nil)
    {
        result = YES;
    }
    else if([objectValue isKindOfClass:[NSString class]] == YES)
    {
        if([objectValue isEqualToString:@""] == YES)
        {
            result = YES;
        }
    }
    
    return result;
}


@end
