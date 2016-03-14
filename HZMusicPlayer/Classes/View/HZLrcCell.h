//
//  HZLrcCell.h
//  HZMusicPlayer
//
//  Created by 鄂鸿桢 on 16/3/14.
//  Copyright © 2016年 e29hz. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HZLrcLine;

@interface HZLrcCell : UITableViewCell
+ (instancetype)cellWithTableView:(UITableView *)tableView;
@property (nonatomic, strong) HZLrcLine *lrcLine;
@end
