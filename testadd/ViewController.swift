//
//  ViewController.swift
//  testadd
//
//  Created by 20131105755 on 16/3/17.
//  Copyright © 2016年 20131105755. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var 计算器:计算 = 计算()
    var 显示缓存:String = ""
    var 缓存 = 0.0
    var 缓存2:Double?
    
    @IBOutlet weak var 屏幕: UITextField!
    @IBAction func 数字1(sender: AnyObject) {
        点按("1")

    }
    @IBAction func 数字2(sender: AnyObject) {
    }
    @IBAction func 数字3(sender: AnyObject) {
    }
    @IBAction func 数字4(sender: AnyObject) {
    }
    @IBAction func 数字5(sender: AnyObject) {
    }
    @IBAction func 数字6(sender: AnyObject) {
    }
    @IBAction func 数字7(sender: AnyObject) {
    }
    @IBAction func 数字8(sender: AnyObject) {
    }
    @IBAction func 数字9(sender: AnyObject) {
    }
    @IBAction func 数字0(sender: AnyObject) {
    }
    @IBAction func 算法加(sender: AnyObject) {
    }
    @IBAction func 算法减(sender: AnyObject) {
    }
   
    @IBAction func 算法乘(sender: AnyObject) {
    }
    @IBAction func 算法除(sender: AnyObject) {
    }
    @IBAction func 运算结果(sender: AnyObject) {
    }
  
    @IBAction func 数字点(sender: AnyObject) {
    }
    func 点按(数字:String) {
        显示缓存 += 数字
        self.屏幕.text = 显示缓存
    }
    func 求值() {
        
        if !显示缓存.isEmpty {
            let 临时 = 显示缓存 as NSString
            缓存 = 临时.doubleValue
            显示缓存 = ""
        }
        let 临时 = 缓存
        var 结果 = ""
        
        if let 前一个数字 = 缓存2 {
            结果 = 计算器.求结果(前一个数字, 被操作数: 临时)
            
            self.屏幕.text = 结果
            let 临 = 结果 as NSString
            缓存2 = 临.doubleValue
        } else {
            缓存2 = 缓存
            缓存 = 0.0
        }
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        屏幕.editing
        // Do any additional setup after loading the view, typically from a nib.
    }
    
   // override func didReceiveMemoryWarning() {
   //     super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    //}
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

