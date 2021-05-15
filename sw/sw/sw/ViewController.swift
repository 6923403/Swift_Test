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
        //t6()
        
        // Do any additional setup after loading the view.
        
        //print(greetAgain(person: "Anna"))
        // 打印“Hello again, Anna!”
        //print(greet(person: "Tim", alreadyGreeted: false))
        // 打印“Hello again, Tim!”
        //let t = printAndCount(string: "hello, world")
        //print(t)
        // 打印“hello, world”，并且返回值 12
        //printWithoutCounting(string: "hello, world")
        // 打印“hello, world”，但是没有返回任何值
        //let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
        //print("min is \(bounds.min) and max is \(bounds.max)")
        // 打印“min is -6 and max is 109”
        //if let bounds2 = minMax2(array: [8, -6, 2, 109, 3, 71]) {
        //    print("min is \(bounds2.min) and max is \(bounds2.max)")
        //}
        
        //print(greeting(for: "Dave"))
        // 打印 "Hello, Dave!"
        
        //print(anotherGreeting(for: "Dave"))
        // 打印 "Hello, Dave!"
        //someFunction(firstParameterName: 1, secondParameterName: 2)
        //someFunction(1, secondParameterName: 2)
        
        //someFunction(parameterWithoutDefault: 3, parameterWithDefault: 6) // parameterWithDefault = 6
        //someFunction(parameterWithoutDefault: 4) // parameterWithDefault = 12
        
        //var re = arithmeticMean(1, 2, 3, 4, 5)
        //print("re: \(re)")
        // 返回 3.0, 是这 5 个数的平均数。
        //re = arithmeticMean(3, 8.25, 18.75)
        //print("re: \(re)")
        // 返回 10.0, 是这 3 个数的平均数。
        var mathFunction: (Int, Int) -> Int = addTwoInts
        print("Result: \(mathFunction(2, 3))")
        // Prints "Result: 5"
        
        var mathFunction2 = multiplyTwoInts
        print("Result: \(mathFunction2(2, 3))")
        // Prints "Result: 6"
        
        printMathResult(addTwoInts, 3, 5)
        // 打印“Result: 8”
    }
    
    func stepForward(_ input: Int) -> Int {
        return input + 1
    }
    func stepBackward(_ input: Int) -> Int {
        return input - 1
    }
    
    func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
        print("Result: \(mathFunction(a, b))")
    }
    
    func addTwoInts(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
        return a * b
    }
    
    func arithmeticMean(_ numbers: Double...) -> Double {
        var total: Double = 0
        for number in numbers {
            total += number
        }
        return total / Double(numbers.count)
    }
    
    //带默认参数值 可忽略传递
    func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
        // 如果你在调用时候不传第二个参数，parameterWithDefault 会值为 12 传入到函数体中。
        print("firstParameterName: \(parameterWithoutDefault), secondParameterName: \(parameterWithDefault) \n")
    }
    
    //忽略函数标签
    func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
         // 在函数体内，firstParameterName 和 secondParameterName 代表参数中的第一个和第二个参数值
        print("firstParameterName: \(firstParameterName), secondParameterName: \(secondParameterName) \n")
    }
    
    func someFunction(firstParameterName: Int, secondParameterName: Int) {
        // 在函数体内，firstParameterName 和 secondParameterName 代表参数中的第一个和第二个参数值
        print("firstParameterName: \(firstParameterName), secondParameterName: \(secondParameterName) \n")
    }
    
    func greeting(for person: String) -> String {
        "Hello, " + person + "!"
    }
    

    func anotherGreeting(for person: String) -> String {
        return "Hello, " + person + "!"
    }
    
    
    func minMax2(array: [Int]) -> (min: Int, max: Int)? {
        if array.isEmpty { return nil }
        var currentMin = array[0]
        var currentMax = array[0]
        for value in array[1..<array.count] {
            if value < currentMin {
                currentMin = value
            } else if value > currentMax {
                currentMax = value
            }
        }
        return (currentMin, currentMax)
    }
    
    func minMax(array: [Int]) -> (min: Int, max: Int) {
        var currentMin = array[0]
        var currentMax = array[0]
        for value in array[1..<array.count] {
            if value < currentMin {
                currentMin = value
            } else if value > currentMax {
                currentMax = value
            }
        }
        return (currentMin, currentMax)
    }
    
    func printAndCount(string: String) -> Int {
        print(string)
        return string.count
    }
    func printWithoutCounting(string: String) {
        let _ = printAndCount(string: string)
    }
    
    
    func greet(person: String, alreadyGreeted: Bool) -> String {
        if alreadyGreeted {
            return greetAgain(person: person)
        } else {
            return greet(person: person)
        }
    }
    
    func greet(person: String) -> String {
        return "greet-Hello again, " + person + "|"
    }

    func greetAgain(person: String) -> String {
        return "greet-again-Hello again, " + person + "!"
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
