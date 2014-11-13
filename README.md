iOS 自定义字体的使用
===

步骤:
 * 1.将xx.ttf字体库加入工程里面
 
 * 2.在工程的xx-Info.plist文件中新添加一行Fonts provided by application，加上字体库的名称
 ![](https://github.com/laznrbfe/iOS/blob/master/%E6%B7%BB%E5%8A%A0ttf:otf%E5%88%B0Info.plist.jpg "添加ttf 到plist")
 
 * 3.引用字体库的名称，设置字体： <br/>
 ```objc [UIFontfontWithName:@"fontname" size:24]; ```
 
 * 4.遍历字体,查询字体名称
```objc
  UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, 300, 50)];  
  label.text = @"这是一个TEST。123456";  
  UIFont *font = [UIFont fontWithName:@"文鼎CS中等線" size:24];  
  label.font = font;  
  [self.view addSubview:label];
```
