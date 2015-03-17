//
//  CDYouTubeItem.h
//  YouTubeConnect
//
//  Created by TAKEMOTO KOUHEI on 2015/03/14.
//  Copyright (c) 2015年 citrus.tk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CDYouTubeItem : NSObject
{
    NSString *itag;
    NSString *quality;
    NSString *type;
    NSString *url;
    NSString *filesize;
}

//
// property
//
@property (nonatomic, retain) NSString *itag;
@property (nonatomic, retain) NSString *quality;
@property (nonatomic, retain) NSString *type;
@property (nonatomic, retain) NSString *url;
@property (nonatomic, retain) NSString *filesize;


//
// method
//

// ファイルサイズの取得
- (void) appendFilesize;



// url_encoded_fmt_stream_mapアイテムを分解する
+ (CDYouTubeItem *) extract:(NSString *)stringValue;




@end
