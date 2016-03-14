//
//  HZMusicTool.h
//  HZMusicPlayer
//
//  Created by 鄂鸿桢 on 16/3/13.
//  Copyright © 2016年 e29hz. All rights reserved.
//

#import <Foundation/Foundation.h>

@class HZMusic;
@interface HZMusicTool : NSObject
/**
 *  返回所有歌曲
 */
+ (NSArray *)musics;

/**
 *  返回正在播放的歌曲
 */
+ (HZMusic *)playingMusic;
+ (void)setPlayingMusic:(HZMusic *)playingMusic;

/**
 *  下一曲
 */
+ (HZMusic *)nextMusic;

/**
 *  上一曲
 */
+ (HZMusic *)previousMusic;
@end
