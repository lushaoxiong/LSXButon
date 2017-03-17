自己随便的写的一个按钮布局图片以及文字，同时可以加载网络图片，方便简单。

[简书地址](http://www.jianshu.com/p/b9b0272ac1a2)
<br>

效果图

![demo图片.png](http://upload-images.jianshu.io/upload_images/2596697-4a6e5def2bea69cc.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

使用方法
此demo只做了加载网络图片，本地图片请自行测试！
```
1.导入
#import "LSXButton.h"

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
```
欢迎一起学习～～
