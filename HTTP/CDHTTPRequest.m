//
//  CDHTTPRequest.m
//  CitrusDeck
//
//  Created by TAKEMOTO KOUHEI on 2015/03/14.
//  Copyright (c) 2015年 citrus.tk. All rights reserved.
//

#import "CDHTTPRequest.h"

@implementation CDHTTPRequest

// ファイルのサイズを取得
+ (NSString *)filesize:(NSString *)urlString
{
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:urlString]];
    [request setHTTPMethod:@"HEAD"];
    
    // リクエスト送信
    NSHTTPURLResponse *response;
    NSHTTPURLResponse *httpResponse;
//    while (YES) {
    
        [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:nil];
        
        // ヘッダ取得
        httpResponse = (NSHTTPURLResponse *)response;
        
//        if([httpResponse statusCode] == 200)
//        {
//            break;
//        }
//        else
//        {
//            sleep(1);
//        }
//    }
    
    return [httpResponse allHeaderFields][@"Content-Length"];
}


@end
