# UIButton-SXImagePositon
项目中一直在使用的 UIButton 的扩展，只需要两行代码解决 Button 图片和文字的位置问题和增加按钮触控热区的问题

使用方法：

* 直接将 Category 文件夹导入工程中，在相应位置引入头文件即可
    > "UIButton+ImagePositionAndHitArea.h"

* 设置文字图片位置
    > [button setImagePosition:ImagePositionLeft spacing:0];
    
* 增加按钮触控热区
    > button.hitTestEdgeInsets = UIEdgeInsetsMake(0, -20, 0, -30);
    
* 备注
    扩大按钮响应热区时，负值为扩大，正值为缩小。
    完全支持自动布局，只需要将方法写在自动布局方法下面即可。 

    

