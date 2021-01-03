//
//  MainTableViewController.m
//  helloworld
//
//  Created by 李睿 on 2021/1/3.
//

#import "MainTableViewController.h"
#import "HelloWorldViewController.h"

@interface MainTableViewController ()

@end

@implementation MainTableViewController

NSArray* item;

- (instancetype)initWithStyle:(UITableViewStyle)style {
    self = [super initWithStyle:style];
    if (self) {
        //custom logic
        NSLog(@"MainTableViewController initWithStyle");
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    item = [NSArray arrayWithObjects:
                        @"第一课：xib\代码创建视图，点击事件处理",
                        @"ViewController 之间的跳转",
                        nil];
        
    self.title = @"iOS学习列表";
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return item.count;
}


//最重要的部分，该方法的返回值决定各个表格行的控件
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //必备。为表格行分配一个静态字符串作为标识符，使用重用机制。如果是自定义表格且表格高度动态变化的话最好取消重用机制
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
    
    // 自定义表格部分。如果只使用默认形式则只需要如下指定UITableViewCell格式，默认表格行的三个属性为textLabel、detailTextLabel、image
    // 分别对应UITableViewCell显示的标题、纤细的内容以及左边图标，如果使用自定义表格则指定相应的类进行初始化。
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
        
    }
    //根据表格行好indexPath.row对表格行内容进行设定
    NSUInteger rowNum = indexPath.row;
    cell.textLabel.text = [item objectAtIndex:rowNum];
    cell.textLabel.font = [UIFont boldSystemFontOfSize:17.0];
    //cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (0 == indexPath.row) {
        NSLog(@"didSelectRowIndex:%d",indexPath.row);
        HelloWorldViewController *viewController = [[HelloWorldViewController alloc]initWithNibName:@"HelloWorldViewController" bundle:nil];
        //这个视图控制器之间的跳转动画，可以设置，一共四种
        //如果你只知道某一个方法的一部分字符，可以“CMD+点击”到这个类里面去，然后CMD+F查找，基本可以解决问题
        //UIModalTransitionStyleCoverVertical-默认的，从下来，往下去
        //UIModalTransitionStyleCrossDissolve-渐变出现和消失
        //UIModalTransitionStyleFlipHorizontal-水平翻转，翻转时可看到底色
        //UIModalTransitionStylePartialCurl-翻书效果，早期版本翻书后会留个尾巴遮住部分视图，新版本中不会遮住，翻完不留东西在视图中
        viewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
        [self presentViewController:viewController animated:YES completion:^{
            NSLog(@"has jump to HelloWorldViewController");
        }];
    }
}

// 该返回值决定指定分区的页眉
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSString *title = @"iOS学习列表" ;
    return title;
}
//
//// 该返回值决定指定分区的页脚
//- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
//    NSString *footer = @"页脚" ;
//    return footer;
//}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear");
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSLog(@"viewDidAppear");
}
-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    NSLog(@"viewWillDisappear");
}
-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"viewDidDisappear");
}


@end
