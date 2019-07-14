//
//  ShareModule.m
//  WeexPluginTemp
//
//  Created by  on 17/3/14.
//  Copyright © 2017年 . All rights reserved.
//

#import "ShareModule.h"
#import <WeexPluginLoader/WeexPluginLoader.h>

@implementation ShareModule

WX_PlUGIN_EXPORT_MODULE(share, ShareModule)
WX_EXPORT_METHOD(@selector(share:callback:))

@synthesize weexInstance;

-(void)share:(NSDictionary *)options callback:(WXModuleCallback)callback
{
    
    NSString *content = [options valueForKey:@"content"];
    
    NSArray *activityItems = @[content];
    
    UIActivityViewController *activityVc = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
    
    [[weexInstance viewController] presentViewController:activityVc animated:YES completion:nil];
    
    activityVc.completionWithItemsHandler = ^(UIActivityType _Nullable activityType, BOOL completed, NSArray * _Nullable returnedItems, NSError * _Nullable activityError)
    {
        
    };
    
}



@end
