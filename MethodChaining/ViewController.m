//
//  ViewController.m
//  MethodChaining
//
//  Created by Ben on 9/05/2017.
//  Copyright © 2017 Ben. All rights reserved.
//

#import "ViewController.h"
#import "CalculateChain.h"
#import "NSNumber+CalculateChain2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    // Method 1:
    // Thanks Kangzubin's tutorial and idea, method 1 is common method that many developer can come up with
    // https://kangzubin.com/objective-c-chainable-syntax/index.html
    
    CalculateChain *calc = [[CalculateChain alloc] init];
    calc.add(10).minus(5).multiply(100).divide(2);
    NSLog(@"results: %f", calc.result);
    


    
    // Method 2:
    NSNumber *num = @0.0;
    NSLog(@"results: %@", num.add(10).minus(5).multiply(100).divide(2));

    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
