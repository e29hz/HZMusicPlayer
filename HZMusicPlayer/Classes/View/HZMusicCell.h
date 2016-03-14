//
//  HZMusicCell.h
//  HZMusicPlayer
//
//  Created by 鄂鸿桢 on 16/3/12.
//  Copyright © 2016年 e29hz. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HZMusic;

@interface HZMusicCell : UITableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView;

@property (nonatomic, strong) HZMusic *music;

@end
