//
//  CDExtension.m
//  YouTubeConnect
//
//  Created by TAKEMOTO KOUHEI on 2015/03/14.
//  Copyright (c) 2015年 citrus.tk. All rights reserved.
//

#import "CDExtension.h"

@implementation CDExtension

// MIMETypeから拡張子を取得する
+ (NSString *)extFormMime:(NSString *)stringValue
{
    NSDictionary *exts = @{
                           // video
                           @"video/3gpp"    :@"3gp",
                           @"video/x-flv"   :@"flv",
                           @"video/mp4"     :@"mp4",
                           @"video/webm"    :@"webm",
                           
                           };
    return [exts objectForKey:stringValue];
}

// MIMETypeから名称変更する
+ (NSString *)rename:(NSString *)filename fromMIMEType:(NSString *)mimeType
{
    // parse
    NSMutableArray *names = [[filename componentsSeparatedByString:@"."] mutableCopy];
    
    // ext
    NSString *ext = [CDExtension extFormMime:mimeType];
    
    // replace
    [names replaceObjectAtIndex:[names count] - 1 withObject:ext];
    
    return [names componentsJoinedByString:@"."];
}
@end
