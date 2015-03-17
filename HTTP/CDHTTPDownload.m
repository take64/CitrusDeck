//
//  CDHTTPDownload.m
//  YouTubeConnect
//
//  Created by TAKEMOTO KOUHEI on 2015/03/14.
//  Copyright (c) 2015年 citrus.tk. All rights reserved.
//

#import "CDHTTPDownload.h"

@implementation CDHTTPDownload

@synthesize downlaodData;
@synthesize progressBlock;
@synthesize completeBlock;


// ダウンロード
- (void) download:(NSString *)urlString progress:(CDHTTPDownloadProgressBlock)progress complete:(CDHTTPDownloadCompleteBlock)complete
{
    [self setProgressBlock:progress];
    [self setCompleteBlock:complete];
    
    [self setDownlaodData:[NSMutableData data]];
    
    // request
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:urlString]];
    
    // connection
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    
    
    
}




#pragma mark - NSURLConnectionDataDelegate
//- (NSURLRequest *)connection:(NSURLConnection *)connection willSendRequest:(NSURLRequest *)request redirectResponse:(NSURLResponse *)response
//{
//    NSLog(@"- (NSURLRequest *)connection:(NSURLConnection *)connection willSendRequest:(NSURLRequest *)request redirectResponse:(NSURLResponse *)response");
//}
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    NSLog(@"- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response");
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    NSLog(@"- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data");
    
    [[self downlaodData] appendData:data];
    
    self.progressBlock([[self downlaodData] length]);
}
//- (NSInputStream *)connection:(NSURLConnection *)connection needNewBodyStream:(NSURLRequest *)request
//{
//    NSLog(@"- (NSInputStream *)connection:(NSURLConnection *)connection needNewBodyStream:(NSURLRequest *)request");
//}
- (void)connection:(NSURLConnection *)connection didSendBodyData:(NSInteger)bytesWritten totalBytesWritten:(NSInteger)totalBytesWritten totalBytesExpectedToWrite:(NSInteger)totalBytesExpectedToWrite
{
    NSLog(@"- (void)connection:(NSURLConnection *)connection didSendBodyData:(NSInteger)bytesWritten totalBytesWritten:(NSInteger)totalBytesWritten totalBytesExpectedToWrite:(NSInteger)totalBytesExpectedToWrite");
}
//- (NSCachedURLResponse *)connection:(NSURLConnection *)connection willCacheResponse:(NSCachedURLResponse *)cachedResponse
//{
//    NSLog(@"- (NSCachedURLResponse *)connection:(NSURLConnection *)connection willCacheResponse:(NSCachedURLResponse *)cachedResponse");
//}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"- (void)connectionDidFinishLoading:(NSURLConnection *)connection");
    
    self.completeBlock();
}

@end
