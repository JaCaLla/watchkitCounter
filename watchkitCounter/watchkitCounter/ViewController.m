//
//  ViewController.m
//  watchkitCounter
//
//  Created by JAVIER CALATRAVA LLAVERIA on 05/01/15.
//  Copyright (c) 2015 JAVIER CALATRAVA LLAVERIA. All rights reserved.
//

#import "ViewController.h"
#import "Model.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIStepper *stpCounter;
@property (weak, nonatomic) IBOutlet UILabel *lblCounter;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)stpValueChanged:(id)sender {
    [self.lblCounter setText:[[NSString alloc] initWithFormat:@"%f",[(UIStepper*)sender value]]];
    [Model setCounter:[[[NSNumber alloc]initWithDouble:[(UIStepper*)sender value]] intValue]];
}

@end
