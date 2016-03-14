//
//  HZMusicViewController.m
//  HZMusicPlayer
//
//  Created by 鄂鸿桢 on 16/3/12.
//  Copyright © 2016年 e29hz. All rights reserved.
//

#import "HZMusicViewController.h"
#import "MJExtension.h"
#import "UIImage+HZ.h"
#import "Colours.h"
#import "HZMusic.h"
#import "HZMusicCell.h"
#import "HZPlayingViewController.h"
#import "HZMusicTool.h"

@interface HZMusicViewController ()
@property (nonatomic, strong) HZPlayingViewController *playingVc;
@end

@implementation HZMusicViewController

- (HZPlayingViewController *)playingVc
{
    if (!_playingVc) {
        self.playingVc = [[HZPlayingViewController alloc] init];
    }
    return _playingVc;
}



- (void)viewDidLoad {
    [super viewDidLoad];
 
    
}


#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [HZMusicTool musics].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    HZMusicCell *cell = [HZMusicCell cellWithTableView:tableView];
    
    cell.music = [HZMusicTool musics][indexPath.row];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 1.取消选中被点击的这行
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    // 2.设置正在播放的歌曲
    [HZMusicTool setPlayingMusic:[HZMusicTool musics][indexPath.row]];
    
    // 3.显示播放界面
    [self.playingVc show];
}

@end
