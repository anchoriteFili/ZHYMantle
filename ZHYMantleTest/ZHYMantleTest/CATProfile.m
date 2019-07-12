//
//  CATProfile.m
//  ZHYMantleTest
//
//  Created by 赵宏亚 on 2019/7/11.
//  Copyright © 2019 赵宏亚. All rights reserved.
//

#import "CATProfile.h"

@implementation CATProfile



- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    return @{
             @keypath(model, xh)   : @"XH",
             @keypath(model, bbmc) : @"BBMC",
             @keypath(model, bbh)  : @"BBH",
             @keypath(model, bz)   : @"BZ",
             @keypath(model, xzdz) : @"XZDZ",
             @keypath(model, fbsj) : @"FBSJ"
             };
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    <#code#>
}

+ (instancetype)modelWithDictionary:(NSDictionary *)dictionaryValue error:(NSError *__autoreleasing *)error {
    <#code#>
}

+ (NSSet *)propertyKeys {
    <#code#>
}

- (BOOL)validate:(NSError *__autoreleasing *)error {
    <#code#>
}

@end
