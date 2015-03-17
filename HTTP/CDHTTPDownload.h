//
//  CDHTTPDownload.h
//  CitrusDeck
//
//  Created by TAKEMOTO KOUHEI on 2015/03/14.
//  Copyright (c) 2015年 citrus.tk. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^CDHTTPDownloadProgressBlock)(double currentProgress);
typedef void (^CDHTTPDownloadCompleteBlock)(void);

@interface CDHTTPDownload : NSObject <NSURLConnectionDataDelegate>
{
    NSMutableData *downlaodData;
    
    CDHTTPDownloadProgressBlock progressBlock;
    CDHTTPDownloadCompleteBlock completeBlock;
}

//
// property
//
@property (nonatomic, retain) NSMutableData *downlaodData;
@property (nonatomic, copy) CDHTTPDownloadProgressBlock progressBlock;
@property (nonatomic, copy) CDHTTPDownloadCompleteBlock completeBlock;


//
// method
//

// ダウンロード
- (void) download:(NSString *)urlString progress:(CDHTTPDownloadProgressBlock)progress complete:(CDHTTPDownloadCompleteBlock)complete;


@end
