//
//  ViewController.m
//  OCExploration
//
//  Created by Constant Cody on 12/21/19.
//  Copyright © 2019 Constant Cody. All rights reserved.
//

#import "ViewController.h"
#import "Job.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%p ===>>> %@ ===>>> %@", self, NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self testAlloc];
}

- (void)testAlloc {
    Job *job1 = [Job alloc];
    Job *job2 = [job1 init];
    Job *job3 = [job1 init];
    CCNSLog(@"%@ -- %p", job1, &job1);
    CCNSLog(@"%@ -- %p", job2, &job2);
    CCNSLog(@"%@ -- %p", job3, &job3);
}


@end
