//
//  HZMusicCell.m
//  HZMusicPlayer
//
//  Created by 鄂鸿桢 on 16/3/12.
//  Copyright © 2016年 e29hz. All rights reserved.
//

#import "HZMusicCell.h"
#import "HZMusic.h"
#import "UIImage+HZ.h"
#import "Colours.h"

@implementation HZMusicCell
+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"music";
    HZMusicCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[HZMusicCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    return cell;
}

- (void)setMusic:(HZMusic *)music
{
    _music = music;
    
    self.textLabel.text = music.name;
    self.detailTextLabel.text = music.singer;
    self.imageView.image = [UIImage circleImageWithName:music.singerIcon borderWidth:1 borderColor:[UIColor pinkColor]];
}

@end
