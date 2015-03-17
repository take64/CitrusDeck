//
//  CDYouTube.h
//  YouTubeConnect
//
//  Created by TAKEMOTO KOUHEI on 2015/03/12.
//  Copyright (c) 2015年 citrus.tk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CDYouTube : NSObject


// YouTube URLからVideoIDを抽出
+ (NSString *)extractVideoIDFromURL:(NSString *)urlString;

// YouTube 埋め込みURLの取得
+ (NSString *)urlEmbedFromVideoID:(NSString *)videoID;

// YouTube サムネイルURLの取得
+ (NSString *)urlImageFromVideoID:(NSString *)videoID;

@end
