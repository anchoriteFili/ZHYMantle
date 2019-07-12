//
//  TempObj.m
//  ZHYMantleTest
//
//  Created by 赵宏亚 on 2019/7/11.
//  Copyright © 2019 赵宏亚. All rights reserved.
//

#import "TempObj.h"

@implementation TempObj1

+(NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{ @"name_a":@"name",
              @"age_a":@"age"};
}

@end


@implementation TempObj

//使用Mantle必须实现的协议  KVO的形式
+(NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{ @"name":@"name",
              @"age":@"age",
              @"birth":@"birth",
              @"model":@"model1",
              @"list":@"listArray"  //list：属性名称    listArray：对应需要解析的字段key
              };
}

//属性值做转换 例如 时间戳转成NSDate，dic转model等操作（嵌套model）
//方法一：（这是协议方法）
+(NSValueTransformer *)JSONTransformerForKey:(NSString *)key {
    if ([key isEqualToString:@"birth"])
    {
        return [MTLValueTransformer transformerUsingForwardBlock:^(NSString *str, BOOL *success, NSError **error){
            return [NSDate dateWithTimeIntervalSince1970:str.floatValue];
        } reverseBlock:^(NSDate *date, BOOL *success, NSError **error) {
            return [NSString stringWithFormat:@"%f", [date timeIntervalSince1970]];
        }];
    }
    else if ([key isEqualToString:@"list"])
    {
        return [MTLJSONAdapter arrayTransformerWithModelClass:[TempObj1 class]];
    }
    /*
     跟方法二一样（不重复所以注释掉）
     else if ([key isEqualToString:@"model"])
     {
     return [MTLJSONAdapter dictionaryTransformerWithModelClass:[TempObj1 class]];
     }
     */
    return nil;
    
}

+ (NSValueTransformer *)modelJSONTransformer {
    
    return [MTLJSONAdapter dictionaryTransformerWithModelClass:[TempObj1 class]];
    
    // 下面方法与上面这个效果一样。
    /*
     return [MTLValueTransformer transformerUsingForwardBlock:^id(id value,BOOL *success, NSError *__autoreleasing *error) {
     
     NSDictionary *dic = value;
     
     return [MTLJSONAdapter modelOfClass:[TempObj1 class] fromJSONDictionary:dic error:nil];
     
     }];
     */
    
    
}
@end


