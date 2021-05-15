//
//  ViewController.swift
//  sw
//
//  Created by Vcvc on 2021/5/9.
//

import Cocoa

class ViewController: NSViewController {
    var welcomeMessage: String?
    let maximumNumberOfLoginAttempts = 10
    var currentLoginAttempt = 0
    var x = 0.0, y = 0.0, z = 0.0
    let π = 3.14159
    let 你好 = "你好世界"
    let 🐶🐮 = "☯️☯️"
    let three = 3
    let pointOneFourOneFiveNine = 0.14159

    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessage = "Hello"
        //t1()
        //t2()
        //t3()
        //t4()
        //t5()
        t6()
        
        // Do any additional setup after loading the view.
    }
    
    func t6() {
        let age = -3
        assert(age >= 0, "A person's age cannot be less than zero")
        // 因为 age < 0，所以断言会触发
    }

    func t5()
    {
        let possibleString: String? = "An optional string."
        let forcedString: String = possibleString! // 需要感叹号来获取值

        let assumedString: String! = "An implicitly unwrapped optional string."
        let implicitString: String = assumedString  // 不需要感叹号
        let optionalString = assumedString
        // optionalString 的类型是 "String?"，assumedString 也没有被强制解析。

        if assumedString != nil {
            print(assumedString!)
        }
        // 输出“An implicitly unwrapped optional string.”
    }
    
    func t4() {
        let possibleNumber = "123"
        if let actualNumber = Int(possibleNumber) {
            print("\'\(possibleNumber)\' has an integer value of \(actualNumber)")
        } else {
            print("\'\(possibleNumber)\' could not be converted to an integer")
        }
        // 输出“'123' has an integer value of 123”
        // 输出“'123' has an integer value of 123”
    }
    
    func t1() {
        let http404Error = (404, "Not Found")
        // http404Error 的类型是 (Int, String)，值是 (404, "Not Found")
        
        let (statusCode, statusMessage) = http404Error
        print("The status code is \(statusCode)")
        // 输出“The status code is 404”
        print("The status message is \(statusMessage)")
        // 输出“The status message is Not Found”
        
        print("The status code is \(http404Error.0)")
        // 输出“The status code is 404”
        print("The status message is \(http404Error.1)")
        // 输出“The status message is Not Found”
    }
    
    func t2() {
        let http200Status = (statusCode: 200, description: "OK")
        print("The status code is \(http200Status.statusCode)")
        // 输出“The status code is 200”
        print("The status message is \(http200Status.description)")
        // 输出“The status message is OK”
    }
    
    var surveyAnswer: String?
    // surveyAnswer 被自动设置为 nil
    func t3() {
        var serverResponseCode: Int? = 404
        // serverResponseCode 包含一个可选的 Int 值 404
        serverResponseCode = nil
        // serverResponseCode 现在不包含值
        
        if pointOneFourOneFiveNine != nil {
            print("convertedNumber contains some integer value.")
        }
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

