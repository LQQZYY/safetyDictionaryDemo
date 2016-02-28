//
//  NSMutableDictionary+SafetyDictionary.m
//  SafetyObjectDemo
//
//  Created by Artron_LQQ on 16/2/27.
//  Copyright © 2016年 Artup. All rights reserved.
//

#import "NSMutableDictionary+SafetyDictionary.h"
#import "NSObject+Until.h"

static const NSString *lqq_defaultObject = @"defaultObject";

@implementation NSMutableDictionary (SafetyDictionary)

#pragma mark - 使用runtime替换系统方法
+(void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        @autoreleasepool {
        [objc_getClass("__NSDictionaryM") swizzleMethod:@selector(setObject:forKey:) withMethod:@selector(lqq_setObject:forKey:) error:nil];
        };
    });
}

- (void)lqq_setObject:(id)anObject forKey:(id <NSCopying>)aKey {
    if (!anObject || [anObject isKindOfClass:[NSNull class]]) {
        [self lqq_setObject:lqq_defaultObject forKey:aKey];
    } else {
        [self lqq_setObject:anObject forKey:aKey];
    }
}

#pragma mark -- 自定义方法
- (void)lqqNew_setObject:(id)anObject forKey:(id<NSCopying>)aKey
{
    if ( anObject == nil || [anObject isKindOfClass:[NSNull class]] ) {
        [self setObject:lqq_defaultObject forKey:aKey];
    }
    else{
        [self setObject:anObject forKey:aKey];
    }
}

@end
