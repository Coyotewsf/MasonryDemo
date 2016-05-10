//
//  ViewController.m
//  MasonryTest
//
//  Created by 海玩 on 16/3/9.
//  Copyright © 2016年 haiwan. All rights reserved.
//


//Autoresizing
//Autolayout
//Masonry

#import "ViewController.h"
#import "Masonry.h"

@interface ViewController ()

@property (nonatomic, strong) UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
//    btn.titleLabel.numberOfLines = 0;
//    [btn setTitle:@"nnnnnmmmmmmmmmuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuoo" forState:UIControlStateNormal];
//    [self.view addSubview:btn];
//    btn.backgroundColor = [UIColor redColor];
//    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(self.view).offset(20);
//        make.left.equalTo(self.view).offset(20);
//        make.right.equalTo(self.view).offset(-20);
//        //make.baseline.equalTo(self.view.mas_centerY);
//    }];
    
    CGFloat w = [UIScreen mainScreen].bounds.size.width;
    
    UIView *greenView = [[UIView alloc] init];
    greenView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:greenView];
    
    UIView *redView = [[UIView alloc] init];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    
    UIView *blueView= [[UIView alloc] init];
    blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueView];
    
    UIView *yellowView = [[UIView alloc] init];
    yellowView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:yellowView];
    
    UIView *blackView = [[UIView alloc] init];
    blackView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:blackView];
    int padding = 10;
    [greenView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(padding);
        make.top.equalTo(self.view).offset(padding);
        make.width.equalTo(redView).multipliedBy(1.5);
        make.right.equalTo(redView.mas_left).offset(-padding);
        make.bottom.equalTo(blueView.mas_top).offset(-padding);
    }];
    
    [redView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(padding);
        make.left.equalTo(greenView.mas_right).offset(padding);
        make.right.equalTo(self.view).offset(-padding);
        make.height.equalTo(self.view).multipliedBy(0.5);
    }];
    
    [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(greenView.mas_bottom).offset(padding);
        make.left.equalTo(greenView);
        make.right.equalTo(yellowView.mas_left).offset(-padding);
        make.bottom.equalTo(redView);
        make.height.equalTo(greenView).multipliedBy(0.5);
    }];

    [yellowView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(blueView);
        make.left.equalTo(blueView.mas_right).offset(padding);
        make.bottom.equalTo(blueView);
        make.width.equalTo(blueView).multipliedBy(1.25);
        make.right.equalTo(redView.mas_left).offset(-padding);
    }];

    [blackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(blueView.mas_bottom).offset(padding);
        make.left.equalTo(greenView);
        make.right.equalTo(self.view).offset(-padding);
        make.bottom.equalTo(self.view).offset(-padding);
        //make.height.equalTo(@100);
    }];
    
//    _scrollView = [UIScrollView new];
//    _scrollView.backgroundColor = [UIColor whiteColor];
//    [self.view addSubview:_scrollView];
//    [_scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.equalTo(self.view).with.insets(UIEdgeInsetsMake(5,5,5,5));
//    }];
//    UIView *container = [UIView new];
//    [_scrollView addSubview:container];
//    [container mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.equalTo(_scrollView);
//        make.width.equalTo(_scrollView);
//    }];
//    int count = 10;
//    UIView *lastView = nil;
//    for ( int i = 1 ; i <= count ; ++i )
//    {
//        UIView *subv = [UIView new];
//        [container addSubview:subv];
//        subv.backgroundColor = [UIColor colorWithHue:( arc4random() % 256 / 256.0 )
//                                          saturation:( arc4random() % 128 / 256.0 ) + 0.5
//                                          brightness:( arc4random() % 128 / 256.0 ) + 0.5
//                                               alpha:1];
//        
//        [subv mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.and.right.equalTo(container);
//            make.height.mas_equalTo(@(20*i));
//            
//            if ( lastView )
//            {
//                make.top.mas_equalTo(lastView.mas_bottom);
//            }
//            else
//            {
//                make.top.mas_equalTo(container.mas_top);
//            }
//        }];
//        
//        lastView = subv;
//    }
//    [container mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.width.equalTo(_scrollView);
//        make.bottom.equalTo(lastView.mas_bottom);
//    }];
    
    
//    UIView *v = [[UIView alloc] init];
//    v.backgroundColor = [UIColor redColor];
//    v.translatesAutoresizingMaskIntoConstraints = NO;
//    [self.view addSubview:v];
//    
//    UIView *v2 = [[UIView alloc] init];
//    v2.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:v2];
//    v2.translatesAutoresizingMaskIntoConstraints = NO;
    
//    NSDictionary *views = @{@"v": v,@"v2":v2};
//    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:v
//                                                         attribute:NSLayoutAttributeWidth
//                                                         relatedBy:NSLayoutRelationEqual
//                                                            toItem:self.view
//                                                         attribute:NSLayoutAttributeWidth
//                                                        multiplier:1.0
//                                                           constant:0]];
//    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:v
//                                                          attribute:NSLayoutAttributeHeight
//                                                          relatedBy:NSLayoutRelationEqual
//                                                             toItem:self.view
//                                                          attribute:NSLayoutAttributeHeight
//                                                         multiplier:.5
//                                                           constant:0]];
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[v][v2(==v)]-0-|" options:0 metrics:nil views:views]];
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[v][v2(==v)]-0-[v2]-0-|" options:0 metrics:nil views:views]];
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[v]-0-[v2]-0-|" options:0 metrics:nil views:views]];
//    [v mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.left.right.equalTo(self.view);
//        make.height.equalTo(self.view).multipliedBy(0.5);
//    }];
//    [v2 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.right.height.equalTo(v);
//        make.top.equalTo(v.mas_bottom);
//    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
