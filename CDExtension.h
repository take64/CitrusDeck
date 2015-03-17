//
//  CDExtension.h
//  CitrusDeck
//
//  Created by TAKEMOTO KOUHEI on 2015/03/14.
//  Copyright (c) 2015年 citrus.tk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CDExtension : NSObject

// MIMETypeから拡張子を取得する
+ (NSString *)extFormMime:(NSString *)stringValue;

// MIMETypeから名称変更する
+ (NSString *)rename:(NSString *)filename fromMIMEType:(NSString *)mimeType;

@end
