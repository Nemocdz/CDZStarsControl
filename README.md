# CDZStarsControl
This is a small and configurable stars control with Animation.

## Demo Preview

![](https://ws1.sinaimg.cn/large/006tNbRwly1fft7cfduacg30da0n0tfa.gif)

## Changelog

##### 1.0.4

- Fix 0 star can't show bug

## Installation

### Manual

Add "CDZStarsControl" files to your project

### CocoaPods

Add ``pod 'CDZStarsControl'`` in your Podfile

## Usage

``#import "CDZStarscontrol.h"``

First,Init  the view, set the delegate ,and config if you want.

```objective-c
- (CDZStarsControl *)starsControl{
    if (!_starsControl) {
        _starsControl = [CDZStarsControl.alloc initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 50) stars:5 starSize:CGSizeMake(50, 50) noramlStarImage:[UIImage imageNamed:@"star_normal"] highlightedStarImage:[UIImage imageNamed:@"star_highlighted"]];
        _starsControl.delegate = self;
        _starsControl.allowFraction = YES;
        _starsControl.score = 2.6f;
    }
    return _starsControl;
}
```

And Than,add the view.

```objective-c
[self.view addSubview:self.starsControl];
```

At last,deal the result in delegate.

```objective-c
- (void)starsControl:(CDZStarsControl *)starsControl didChangeScore:(CGFloat)score{
    self.label.text = [NSString stringWithFormat:@"%.1f",score];//do someting you want
}
```

## Articles

[iOS中实现一个支持小数的星星评分组件](http://www.jianshu.com/p/c5d0ed7f035c)

## Requirements

iOS 8.0 Above

## TODO

## Contact

- Open a issue
- QQ：757765420
- Email：nemocdz@gmail.com
- Weibo：[@Nemocdz](http://weibo.com/nemocdz)

## License

CDZStarsControl is available under the MIT license. See the LICENSE file for more info.