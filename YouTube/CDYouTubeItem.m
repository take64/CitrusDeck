//
//  CDYouTubeItem.m
//  YouTubeConnect
//
//  Created by TAKEMOTO KOUHEI on 2015/03/14.
//  Copyright (c) 2015年 citrus.tk. All rights reserved.
//

#import "CDYouTubeItem.h"

#import "CDCrypt.h"
#import "CDHTTPRequest.h"

@implementation CDYouTubeItem

@synthesize itag;
@synthesize quality;
@synthesize type;
@synthesize url;
@synthesize filesize;


// ファイルサイズの取得
- (void) appendFilesize
{
    if([self url] == nil)
    {
        [self setFilesize:@"0"];
        return ;
    }
    
    [self setFilesize:
     [CDHTTPRequest filesize:[self url]]
     ];
}


#pragma mark - override
- (NSString *) description
{
    return [NSString stringWithFormat:@"itag => %@, quality => %@, type => %@, size => %@, url => %@",
            [self itag],
            [self quality],
            [self type],
            [self filesize],
            [self url]
            ];
}


#pragma mark - static method

// url_encoded_fmt_stream_mapアイテムを分解する
+ (CDYouTubeItem *) extract:(NSString *)stringValue
{
    CDYouTubeItem *item = [[CDYouTubeItem alloc] init];
    
    // urldecode
    stringValue = [CDCrypt urldecode:stringValue];
    
    // urlの抽出
    NSRange range = [stringValue rangeOfString:@"url="];
    [item setUrl:
     [stringValue substringFromIndex:range.location + 4]
     ];
    
    // url以外の抽出
    NSArray *params = [stringValue componentsSeparatedByString:@"&"];
    for(NSString *one in params)
    {
        NSArray *kyvl = [one componentsSeparatedByString:@"="];
        
        if([kyvl[0] isEqualToString:@"itag"] == YES)
        {
            [item setItag:kyvl[1]];
        }
        else if([kyvl[0] isEqualToString:@"quality"] == YES)
        {
            [item setQuality:kyvl[1]];
        }
        else if([kyvl[0] isEqualToString:@"type"] == YES)
        {
            NSArray *kyvl2 = [kyvl[1] componentsSeparatedByString:@";"];
            [item setType:kyvl2[0]];
        }
    }
    
    return item;
}




@end
