//
//  ViewController.swift
//  testSW
//
//  Created by YaoYuSmart on 2017/9/7.
//  Copyright © 2017年 YaoYuSmart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 变量
        var a : Int = 20
        a = 10
        print(a)
        
        // 常量
        let b : NSString = "hh"
        print("常量",b)
        print(b)
        
        //变量的做法
        var view : UIView = UIView()
        view = UIView()
        view.frame = CGRect(x:0 , y:0, width:100, height:100)
        view.backgroundColor = UIColor.red
        self.view.addSubview(view)
        
        //常量的做法
        let view1 : UIView = UIView()
        view1.frame = CGRect(x:100 , y:0, width:100, height:100)
        view1.backgroundColor = UIColor.blue
        self.view.addSubview(view1)
        
        let viewRect = CGRect(x:0, y:100, width:100, height:100)
        let view2 : UIView = UIView(frame:viewRect)
        view2.backgroundColor = UIColor.orange
        let btn : UIButton = UIButton(type:.custom)
        btn.frame = CGRect(x:0, y:0, width:50, height:50)
        btn.backgroundColor = UIColor.purple
        btn.setTitle("按钮", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        view2.addSubview(btn)
        self.view.addSubview(view2)
        
        //基本运算
        let m = 20
        let n = 30.5
        let result1 = m + Int(n)
        let result2 = Double(m) + n
        print(result1,result2)
        
        
        //判断句可以不加() 在Swift的判断句中必须有明确的真假 不再有非0即真 必须有明确的Bool值 Bool有两个取值:false/true
        let test = 10
        if test > 9 {
            print(test)
        }
        
        let score = 87
        if score < 60 {
            print("不及格")
        } else if score <= 70 {
            print("及格")
        } else if score <= 80 {
            print("良好")
        } else if score <= 90 {
            print("优秀")
        } else {
            print("完美")
        }
        
        //http://bbs.520it.com/forum.php?mod=viewthread&tid=2354
        //准备看guard的使用
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

