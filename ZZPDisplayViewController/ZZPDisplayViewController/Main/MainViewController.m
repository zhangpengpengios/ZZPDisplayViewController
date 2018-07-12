//
//  MainViewController.m
//  ZZPDisplayViewController
//
//  Created by ZPP on 2018/7/12.
//  Copyright © 2018年 ZZP. All rights reserved.
//

#import "MainViewController.h"
#import "ChildViewController.h"


@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"网易新闻";
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 添加所有子控制器
    [self setUpAllViewController];
    
    [self setUpTitleEffect:^(UIColor *__autoreleasing *titleScrollViewColor, UIColor *__autoreleasing *norColor, UIColor *__autoreleasing *selColor, UIFont *__autoreleasing *titleFont, CGFloat *titleHeight, CGFloat *titleWidth) {
        *norColor = [UIColor lightGrayColor];
        *selColor = [UIColor blackColor];
        *titleWidth = [UIScreen mainScreen].bounds.size.width / 4;
    }];
    
    // 标题渐变
    // *推荐方式(设置标题渐变)
    [self setUpTitleGradient:^(YZTitleColorGradientStyle *titleColorGradientStyle, UIColor *__autoreleasing *norColor, UIColor *__autoreleasing *selColor) {
        
    }];
    
    [self setUpUnderLineEffect:^(BOOL *isUnderLineDelayScroll, CGFloat *underLineH, UIColor *__autoreleasing *underLineColor,BOOL *isUnderLineEqualTitleWidth) {
        //        *isUnderLineDelayScroll = YES;
        *isUnderLineEqualTitleWidth = YES;
    }];
    
    // 字体缩放
    // 推荐方式 (设置字体缩放)
    //    [self setUpTitleScale:^(CGFloat *titleScale) {
    //        // 字体缩放比例
    //        *titleScale = 1.3;
    //    }];
}

// 添加所有子控制器
- (void)setUpAllViewController
{
    
    // 段子
    ChildViewController *wordVc1 = [[ChildViewController alloc] init];
    wordVc1.title = @"小码哥";
    [self addChildViewController:wordVc1];
    
    // 段子
    ChildViewController *wordVc2 = [[ChildViewController alloc] init];
    wordVc2.title = @"M了个J";
    [self addChildViewController:wordVc2];
    
    // 段子
    ChildViewController *wordVc3 = [[ChildViewController alloc] init];
    wordVc3.title = @"啊峥";
    [self addChildViewController:wordVc3];
    
    ChildViewController *wordVc4 = [[ChildViewController alloc] init];
    wordVc4.title = @"吖了个峥";
    [self addChildViewController:wordVc4];
    
    //    // 全部
    //    ChildViewController *allVc = [[ChildViewController alloc] init];
    //    allVc.title = @"全部";
    //    [self addChildViewController:allVc];
    //
        // 视频
        ChildViewController *videoVc = [[ChildViewController alloc] init];
        videoVc.title = @"视频";
        [self addChildViewController:videoVc];
    
        // 声音
        ChildViewController *voiceVc = [[ChildViewController alloc] init];
        voiceVc.title = @"声音";
        [self addChildViewController:voiceVc];
    
        // 图片
        ChildViewController *pictureVc = [[ChildViewController alloc] init];
        pictureVc.title = @"图片";
        [self addChildViewController:pictureVc];
    
        // 段子
        ChildViewController *wordVc = [[ChildViewController alloc] init];
        wordVc.title = @"段子";
        [self addChildViewController:wordVc];
    

}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
