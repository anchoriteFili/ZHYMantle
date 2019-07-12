//
//  TempObj.h
//  ZHYMantleTest
//
//  Created by 赵宏亚 on 2019/7/11.
//  Copyright © 2019 赵宏亚. All rights reserved.
//

#import <Mantle/Mantle.h>

NS_ASSUME_NONNULL_BEGIN


@interface TempObj1 : MTLModel<MTLJSONSerializing>

@property (nonatomic,strong) NSString *name_a;
@property (nonatomic,strong) NSString *age_a;

@end


@interface TempObj : MTLModel<MTLJSONSerializing>

@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) NSString *age;
@property (nonatomic,strong) NSDate *birth;
@property (nonatomic,strong) TempObj1 *model;
@property (nonatomic,strong) NSArray *list;

@end

NS_ASSUME_NONNULL_END
