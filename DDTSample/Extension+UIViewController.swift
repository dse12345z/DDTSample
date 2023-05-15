//
//  UIViewController.swift
//  DDTSample
//
//  Created by Daisuke on 2023/5/6.
//

import UIKit

extension UIViewController {
    
    func perform(selector: String, from obj: NSObject) {
        // 想執行
        let sel = sel_registerName("\(String(describing: type(of: obj)))_\(selector)")
        
        // 取得實例 Method
        var method = class_getInstanceMethod(object_getClass(self), sel)
        
        if method == nil {

            // 確定別的 class 有這個方法
            let targetSel = sel_registerName(selector)
            if let fromMethod = class_getInstanceMethod(object_getClass(obj), targetSel) {
                
                // 取得指針 IMP
                let fromIMP = method_getImplementation(fromMethod);
                
                //
                let typeEncoding = method_getTypeEncoding(fromMethod) // "v@:"
                
                // class 添加 Method
                class_addMethod(type(of: self), sel, fromIMP, typeEncoding)
                
                // 查表取得 Method
                method = class_getInstanceMethod(object_getClass(self), sel)
            }
        }
        
        if let method {
            // 取得指針 IMP
            let logIMP = method_getImplementation(method)

            // IMP 轉為 Function
            let logFunction = unsafeBitCast(logIMP, to: (@convention(c) (Self, Selector) -> Void).self)

            // 執行
            logFunction(self as! Self, sel)
            
        }
    }
    
    func printInstanceMethods(_ cls: AnyClass) {
        var count: UInt32 = 0
        let methods = class_copyMethodList(cls, &count)
        
        for i in 0..<Int(count) {
            let method = methods![i]
            let selector = method_getName(method)
            let name = sel_getName(selector)
            print("\(cls) Method #\(i): \(String(cString: name))")
        }
        
        free(methods)
    }
    
}
