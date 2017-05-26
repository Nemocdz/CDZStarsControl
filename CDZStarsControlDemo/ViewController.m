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
@property (nonatomic, strong) CDZStarsControl *starsControl;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.starsControl];
    self.label.text = [NSString stringWithFormat:@"%.1f",self.starsControl.score];
}

- (void)starsControl:(CDZStarsControl *)starsControl didChangeScore:(CGFloat)score{
    self.label.text = [NSString stringWithFormat:@"%.1f",score];
}


- (CDZStarsControl *)starsControl{
    if (!_starsControl) {
        _starsControl = [CDZStarsControl.alloc initWithFrame:CGRectMake(10, 100, self.view.frame.size.width - 20 , 50) stars:5 starSize:CGSizeMake(50, 50) noramlStarImage:[UIImage imageNamed:@"star_normal"] highlightedStarImage:[UIImage imageNamed:@"star_highlighted"]];
        _starsControl.delegate = self;
        _starsControl.allowFraction = YES;
        _starsControl.score = 2.6f;
    }
    return _starsControl;
}

@end
