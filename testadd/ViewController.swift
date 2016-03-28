//
//  ViewController.swift
//  testadd
//
//  Created by 20131105755 on 16/3/17.
//  Copyright © 2016年 20131105755. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var x: UITextField!
    @IBOutlet weak var z: UITextField!
    @IBOutlet weak var y: UITextField!
    @IBAction func add(sender: UIButton) {
        var a:Double!=0
        var b:Double!=0
        var c:Double!=0
        if(!x.text!.isEmpty){
        a=(x.text! as NSString).doubleValue
        }
        if(!y.text!.isEmpty){
            b=(Double)(y.text!)
        }
        c=a+b
        z.text="\(c)"

        
    }
    @IBOutlet weak var 文本框: UITextField!
    @IBAction func 数字1(sender: AnyObject) {
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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

