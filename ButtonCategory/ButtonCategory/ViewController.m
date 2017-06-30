//
//  ViewController.m
//  ButtonCategory
//
//  Created by sunxu on 2017/6/30.
//  Copyright © 2017年 isunxu. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+ImagePositionAndHitArea.h"

@interface ViewController ()

@end

#define BUTTONW 80
#define BUTTONH 80
#define SPACEY 100

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    double spaceX = (self.view.frame.size.width - (2*BUTTONW)) / 3;
    double frameY = (self.view.frame.size.height - SPACEY - (2*BUTTONH)) / 2;

    for (NSInteger index = 0; index < 4; ++index) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.backgroundColor = [UIColor redColor];
        button.frame = CGRectMake((spaceX * ((index%2) + 1) + ((index%2) * BUTTONW)), frameY + (index / 2) * SPACEY , BUTTONW, BUTTONH);
        [button setImage:[UIImage imageNamed:@"icon"] forState:UIControlStateNormal];
        
        NSString *title = nil;
        
        /**
         在 使用 autoLayout 进行布局时，只需要将局部图片位置代码写在自动布局中即可，不需要其他操作
         扩大点击范围时，负值为扩大，正值为缩小，一定要注意
         
         */
        
        switch (index) {
            case 0:
                title = @"左";
                // 一行代码解决按钮上图片位置问题
                [button setImagePosition:ImagePositionLeft spacing:0];
                // 一行代码解决按钮点击热区问题
                button.hitTestEdgeInsets = UIEdgeInsetsMake(0, -20, 0, -30);
                [button setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
                break;
            case 1:
                title = @"右";
                 button.hitTestEdgeInsets = UIEdgeInsetsMake(-10, -20, 0, -30);
                [button setImagePosition:ImagePositionRight spacing:30];
                break;
            case 2:
                title = @"上";
                 button.hitTestEdgeInsets = UIEdgeInsetsMake(-20, -20, 0, -30);
                [button setImagePosition:ImagePositionTop spacing:10];
                break;
            case 3:
                title = @"下";
                 button.hitTestEdgeInsets = UIEdgeInsetsMake(-30, -20, 0, -30);
                [button setImagePosition:ImagePositionBottom spacing:10];
                break;
            default:
                break;
        }
        [button setTitle:title forState:UIControlStateNormal];
        [self.view addSubview:button];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}


@end
