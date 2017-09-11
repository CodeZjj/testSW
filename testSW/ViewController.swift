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
        let b : String = "hh"
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
        
        //guard
        let age = 18
        
        func online(age : Int) -> Void {
            guard age >= 18 else {
                print("小于18")
                return
            }
            print("大于18")
        }
        
        online(age: age)
        
        //switch
        let sex = 0
        switch sex {
        case 0:
            print("男")
        case 1:
            print("女")
        default:
            print("其他")
        }
        
        //一个case中可以判断多个值
        let sex1 = 0
        switch sex1 {
        case 0,1:
            print("正常人")
        default:
            print("其他")
        }
        
        //case穿透
        let sex2 = 0
        switch sex2 {
        case 0:
            fallthrough
        case 1:
            print("正常人")
        default:
            print("其他")
        }
        
        //区间 半开半闭区间:0..<10 表示:0~9,不包括10 闭区间:0…10 表示:0~10
        let qujian = 88
        switch qujian {
        case 0..<60:
            print("不及格")
        case 60..<80:
            print("及格")
        case 80..<90:
            print("良好")
        case 90..<100:
            print("优秀")
        default:
            print("满分")
        }
        
        //区间for循环
        for i in 0..<10 {
            print(i)
        }
        
        for j in 0...10 {
            print(j)
        }
        
        for _ in 0..<10 {
            print("hello")
        }
        
        //while
        var testWhile = 0
        while testWhile < 3 {
            testWhile += 1
        }
        
        //do while循环,使用repeat关键字来代替了do
        var doWhile = 0
        repeat {
            print(doWhile)
            doWhile += 1
        } while doWhile < 5
        
        //不可变字符串
        let str : String = "不可变字符串"
        
        //可变字符串
        var str1 : String = "可变字符串"
        str1 = "test"
        
        //获取字符串长度
        let strCount = str.characters.count
        
        //字符串拼接
        let str2 = "hello"
        let str3 = "world"
        let str4 = str2 + str3
        print(str4)
        
        //字符串和其他数据类型拼接
        let name = "why"
        let age1 = 18
        let info = "my name is \(name),age is \(age1)"
        print(info)
        
        //字符串格式化
        let min = 3
        let second = 4
        let time = String(format:"%02d:%02d",arguments:[min, second])
        let time1 = String(format:"%d---%d",min,second)
        print(time)
        print(time1)
        
        //字符串截取
        //1.String转成NSString来使用比较简单
        let urlStr = "www.baidu.com"
        let header = (urlStr as NSString).substring(to: 3)
        let footer = (urlStr as NSString).substring(from: 10)
        let middle = (urlStr as NSString).substring(with: NSRange(location:4,length:5))
        print("\(header)===\(footer)===\(middle)")
        
        //2.swift截取方式
        let index1 = urlStr.index(urlStr.startIndex, offsetBy: 3)
        let header1 = urlStr.substring(to: index1)
        let index2 = urlStr.index(urlStr.endIndex, offsetBy: -3)
        let footer1 = urlStr.substring(from: index2)
        let startIndex = urlStr.index(urlStr.startIndex, offsetBy: 4)
        let endIndex = urlStr.index(urlStr.startIndex, offsetBy: 9)
        let rang = Range(startIndex..<endIndex)
        let middle1 = urlStr.substring(with: rang)
        print("\(header1)===\(footer1)===\(middle1)")
        
        //不可变数组
        let array : [Any] = ["why",18,1.88]
        print(array)
        
        //可变数组
        var arrayM = [Any]()
        
        //添加
        arrayM.append("add")
        
        //删除
        //arrayM.removeFirst()
        
        //修改
        arrayM[0] = "why"
        
        //取值
        let str111 = arrayM[0]
        
        //遍历数组
        for i in 0..<array.count {
            print(array[i])
        }
        
        //for in
        for item in array {
            print(item)
        }
        
        //设置遍历的区间
        for item in array[0..<2] {
            print(item)
        }
        
        //遍历数组的同时获取下标值
        let names = ["why","yz","lnj","lmj"]
        for (index, name) in names.enumerated() {
            print(index)
            print(name)
        }
        
        //数组合并,只有相同类型的数组才能合并
        var array1 = ["why","lmj","lnj"]
        var array2 = ["yz","wsz"]
        var array3 = array1 + array2
        print(array3)
        
        //可变字典
        var dict1 : [String : Any] = [String : Any]()
        
        //不可变字典
        let dict2 : [String : Any] = ["name":"why","age":18]
        print(dict2)
        
        //添加
        dict1["height"] = 1.88
        dict1["weight"] = 70.0
        print(dict1)
        
        //删除
        dict1.removeValue(forKey: "height")
        print(dict1)
        
        //修改
        dict1["name"] = "lmj"
        print(dict1)
        dict1.updateValue("yz", forKey: "name")
        print(dict1)
        
        //查询
        var name11 = dict1["name"]
        
        //字典的遍历
        for valueDic in dict1.values {
            print(valueDic)
        }
        
        for keyDic in dict1.keys {
            print(keyDic)
        }
        
        for (key, value) in dict1 {
            print("\(key)===\(value)")
        }
        
        //字典的合并
        let dict3 = ["name":"yz","age":"20"]
        var dict4 = ["height":"1.87","phone":"+86 110"]
        for (key, value) in dict3 {
            dict4[key] = value
        }
        print(dict3)
        print(dict4)
        
        //元组
        //使用元组描述一个人的信息
        let yuanzu = ("1001","张三",30,90)
        print(yuanzu)
        
        //加上元素名称，可以通过名称访问元素
        let yuanzu1 = (id:"1001",name:"张三",english_score:30,chinese_score:90)
        print(yuanzu1)
        
        //用元组描述一个HTTP的错误信息
        //写法1
        let error1 = (404,"not found")
        print(error1.0)
        print(error1.1)
        
        //写法2
        let error2 = (errorCode:404,errorInfo:"not found")
        print(error2.errorCode)
        print(error2.errorInfo)
        
        //写法3
        let (errorCode,errorInfo) = (404,"not found")
        print(errorCode)
        print(errorInfo)
        
        //http://bbs.520it.com/forum.php?mod=viewthread&tid=2393
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

