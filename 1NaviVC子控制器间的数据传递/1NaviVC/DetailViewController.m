//
//  DetailViewController.m
//  1NaviVC
//
//  Created by 谢鑫 on 2019/6/25.
//  Copyright © 2019 Shae. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UITextField *DetailFIeld;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 更新textField
    self.DetailFIeld.text=self.text;
}
- (IBAction)returnRootVc:(UIButton *)sender {
    //通知代理工作
    if([self.delegate respondsToSelector:@selector(detailViewController:returnRootVcWithNewString:)]){
        [self.delegate detailViewController:self returnRootVcWithNewString:self.DetailFIeld.text];
    }
    [self.navigationController popViewControllerAnimated:YES];
}


@end
