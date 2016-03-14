//
//  HZMusicTool.m
//  HZMusicPlayer
//
//  Created by 鄂鸿桢 on 16/3/13.
//  Copyright © 2016年 e29hz. All rights reserved.
//

#import "HZMusicTool.h"
#import "HZMusic.h"
#import "MJExtension.h"

@implementation HZMusicTool

static NSArray *_musics;
static HZMusic *_playingMusic;
/**
 *  返回所有歌曲
 */
+ (NSArray *)musics
{
    if (!_musics) {
        _musics = [HZMusic mj_objectArrayWithFilename:@"Musics.plist"];
    }
    return _musics;
}

/**
 *  返回正在播放的歌曲
 */
+ (HZMusic *)playingMusic
{
    return _playingMusic;
}

+ (void)setPlayingMusic:(HZMusic *)playingMusic
{
    if (!playingMusic || ![[self musics] containsObject:playingMusic]) {
        return;
    }
    if (_playingMusic == playingMusic) {
        return;
    }
    
    _playingMusic = playingMusic;
    
}

/**
 *  下一曲
 */
+ (HZMusic *)nextMusic
{
    NSInteger nextIndex = 0;
    if (_playingMusic) {
        NSInteger playingIndex = [[self musics] indexOfObject:_playingMusic];
        nextIndex = playingIndex + 1;
        if (nextIndex >= [self musics].count) {
            nextIndex = 0;
        }
        
    }
    return [self musics][nextIndex];
    
}

/**
 *  上一曲
 */
+ (HZMusic *)previousMusic
{
    NSInteger previousIndex = 0;
    if (_playingMusic) {
        NSInteger playingIndex = [[self musics] indexOfObject:_playingMusic];
        previousIndex = playingIndex - 1;
        if (previousIndex < 0) {
            previousIndex = [self musics].count - 1;
        }
        
    }
    return [self musics][previousIndex];
}

@end
