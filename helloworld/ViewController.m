//
//  ViewController.m
//  helloworld
//
//  Created by 李睿 on 2021/1/1.
//

#import "ViewController.h"
#import "TestView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    TestView *view = [[[NSBundle mainBundle]loadNibNamed:@"TestView" owner:nil options:nil]lastObject];
    view.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    [self.view addSubview:view];
}


@end
