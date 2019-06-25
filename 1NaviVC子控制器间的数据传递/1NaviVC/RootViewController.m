//
//  RootViewController.m
//  1NaviVC
//
//  Created by 谢鑫 on 2019/6/25.
//  Copyright © 2019 Shae. All rights reserved.
//

#import "RootViewController.h"
#import "DetailViewController.h"
@interface RootViewController ()<DetailViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UITextField *rootTextField;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title=@"RootVC";
}

- (IBAction)changeVC:(UIButton *)sender {
    //初始化目标控制器
    UIStoryboard *storyBoard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    DetailViewController *detailVC=[storyBoard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    //传值
    detailVC.text=self.rootTextField.text;
    //设置代理
    detailVC.delegate=self;
    //执行跳转
    [self.navigationController pushViewController:detailVC animated:YES];
    
}
- (void)detailViewController:(DetailViewController *)detailViewController returnRootVcWithNewString:(NSString *)string{
    self.rootTextField.text=string;
}

@end
