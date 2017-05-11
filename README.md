# AKExtensions
Swift 常用Extension

## Usage:   
 
- 通过pod 方式引入

``` pod 'AKSwifty/Extension' ```
	
- 部分说明

	- **UIDevice+Extension**   
		判定设备类型，设备是否为尺寸
	- **UIColor+Extension**   
		将16进制转换为UIColor  
		
		``` swifty
		// 通过Int 转换为Color
		let color0 = UIColor(numberColor: 0xFF00FF)
		let color1 = UIColor(numberColor: 0xFF00FF, alpha: 0.4)
			
		// 通过hex # 转换为Color
		let color2 = UIColor(hexColor: "#FF00FF", alpha: 0.8)
			
		// 通过hex 0x或者0X 转换为Color
		let color3 = UIColor(hexColor: "0xFF00FF", alpha: 0.8)
		let color4 = UIColor(hexColor: "0XFF00FF", alpha: 0.8)
		```
	- **UIImage+Extension**  
		通过颜色生成UIImage  
		
		``` Swifty
		let image = UIImage(color: UIColor.green, size: CGSize(width: 1.0, height:1.0))
		```  
		
		设置图片圆角  
		
		``` swifty   
		let image = ...
		image = image.round(byRoundingCorners:UIRectCorner.allCorners, cornerRadi:15)
		// 或者
		image = image.round(byRoundingCorners:UIRectCorner.allCorners, cornerRadii:CGSize(width:15, height: 10))
		
		...
		```
		
		![](http://ww1.sinaimg.cn/large/92ce04b2gy1ffh8ip2m5wj20ke0cqq5y.jpg)
		
		生成二维码
		
		``` swift
		let image = UIImage.generateQRImage(QRCodeString: "https://github.com/ApterKing/AKSwifty", logo: UIImage(named: "logo"), size: CGSize(width: 1024, height: 1024))
		let imageView = ...
		```
		
		![](http://ww1.sinaimg.cn/large/92ce04b2gy1ffh9rcrxkwj20em0bqwfz.jpg)
		
	- String+Extension  
		Base64转换
		
		``` swifty
		let string = ...
		// Encode
		let encodedString = string.base64EncodedString()
		
		// Decode
		let decodedString = encodedString.base64DecodedString()
		
		// 计算String size
		let size = string.size(with: UIFont.systemFont(ofSize: 20), toSize: CGSize(width: 100, height: 100))
		```
	- UIView+Extension  
		获取所在UIViewController  
		
		``` swift
		let view = ...
		let viewController = view.firstViewController
		```
		
		Frame获取及设置  
		
		``` swift
		let view = ...
		view.x = 10
		view.y = 10
		view.height = 300
		view.width = 300
		view.top = 30
		view.left = 30
		view.bottom = 50
		view.right = 50
		```
		
		将UIView设置圆角
		
		``` swift
		let view = ...
		
		let cornerv1 = UIRectCorner.topLeft.rawValue | UIRectCorner.bottomRight.rawValue
        view.round(byRoundingCorners: UIRectCorner(rawValue: cornerv1), cornerRadi: 45)
        
       let cornerv2 = UIRectCorner.topRight.rawValue | UIRectCorner.bottomLeft.rawValue | UIRectCorner.bottomRight.rawValue
        view.round(byRoundingCorners: UIRectCorner(rawValue: cornerv2), cornerRadii: CGSize(width: 45, height: 45))
		```
		
		![](http://ww1.sinaimg.cn/large/92ce04b2gy1ffh9sbqhfcj20ke08g74h.jpg)
		
		。。。还有更多你可以查看源码试着使用
		
## Author

ApterKing, wangccong@foxmail.com

## License

AKSwifty is available under the MIT license. See the LICENSE file for more info.