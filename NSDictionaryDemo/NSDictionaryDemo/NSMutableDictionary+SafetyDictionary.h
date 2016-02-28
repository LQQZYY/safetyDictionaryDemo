//
//  NSMutableDictionary+SafetyDictionary.h
//  SafetyObjectDemo
//
//  Created by Artron_LQQ on 16/2/27.
//  Copyright © 2016年 Artup. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (SafetyDictionary)

- (void)lqqNew_setObject:(id)anObject forKey:(id<NSCopying>)aKey;
@end
