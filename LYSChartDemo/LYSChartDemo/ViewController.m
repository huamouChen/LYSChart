//
//  ViewController.m
//  LYSChartDemo
//
//  Created by HENAN on 17/7/26.
//  Copyright © 2017年 LYS. All rights reserved.
//

#import "ViewController.h"
#import "LYSLineChart.h"
#import "LYSHistogramChart.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    LYSHistogramChart *chartView = [[LYSHistogramChart alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 200)];
    chartView.backgroundColor = [[UIColor lightGrayColor] colorWithAlphaComponent:0.1];
    [self.view addSubview:chartView];
    
    chartView.row = 5;
    chartView.column = 5;
    
    chartView.columnData = @[@"跨省",@"AAA",@"AA",@"A",@"普通"];
    chartView.valueData = @[@"0.648",@"0.240",@"0.144",@"0.540",@"0.849"];
    
    chartView.isShowBenchmarkLine = YES;
    chartView.benchmarkLineStyle.benchmarkValue = @"0.6";
    
    chartView.canvasEdgeInsets = UIEdgeInsetsMake(20, 40, 20, 40);
    chartView.precisionScale = 1000;
    chartView.yAxisPrecisionScale = 2;
    [chartView setHistogramClickAction:^(NSInteger index) {
        NSLog(@"%ld",index);
    }];
    [chartView reloadData];
    
    LYSLineChart *chartView1 = [[LYSLineChart alloc] initWithFrame:CGRectMake(0, 230, self.view.frame.size.width, 200)];
    chartView1.backgroundColor = [[UIColor lightGrayColor] colorWithAlphaComponent:0.1];
    [self.view addSubview:chartView1];
    
    chartView1.row = 5;
    chartView1.column = 5;
    
    chartView1.columnData = @[@"跨省",@"AAA",@"AA",@"A",@"普通"];
    chartView1.valueData = @[@"0.648",@"0.240",@"0.144",@"0.540",@"0.849"];
    
    chartView1.isShowBenchmarkLine = YES;
    chartView1.benchmarkLineStyle.benchmarkValue = @"0.6";
    
    chartView1.canvasEdgeInsets = UIEdgeInsetsMake(20, 40, 20, 40);
    chartView1.precisionScale = 1000;
    chartView1.yAxisPrecisionScale = 2;
    
    chartView1.isCurve = YES;
    
    
    [chartView1 reloadData];
    
    LYSLineChart *chartView2 = [[LYSLineChart alloc] initWithFrame:CGRectMake(0, 440, self.view.frame.size.width, 200)];
    chartView2.backgroundColor = [[UIColor lightGrayColor] colorWithAlphaComponent:0.1];
    [self.view addSubview:chartView2];
    
    chartView2.row = 5;
    chartView2.column = 5;
    
    chartView2.columnData = @[@"跨省",@"AAA",@"AA",@"A",@"普通"];
    chartView2.valueData = @[@"0.648",@"0.240",@"0.144",@"0.540",@"0.849"];
    
    chartView2.isShowBenchmarkLine = YES;
    chartView2.benchmarkLineStyle.benchmarkValue = @"0.6";
    
    chartView2.canvasEdgeInsets = UIEdgeInsetsMake(20, 40, 20, 40);
    chartView2.precisionScale = 1000;
    chartView2.yAxisPrecisionScale = 2;
    
    
    [chartView2 reloadData];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
