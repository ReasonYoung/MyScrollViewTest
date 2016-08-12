//
//  ViewController.m
//  MyScrollViewTest
//
//  Created by Apple on 16/7/18.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"

#import "XKScrollView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    XKScrollView *scrollView = [[XKScrollView alloc]initWithFrame:self.view.bounds withScrollHeight:200.0f];
//    NSArray *array = [NSArray arrayWithObjects:@"http://f.hiphotos.baidu.com/image/h%3D360/sign=94f3ccdf74094b36c4921deb93cd7c00/810a19d8bc3eb13596a485bba41ea8d3fd1f444a.jpg",@"http://f.hiphotos.baidu.com/image/h%3D360/sign=442733c30afa513d4eaa6ad80d6c554c/cb8065380cd791234275326baf345982b2b7801c.jpg",@"http://g.hiphotos.baidu.com/image/h%3D360/sign=e163570c99504fc2bd5fb603d5dde7f0/c8177f3e6709c93dbe82d5f39d3df8dcd1005446.jpg",@"http://d.hiphotos.baidu.com/image/h%3D360/sign=10a7c911d60735fa8ef048bfae500f9f/060828381f30e9240326f73b4e086e061d95f73e.jpg",@"http://e.hiphotos.baidu.com/image/h%3D360/sign=9c4d0179af4bd1131bcdb1346aaea488/7af40ad162d9f2d303f4c1e5abec8a136227ccd7.jpg", nil];
    
    NSArray *array = [NSArray arrayWithObjects:@"http://f.hiphotos.baidu.com/image/h%3D360/sign=94f3ccdf74094b36c4921deb93cd7c00/810a19d8bc3eb13596a485bba41ea8d3fd1f444a.jpg",@"http://f.hiphotos.baidu.com/image/h%3D360/sign=442733c30afa513d4eaa6ad80d6c554c/cb8065380cd791234275326baf345982b2b7801c.jpg", nil];
    
    scrollView.picModles = [[NSMutableArray alloc]initWithArray:array];
    
    [scrollView startTimer];
    
    [self.view addSubview:scrollView];
    [scrollView setMyTapCurrentImgBlock:^(NSInteger index) {
    
        NSLog(@"%ld",(long)index);
        
    }];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
