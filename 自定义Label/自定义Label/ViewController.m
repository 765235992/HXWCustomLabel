//
//  ViewController.m
//  自定义Label
//
//  Created by huaxianwei on 16/5/26.
//  Copyright © 2016年 Jim. All rights reserved.
//

#import "ViewController.h"
#import "JHCTLabel.h"
#import "JHCoreTextModle.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    JHCTLabel *laebel = [[JHCTLabel alloc] initWithFrame:CGRectMake(10, 100, 200,100)];
    
    
    
    NSArray *sourceArray = @[@{@"width":@"200",
                         @"fontSize":[NSNumber numberWithInt:16],
                         @"lineSpace":[NSNumber numberWithInt:16],
                         @"textColor":[NSNumber numberWithInt:0x68228B],
                         @"modleType":[NSNumber numberWithInt:JHCoreTextModleTextType]
                         ,@"text":@"作者：小红|小李|小法"},
                       @{@"width":@"200",
                         @"fontSize":[NSNumber numberWithInt:25],
                         @"lineSpace":[NSNumber numberWithInt:16],
                         @"textColor":[NSNumber numberWithInt:0xEE4000],
                         @"modleType":[NSNumber numberWithInt:JHCoreTextModleButtonType]
                         ,@"text":@"huaxianwei@yicai.com今天是一个号日子啊tt"},
                       @{@"width":@"200",
                          @"fontSize":[NSNumber numberWithInt:16],
                          @"lineSpace":[NSNumber numberWithInt:16],
                          @"textColor":[NSNumber numberWithInt:0x68228B],
                          @"modleType":[NSNumber numberWithInt:JHCoreTextModleTextType]
                          ,@"text":@"今天是一个号日子。"}];
    laebel.sourceArray = sourceArray;
    [self.view addSubview:laebel];
    laebel.labelClicked = ^(id sender){
        NSLog(@"%@",sender);
    };
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
