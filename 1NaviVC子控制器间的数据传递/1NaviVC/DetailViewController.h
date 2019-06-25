//
//  DetailViewController.h
//  1NaviVC
//
//  Created by 谢鑫 on 2019/6/25.
//  Copyright © 2019 Shae. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class DetailViewController;
@protocol DetailViewControllerDelegate <NSObject>

-(void)detailViewController:(DetailViewController *)detailViewController returnRootVcWithNewString:(NSString *)string;
@end

@interface DetailViewController : UIViewController
@property (nonatomic,weak) id <DetailViewControllerDelegate>delegate;
@property (nonatomic,copy) NSString *text;
@end

NS_ASSUME_NONNULL_END
