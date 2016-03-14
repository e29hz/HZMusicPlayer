//
//  HZLrcView.h
//  HZMusicPlayer
//
//  Created by 鄂鸿桢 on 16/3/13.
//  Copyright © 2016年 e29hz. All rights reserved.
//

#import "DRNRealTimeBlurView.h"

@interface HZLrcView : DRNRealTimeBlurView
/**
 *  歌词文件名
 */
@property (nonatomic, copy) NSString *lrcname;

@property (nonatomic, assign) NSTimeInterval currentTime;

@end
