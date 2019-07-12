//
//  ViewController.m
//  ZHYMantleTest
//
//  Created by 赵宏亚 on 2019/7/10.
//  Copyright © 2019 赵宏亚. All rights reserved.
//

#import "ViewController.h"
#import "TempObj.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    NSDictionary *dict = [[NSDictionary alloc] initWithObjects:@[@"iOS开发工程师",@"23岁",@1457097793] forKeys:@[@"name",@"age",@"birth"]];
    
    NSDictionary *dict1 = [[NSDictionary alloc] initWithObjects:@[@"我是屎壳郎情调",@"25岁"] forKeys:@[@"name",@"age"]];
    
    int count = 3;
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:count];
    for (int i = 0 ; i<count;i++)
    {
        [array addObject:dict1];
    }
    
    NSMutableDictionary *dicts = [[NSMutableDictionary alloc] initWithDictionary:dict];
    [dicts setObject:dict1 forKey:@"model1"];
    [dicts setObject:array forKey:@"listArray"];
    
    TempObj *obj = [MTLJSONAdapter modelOfClass:[TempObj class] fromJSONDictionary:dicts error:nil];
    

}


@end
