//
//  DFLikeCommentToolbar.h
//  DFTimelineView
//
//  Created by Allen Zhong on 15/9/29.
//  Copyright (c) 2015年 Datafans, Inc. All rights reserved.
//
#import <Foundation/Foundation.h>

@protocol DFLikeCommentToolbarDelegate <NSObject>

@required

-(void) onLike;
-(void) onComment;

@end

@interface DFLikeCommentToolbar : UIImageView


@property (nonatomic, weak) id<DFLikeCommentToolbarDelegate> delegate;


@end
