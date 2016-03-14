//
//  HZLrcCell.m
//  HZMusicPlayer
//
//  Created by 鄂鸿桢 on 16/3/14.
//  Copyright © 2016年 e29hz. All rights reserved.
//

#import "HZLrcCell.h"
#import "HZLrcLine.h"

@implementation HZLrcCell

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"lrc";
    HZLrcCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[HZLrcCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    return cell;
}


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.textLabel.textColor = [UIColor whiteColor];
        self.textLabel.backgroundColor = [UIColor redColor];
        self.textLabel.numberOfLines = 0;
        self.textLabel.textAlignment = NSTextAlignmentCenter;
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.textLabel.frame = self.bounds;
}

- (void)setLrcLine:(HZLrcLine *)lrcLine
{
    _lrcLine = lrcLine;
    
    self.textLabel.text = lrcLine.word;
}


@end
