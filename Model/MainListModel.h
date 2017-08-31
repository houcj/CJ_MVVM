//
//  MainListModel.h
//  CJ_MVVM
//
//  Created by 侯春娇 on 2017/8/28.
//  Copyright © 2017年 侯春娇. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@interface MainListModel : JSONModel

@property (nonatomic) NSString *avatar_source;
@property (nonatomic) NSString *id;
@property (nonatomic) NSString *is_following_user;
@property (nonatomic) NSString *nickname;
@property (nonatomic) NSString *slug;
@property (nonatomic) NSString *total_likes_count;
@property (nonatomic) NSString *total_wordage;

@end
