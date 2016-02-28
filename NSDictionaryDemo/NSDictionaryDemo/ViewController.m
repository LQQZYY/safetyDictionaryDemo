//
//  ViewController.m
//  NSDictionaryDemo
//
//  Created by Artron_LQQ on 16/2/28.
//  Copyright © 2016年 Artup. All rights reserved.
//

#import "ViewController.h"
#import "NSMutableDictionary+SafetyDictionary.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *str = nil;
    
    NSMutableDictionary *mDic = [[NSMutableDictionary alloc]init];
    [mDic setObject:str forKey:@"a"];
    
    NSLog(@"%@",[mDic objectForKey:@"a"]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
