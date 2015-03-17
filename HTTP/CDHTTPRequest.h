//
//  CDHTTPRequest.h
//  CitrusDeck
//
//  Created by TAKEMOTO KOUHEI on 2015/03/14.
//  Copyright (c) 2015年 citrus.tk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CDHTTPRequest : NSObject

// ファイルのサイズを取得
+ (NSString *)filesize:(NSString *)urlString;

@end
