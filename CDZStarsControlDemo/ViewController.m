//
//  ViewController.m
//  CDZStarsControlDemo
//
//  Created by Nemocdz on 2017/5/20.
//  Copyright © 2017年 Nemocdz. All rights reserved.
//

#import "ViewController.h"
#import "CDZStarsControl.h"

@interface ViewController ()<CDZStarsControlDelegate>
@property (weak, nonatomic) IBOutlet UILabel *label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CDZStarsControl *starsControl = [CDZStarsControl.alloc initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 50) stars:5 starSize:CGSizeMake(50, 50) noramlStarImage:[UIImage imageNamed:@"star_normal"] highlightedStarImage:[UIImage imageNamed:@"star_highlighted"]];
    starsControl.delegate = self;
    starsControl.allowFraction = YES;
    starsControl.score = 2.6f;
    [self.view addSubview:starsControl];
    self.label.text = [NSString stringWithFormat:@"%.1f",starsControl.score];
}

- (void)starsControl:(CDZStarsControl *)starsControl didChangeScore:(CGFloat)score{
    self.label.text = [NSString stringWithFormat:@"%.1f",score];
}


@end
