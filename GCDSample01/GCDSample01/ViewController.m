//
//  ViewController.m
//  GCDSample01
//
//  Created by 高橋俊貴 on 2015/03/09.
//  Copyright (c) 2015年 Meiji University. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    dispatch_queue_t mainQueue = dispatch_get_main_queue();
    
    dispatch_queue_t globalQueueDefault = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    dispatch_async(globalQueueDefault, ^{
        for(int i = 0; i < 10000; i++){
            for(int j = 0; j < 100000; j++){
                
            }
        }
        dispatch_async(mainQueue, ^{
            self.messageLabel.text = @"Finish!";
        });
    });
    self.messageLabel.text = @"Wait...";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
