//
//  testadd.swift
//  testadd
//
//  Created by 20131105755 on 16/3/31.
//  Copyright © 2016年 20131105755. All rights reserved.
//
/*
calculation：计算
Currentalgorithm:当前算法
algorithm：算法
Nochoice：未选择
Setcurrentalgorithm：设置当前算法
temporary：临时
Readthecurrentalgorithm：读取当前算法
addition：加法
subtraction：减法
multiplication：乘法
division：除法
pingfang：平方
zhishumi：指数幂
Operationnumber：操作数
Operandoperand：被操作数
Resultseeking:求结果
revert：返回
*/


import Foundation

struct calculation {
    private var Currentalgorithm:algorithm = .Nochoice
    
    mutating func Setcurrentalgorithm(temporary:algorithm) {
        Currentalgorithm = temporary
    }
    
    func Readthecurrentalgorithm() -> algorithm {
        return Currentalgorithm
    }
    
    enum algorithm {
        case addition
        case subtraction
        case multiplication
        case division
        case pingfang
        case zhishumi
        case Nochoice

    }
    
    func Resultseeking(Operationnumber Operationnumber:Double, Operandoperand:Double) ->String {
        var revert = ""
        switch Currentalgorithm {
        case .addition:
            revert = "\(Operationnumber + Operandoperand)"
        case .subtraction:
            revert = "\(Operationnumber - Operandoperand)"
        case .multiplication:
            revert = "\(Operationnumber * Operandoperand)"
        case .division where Operandoperand != 0 :
            revert = "\(Operationnumber / Operandoperand)"
        case .pingfang:
            revert = "\(Operationnumber * Operationnumber)"
        case .zhishumi:
            var temporary = Operationnumber
            let zhengxingOperandoperand = Int(Operandoperand)
            for _ in 1..<zhengxingOperandoperand {
                temporary *= Operationnumber
            }
            revert = "\(temporary)"
        case .Nochoice:
            revert = "错误：未选择算法"
        default:
            revert = "0 不能做被除数！"
            
        }
        return revert
        
    }
}