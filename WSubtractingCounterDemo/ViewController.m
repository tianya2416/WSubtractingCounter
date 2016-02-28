//
//  ViewController.m
//  AppCount
//
//  Created by 王炜圣 on 16/2/25.
//  Copyright © 2016年 weisheng.wang. All rights reserved.
//

#import "ViewController.h"
#import "WSubtractingCounter.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textFieldA;
@property (weak, nonatomic) IBOutlet UITextField *textFieldB;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segement;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (assign, nonatomic) WSubtractingCounterType type;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
- (IBAction)segementControll:(UISegmentedControl *)sender {
    self.type = sender.selectedSegmentIndex;
     [self counter];
}
- (IBAction)buttonACtion:(UIButton *)sender {
    [self counter];
}
- (void)counter
{
    self.label.text = [WSubtractingCounter WSubtractingCounter:self.textFieldB.text withB:self.textFieldA.text withType:self.type];
    [self.textFieldA resignFirstResponder];
    [self.textFieldB resignFirstResponder];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
