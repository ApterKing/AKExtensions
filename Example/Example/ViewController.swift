//
//  ViewController.swift
//  Example
//
//  Created by wangcong on 11/05/2017.
//  Copyright © 2017 ApterKing. All rights reserved.
//

import UIKit
import AKExtensions

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let image = UIImage(named: "test")
        
        let imageView0 = UIImageView(frame: CGRect(x: 20, y: 30, width: 90, height: 90))
        imageView0.image = image
        self.view.addSubview(imageView0)
        
        let imageView1 = UIImageView(frame: CGRect(x: 130, y: 30, width: 90, height: 90))
        imageView1.image = image?.round(cornerRadi: 90)
        self.view.addSubview(imageView1)
        
        let imageView2 = UIImageView(frame: CGRect(x: 240, y: 30, width: 90, height: 90))
        let corner2 = UIRectCorner.topLeft.rawValue | UIRectCorner.bottomRight.rawValue
        imageView2.image = image?.round(byRoundingCorners: UIRectCorner(rawValue: corner2), cornerRadi: 45)
        self.view.addSubview(imageView2)
        
        let imageView3 = UIImageView(frame: CGRect(x: 20, y: 140, width: 90, height: 90))
        let corner3 = UIRectCorner.topRight.rawValue | UIRectCorner.bottomLeft.rawValue | UIRectCorner.bottomRight.rawValue
        imageView3.image = image?.round(byRoundingCorners: UIRectCorner(rawValue: corner3), cornerRadii: CGSize(width: 40, height: 20))
        self.view.addSubview(imageView3)
        
        let imageView4 = UIImageView(frame: CGRect(x: 130, y: 140, width: 90, height: 90))
        let corner4 = UIRectCorner.topRight.rawValue | UIRectCorner.bottomLeft.rawValue
        imageView4.image = image?.round(byRoundingCorners: UIRectCorner(rawValue: corner4), cornerRadii: CGSize(width: 40, height: 20))
        self.view.addSubview(imageView4)
        
        let qrImageView = UIImageView(frame: CGRect(x: 50, y: 250, width: 160, height: 160))
        qrImageView.image = UIImage.generateQRImage(QRCodeString: "https://github.com/ApterKing/AKSwifty", logo: UIImage(named: "logo"), size: CGSize(width: 1024, height: 1024))
        self.view.addSubview(qrImageView)
        
        
        let view0 = UIView(frame: CGRect(x: 20, y: 450, width: 90, height: 90))
        view0.backgroundColor = UIColor.red
        view0.round(cornerRadi: 90)
        self.view.addSubview(view0)
        
        let view1 = UIView(frame: CGRect(x: 130, y: 450, width: 90, height: 90))
        view1.backgroundColor = UIColor.orange
        let cornerv1 = UIRectCorner.topLeft.rawValue | UIRectCorner.bottomRight.rawValue
        view1.round(byRoundingCorners: UIRectCorner(rawValue: cornerv1), cornerRadi: 45)
        self.view.addSubview(view1)
        
        let view2 = UIView(frame: CGRect(x: 240, y: 450, width: 90, height: 90))
        view2.backgroundColor = UIColor.orange
        let cornerv2 = UIRectCorner.topRight.rawValue | UIRectCorner.bottomLeft.rawValue | UIRectCorner.bottomRight.rawValue
        view2.round(byRoundingCorners: UIRectCorner(rawValue: cornerv2), cornerRadii: CGSize(width: 45, height: 45))
        self.view.addSubview(view2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

