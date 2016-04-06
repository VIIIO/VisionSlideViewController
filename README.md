VisionSlideViewController
=====
* Advanced pageViewController which could switch page by titleView of navigation bar and supports infinite pages. This controller should be inherited, so please create a subclass when using it.
* 可直接通過导航栏进行分页切换的布局容器，不限制分页数量。本Controller为基类，实际项目中需要继承使用(subClass)。

### Screenshots
None.

### Contents
## Installation 安装

* Just drag `VisionControl` folder into your project
* 将`VisionControl`文件夹拖入你的項目

### 在你需要使用控件的文件中导入头文件:
```objective-c
#import "VisionSlideViewController.h"
```
## Usage 使用方法

### Create a subclass
```objective-c
//VisionSlideViewControllerDemo.h
@interface VisionSlideViewControllerDemo : VisionSlideViewController
```

### Implementation
```objective-c
/* VisionSlideViewControllerDemo.m */
@interface VisionSlideViewControllerDemo ()<VisionSlideViewControllerDataSource,VisionSlideViewControllerDelegate>
@end

//Setup
- (void)viewDidLoad{
    [super viewDidLoad];
    self.delegate = self;
    self.dataSource = self;
    ///--------------
    ///init data or anything else
    ///--------------
    [self reloadData];
}
```
### The most important : Delegate & Datasource
```objective-c
//Required
- (NSInteger)numberOfControllersInVisionSlider:(VisionSlideViewController *)slider;
- (UIViewController *)visionSlider:(VisionSlideViewController *)slider viewControllerAtIndex:(NSInteger)index;

//Optional
- (NSString *)visionSlider:(VisionSlideViewController *)slider titleForViewControllerAtIndex:(NSInteger)index;
- (void)visionSlider:(VisionSlideViewController *)slider didEndDisplayingViewController:(UIViewController *)controller atIndex:(NSInteger)index;
```
#### Please download this project or [see demo files](https://github.com/VIIIO/VisionSlideViewController/blob/master/VisionSlideViewController/Demo/VisionSlideViewControllerDemo.m "see demo files") to get more informations 

## Features 特性
* Replaced titleView of navigationbar with `VisionSlideSegmentView`. Click [HERE](https://github.com/VIIIO/VisionSlideSegmentView "VisionSlideSegmentView") to get more informations. </br>
* Support infinite pages</br>
* Slide to show prev/next page</br>
* 结合UINavigationController，直接将navigationbar的titleView作为分页选择器。若您对此分页选择器感兴趣，可以独立进行安装，详情请查看[VisionSlideSegmentView](https://github.com/VIIIO/VisionSlideSegmentView "VisionSlideSegmentView")</br>
* 无限分页数</br>
* 支持左右滑动翻页</br>

## Requirements 要求
* iOS 6 or later. Requires ARC  ,support iPhone/iPad.
* iOS 6及以上系统可使用. 本控件纯ARC，支持iPhone/iPad横竖屏

## More 更多 

Please create a issue if you have any questions.
Welcome to visit my [Blog](http://blog.viiio.com/ "Vision的博客")

## Licenses
All source code is licensed under the [MIT License](https://github.com/VIIIO/VisionSlideViewController/blob/master/LICENSE "License").

