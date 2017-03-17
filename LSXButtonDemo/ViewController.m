//
//  ViewController.m
//  LSXButtonDemo
//
//  Created by 医联通 on 17/3/17.
//  Copyright © 2017年 LSX. All rights reserved.
//

#import "ViewController.h"
#import "LSXButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor yellowColor];
    [self CreatButtons];
}
-(void)CreatButtons{

    LSXButton * btn=[LSXButton new];
    //按原图大小加载
    btn.isDefImg=YES;
    btn.tag=0;
    [btn addTarget:self action:@selector(tap:) forControlEvents:UIControlEventTouchUpInside];
    btn.fontSize=15;
    btn.textColor=[UIColor greenColor];
    btn.backgroundColor=[UIColor redColor];
    [self.view addSubview:btn];
    btn .sd_layout.leftSpaceToView(self.view,10).topSpaceToView(self.view,100).widthIs(60).heightIs(75);
    [btn CreatSXbtnImg:@"http://tool.58pic.com/tubiaobao//Public/app/00/00/00/552cc165df8f4_32.png" WithTitle:@"上图下字"];

    LSXButton * btn1=[LSXButton new];
    btn1.backgroundColor=[UIColor greenColor];
    //按原图大小加载
   // btn1.isDefImg=YES;
    btn1.tag=1;
    [btn1 addTarget:self action:@selector(tap:) forControlEvents:UIControlEventTouchUpInside];
    btn1.fontSize=18;
    //按钮类型
    btn1.type=LSXButtonTypeImgdwon;
    [self.view addSubview:btn1];
    btn1 .sd_layout.rightSpaceToView(self.view,10).topEqualToView(btn).widthIs(80).heightIs(100);
    [btn1 CreatSXbtnImg:@"http://tool.58pic.com/tubiaobao//Public/app/00/00/00/552cc165df8f4_32.png" WithTitle:@"上字下图"];
    
    
    LSXButton * btn2=[LSXButton new];
    //调整字与图片的间距
    btn2.Margin=20;
    btn2.backgroundColor=[UIColor greenColor];
    //按原图大小加载
     btn2.isDefImg=YES;
    btn2.tag=1;
    [btn2 addTarget:self action:@selector(tap:) forControlEvents:UIControlEventTouchUpInside];
    btn2.fontSize=18;
    //按钮类型
    btn2.type=LSXButtonTypeImgleft;
    [self.view addSubview:btn2];
    btn2 .sd_layout.leftSpaceToView(self.view,10).topSpaceToView(btn,100).widthIs(130).heightIs(80);
    [btn2 CreatSXbtnImg:@"http://tool.58pic.com/tubiaobao//Public/app/00/00/00/552cc165df8f4_32.png" WithTitle:@"左图又字"];
    
    
    
    LSXButton * btn3=[LSXButton new];
    //调整字与图片的间距
    btn3.Margin=20;
    btn3.backgroundColor=[UIColor blueColor];
    //按原图大小加载
   // btn3.isDefImg=YES;
    btn3.tag=1;
    [btn3 addTarget:self action:@selector(tap:) forControlEvents:UIControlEventTouchUpInside];
    btn3.fontSize=18;
    //按钮类型
    btn3.type=LSXButtonTypeImgrignt;
    [self.view addSubview:btn3];
    btn3 .sd_layout.rightSpaceToView(self.view,10).topSpaceToView(btn,100).widthIs(130).heightIs(50);
    [btn3 CreatSXbtnImg:@"http://tool.58pic.com/tubiaobao//Public/app/00/00/00/552cc165df8f4_32.png" WithTitle:@"左字右图"];
    
}
-(void)tap:(UIButton*)sender{
  

}


@end
