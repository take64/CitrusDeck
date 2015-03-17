//
//  CDYouTube.m
//  YouTubeConnect
//
//  Created by TAKEMOTO KOUHEI on 2015/03/12.
//  Copyright (c) 2015年 citrus.tk. All rights reserved.
//

#import "CDYouTube.h"

@implementation CDYouTube


// YouTube URLからVideoIDを抽出
+ (NSString *)extractVideoIDFromURL:(NSString *)urlString
{
    NSString *url;
    
    url = [urlString stringByReplacingOccurrencesOfString:@"https://www.youtube.com/watch?v=" withString:@""];
    
    return url;
}

// YouTube 埋め込みURLの取得
+ (NSString *)urlEmbedFromVideoID:(NSString *)videoID
{
    return [NSString stringWithFormat:@"https://www.youtube.com/embed/%@", videoID];
}


// YouTube サムネイルURLの取得
+ (NSString *)urlImageFromVideoID:(NSString *)videoID
{
    return [NSString stringWithFormat:@"https://i.ytimg.com/vi/%@/maxresdefault.jpg", videoID];
}

@end
