//
//  HZAudioTool.h
//  HZMusicPlayer
//
//  Created by 鄂鸿桢 on 16/3/13.
//  Copyright © 2016年 e29hz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface HZAudioTool : NSObject
/**
 *  播放音乐
 *
 *  @param filename 音乐的文件名
 */
+ (AVAudioPlayer *)playMusic:(NSString *)filename;
/**
 *  暂停音乐
 *
 *  @param filename 音乐的文件名
 */
+ (void)pauseMusic:(NSString *)filename;
/**
 *  停止音乐
 *
 *  @param filename 音乐的文件名
 */
+ (void)stopMusic:(NSString *)filename;

/**
 *  播放音效
 *
 *  @param filename 音效的文件名
 */
+ (void)playSound:(NSString *)filename;
/**
 *  销毁音效
 *
 *  @param filename 音效的文件名
 */
+ (void)disposeSound:(NSString *)filename;
@end
