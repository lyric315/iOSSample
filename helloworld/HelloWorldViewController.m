//
//  HelloWorldViewController.m
//  helloworld
//
//  Created by 李睿 on 2021/1/3.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()
//xib中的UILabel
@property (weak, nonatomic) IBOutlet UILabel *mXibCountLabel;
//代码中的UILabel
@property (strong, nonatomic) UILabel *mCountLabel;
//统计按钮被点击了多少次
@property int mCount;
@end

@implementation HelloWorldViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"%@", @"HelloWorldViewController:viewDidLoad:");
    
//    [self.navigationController pushViewController:viewController animated:YES];
    
    //打印屏幕size
    UIScreen *screen = [UIScreen mainScreen];
    UIScreenMode  *perferedMode = screen.preferredMode;
    NSLog(@"Width:%f Height:%f AspectRatio:%f",perferedMode.size.width,perferedMode.size.height,perferedMode.pixelAspectRatio);
    
    //调整屏幕亮度
    CGFloat value = [UIScreen mainScreen].brightness;
    NSLog(@"origin brightness value: %f", value);
    [UIScreen mainScreen].brightness = 0.1;
    
    //打印frame和bounds信息
    [self printViewBounds:self.view];
    
    [self addRectColorView];
    [self addLabelViewOnRectView];
    [self addButtonViewOnRectView];
}


/**
 * 打印frame和bounds信息
 */
- (void)printViewBounds: (UIView*) currentView {
    NSLog(@"frame:%@", NSStringFromCGRect(currentView.frame));
    NSLog(@"bounds:%@", NSStringFromCGRect(currentView.bounds));
    NSLog(@"center:%@", NSStringFromCGPoint(currentView.center));
}


/**
 * 添加一个灰色矩形区域
 */
- (void)addRectColorView {
    double screenWidth = [UIScreen mainScreen].bounds.size.width;
    double pointX = screenWidth / 2.0 - 100;
    NSLog(@"screenWidth: %f", screenWidth);
    NSLog(@"pointX: %f", pointX);
    UIView *greenView = [[UIView alloc]initWithFrame:CGRectMake(pointX, 100, 200, 100)];
    greenView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:greenView];
}

/**
 * 在矩形区域上添加一个Label
 */
- (void)addLabelViewOnRectView {
    CGRect screenBounds = [UIScreen mainScreen].bounds;
    CGFloat labelWidth = 200;
    CGFloat labelHeight = 20;
    CGFloat pointY = 100 + 100 / 2 - 25;
    CGFloat pointX = screenBounds.size.width / 2 - labelWidth / 2;
    self.mCountLabel = [[UILabel alloc]initWithFrame:CGRectMake(pointX, pointY, labelWidth, labelHeight)];
    
    self.mCountLabel.text = @"HellowWorld";
    self.mCountLabel.textColor = [UIColor systemRedColor];
    self.mCountLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.mCountLabel];
}

/**
 * 在矩形区域上添加一个Button
 */
- (void)addButtonViewOnRectView {
    CGRect screenBounds = [UIScreen mainScreen].bounds;
    CGFloat labelWidth = 120;
    CGFloat labelHeight = 20;
    CGFloat pointY = 100 + 100 / 2 + 25;
    CGFloat pointX = screenBounds.size.width / 2 - labelWidth / 2;
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"Please Click Me" forState:UIControlStateNormal];
    button.frame = CGRectMake(pointX, pointY, labelWidth, labelHeight);
    [button addTarget:self action:@selector(onClickButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

// xib 绑定点击事件
- (IBAction)onClick:(id)sender {
    NSLog(@"onClick Button");
    self.mCount++;
    self.mXibCountLabel.text = [NSString stringWithFormat:@"Click Counted Number:%d", self.mCount];
    self.mCountLabel.text = [NSString stringWithFormat:@"Click Counted Number:%d", self.mCount];
}

// 代码中绑定点击事件
- (void)onClickButton:(id)sender {
    NSLog(@"onClickButton Button");
}


@end
