//
//  CDCrypt.m
//  YouTubeConnect
//
//  Created by TAKEMOTO KOUHEI on 2015/03/14.
//  Copyright (c) 2015年 citrus.tk. All rights reserved.
//

#import "CDCrypt.h"

@implementation CDCrypt


// urldecodeを行う
+ (NSString *) urldecode:(NSString *)stringValue
{
    return [stringValue stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
}

@end
