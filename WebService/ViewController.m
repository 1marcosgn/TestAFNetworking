//
//  ViewController.m
//  WebService
//
//  Created by Marcos Garcia on 10/11/15.
//  Copyright © 2015 Marcos Garcia. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self consumeServicio];
    
}


-(void)consumeServicio
{
    NSString *urlString = @"https://ajax.googleapis.com/ajax/services/search/news?v=1.0&rsz=8&q=New%20Delhi";
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    [manager GET:urlString
      parameters:nil
         success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject)
                {
                    NSLog(@"The object is: %@", responseObject);
                }
         failure:^(AFHTTPRequestOperation * _Nonnull operation, NSError * _Nonnull error)
                {
                    NSLog(@"Something is wrong: %@", error);
                }
     ];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
