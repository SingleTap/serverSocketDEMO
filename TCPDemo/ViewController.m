//
//  ViewController.m
//  TCPDemo
//
//  Created by colorful-ios on 16/1/4.
//  Copyright © 2016年 7Color. All rights reserved.
//

#import "ViewController.h"
#import "AsyncSocket.h"

@interface ViewController ()<AsyncSocketDelegate>

@property (nonatomic,strong)AsyncSocket*serverSocket;

@property(nonatomic,strong)NSMutableArray*socketArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.socketArray=[NSMutableArray arrayWithCapacity:0];
    [self createSocket];
}

-(void)createSocket{

    _serverSocket=[[AsyncSocket alloc]initWithDelegate:self];

    [_serverSocket acceptOnPort:5019 error:nil];
}

-(void)onSocket:(AsyncSocket *)sock didAcceptNewSocket:(AsyncSocket *)newSocket
{

    [self.socketArray addObject:newSocket];

    [newSocket readDataWithTimeout:-1 tag:100];
    NSLog(@"接受1111");
}
-(void)onSocket:(AsyncSocket *)sock didReadData:(NSData *)data withTag:(long)tag
{
    NSLog(@"接受222");
    //接收到数据
//    NSString*message=[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
    
    [sock readDataWithTimeout:-1 tag:100];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
