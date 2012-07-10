//
//  NSBundle+Extension.m
//  commonlib
//
//  Created by Laurence Tsang on 12-7-9.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "NSBundle+Extension.h"

@implementation NSBundle (Extension)

+ (NSBundle*)mapResourcesBundle 
{
    static dispatch_once_t onceToken;
    static NSBundle *myLibraryResourcesBundle = nil;
    dispatch_once(&onceToken, ^{
        myLibraryResourcesBundle = [NSBundle bundleWithURL:[[NSBundle mainBundle] URLForResource:@"MapResource" withExtension:@"bundle"]];
    });
    return myLibraryResourcesBundle;
}

+ (NSBundle *)chatResourcesBundle
{
    static dispatch_once_t onceToken;
    static NSBundle *myLibraryResourcesBundle = nil;
    dispatch_once(&onceToken, ^{
        myLibraryResourcesBundle = [NSBundle bundleWithURL:[[NSBundle mainBundle] URLForResource:@"ChatResource" withExtension:@"bundle"]];
    });
    return myLibraryResourcesBundle;
}

+ (NSBundle *)commonResourceBundle
{
    static dispatch_once_t onceToken;
    static NSBundle *myLibraryResourcesBundle = nil;
    dispatch_once(&onceToken, ^{
        myLibraryResourcesBundle = [NSBundle bundleWithURL:[[NSBundle mainBundle] URLForResource:@"CommonResource" withExtension:@"bundle"]];
    });
    return myLibraryResourcesBundle;
}

@end
