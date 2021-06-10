//
//  main.swift
//  sw_struct
//
//  Created by Vcvc on 2021/6/10.
//

import Foundation

print("Start")

//struct Resolution {
//    var width = 0
//    var height = 0
//}
//class VideoMode {
//    var resolution = Resolution()
//    var interlaced = false
//    var frameRate = 0.0
//    var name: String?
//}
//
//let someResolution = Resolution()
//let someVideoMode = VideoMode()
//
//someVideoMode.resolution.width = 1280
//print("The width of someVideoMode is now \(someVideoMode.resolution.width)")
//// 打印 "The width of someVideoMode is now 1280"
//
//let vga = Resolution(width: 640, height: 480)
//
//print(vga.width, " ", vga.height)

//struct FixedLengthRange {
//    var firstValue: Int
//    let length: Int
//}
//var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
//// 该区间表示整数 0，1，2
//rangeOfThreeItems.firstValue = 6
//// 该区间现在表示整数 6，7，8
//let l_rangeOfFourItems = FixedLengthRange(firstValue: 9, length: 4)
//// 该区间表示整数 0，1，2，3
//
//
//print(rangeOfThreeItems.firstValue, "  ", l_rangeOfFourItems.firstValue)

//class DataImporter {
//    /*
//    DataImporter 是一个负责将外部文件中的数据导入的类。
//    这个类的初始化会消耗不少时间。
//    */
//    var fileName = "data.txt"
//    // 这里会提供数据导入功能
//}
//
//class DataManager {
//    lazy var importer = DataImporter()
//    var data = [String]()
//    // 这里会提供数据管理功能
//}
//
//let manager = DataManager()
//manager.data.append("Some data")
//manager.data.append("Some more data")
//// DataImporter 实例的 importer 属性还没有被创建
//print(manager.importer.fileName)
//// DataImporter 实例的 importer 属性现在被创建了
//// 输出“data.txt”

//
//struct Point {
//    var x = 0.0, y = 0.0
//}
//struct Size {
//    var width = 0.0, height = 0.0
//}
////struct Rect {
////    var origin = Point()
////    var size = Size()
////    var center: Point {
////        get {
////            let centerX = origin.x + (size.width / 2)
////            let centerY = origin.y + (size.height / 2)
////            return Point(x: centerX, y: centerY)
////        }
////        set(newCenter) {
////            origin.x = newCenter.x - (size.width / 2)
////            origin.y = newCenter.y - (size.height / 2)
////        }
////    }
////}
//struct CompactRect {
//    var origin = Point()
//    var size = Size()
//    var center: Point {
//        get {
//            Point(x: origin.x + (size.width / 2),
//                  y: origin.y + (size.height / 2))
//        }
//        set {
//            origin.x = newValue.x - (size.width / 2)
//            origin.y = newValue.y - (size.height / 2)
//        }
//    }
//}
//var square = Rect(origin: Point(x: 0.0, y: 0.0),
//    size: Size(width: 10.0, height: 10.0))
//let initialSquareCenter = square.center
//square.center = Point(x: 15.0, y: 15.0)
//print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
//// 打印“square.origin is now at (10.0, 10.0)”

//struct Cuboid {
//    var width = 0.0, height = 0.0, depth = 0.0
//    var volume: Double {
//        return width * height * depth
//    }
//}
//let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
//print("the volume of fourByFiveByTwo is \(fourByFiveByTwo.volume)")
//// 打印“the volume of fourByFiveByTwo is 40.0”

//class StepCounter {
//    var totalSteps: Int = 0 {
//        willSet(newTotalSteps) {
//            print("将 totalSteps 的值设置为 \(newTotalSteps)")
//        }
//        didSet {
//            if totalSteps > oldValue  {
//                print("增加了 \(totalSteps - oldValue) 步")
//            }
//        }
//    }
//}
//let stepCounter = StepCounter()
//stepCounter.totalSteps = 200
//// 将 totalSteps 的值设置为 200
//// 增加了 200 步
//stepCounter.totalSteps = 360
//// 将 totalSteps 的值设置为 360
//// 增加了 160 步
//stepCounter.totalSteps = 896
//// 将 totalSteps 的值设置为 896
//// 增加了 536 步

//@propertyWrapper //TwelveOrLess是个属性包装器
//struct TwelveOrLess {
//    private var number: Int
//    init() { self.number = 0 }
//    var wrappedValue: Int {
//        get { return number }
//        set { number = min(newValue, 12) }
//    }
//}
//
//struct SmallRectangle {
//    @TwelveOrLess var height: Int //告诉编译器 要去包装TwelveOrLess属性
//    @TwelveOrLess var width: Int
//}
//
//var rectangle = SmallRectangle()
//print(rectangle.height)
//// 打印 "0"
//
//rectangle.height = 10
//print(rectangle.height)
//// 打印 "10"
//
//rectangle.height = 24
//print(rectangle.height) //line: 153
//// 打印 "12"

//struct SomeStructure {
//    static var storedTypeProperty = "Some value."
//    static var computedTypeProperty: Int {
//        return 1
//    }
//}
//enum SomeEnumeration {
//    static var storedTypeProperty = "Some value."
//    static var computedTypeProperty: Int {
//        return 6
//    }
//}
//class SomeClass {
//    static var storedTypeProperty = "Some value."
//    static var computedTypeProperty: Int {
//        return 27
//    }
//    class var overrideableComputedTypeProperty: Int {
//        return 107
//    }
//}
//
//print(SomeStructure.storedTypeProperty)
//// 打印“Some value.”
//SomeStructure.storedTypeProperty = "Another value."
//print(SomeStructure.storedTypeProperty)
//// 打印“Another value.”
//print(SomeEnumeration.computedTypeProperty)
//// 打印“6”
//print(SomeClass.computedTypeProperty)
//// 打印“27”

//struct AudioChannel {
//    static let thresholdLevel = 10
//    static var maxInputLevelForAllChannels = 0
//    var currentLevel: Int = 0 {
//        didSet {
//            if currentLevel > AudioChannel.thresholdLevel {
//                // 将当前音量限制在阈值之内
//                currentLevel = AudioChannel.thresholdLevel
//            }
//            if currentLevel > AudioChannel.maxInputLevelForAllChannels {
//                // 存储当前音量作为新的最大输入音量
//                AudioChannel.maxInputLevelForAllChannels = currentLevel
//            }
//        }
//    }
//}
//
//var leftChannel = AudioChannel()
//var rightChannel = AudioChannel()
//
//leftChannel.currentLevel = 7
//print(leftChannel.currentLevel)
//// 输出“7”
//print(AudioChannel.maxInputLevelForAllChannels)
//// 输出“7”
//rightChannel.currentLevel = 11
//print(rightChannel.currentLevel)
//// 输出“10”
//print(AudioChannel.maxInputLevelForAllChannels)
//// 输出“10”

//class Counter {
//    var count = 0
//    func increment() {
//        count += 1
//    }
//    func increment(by amount: Int) {
//        count += amount
//    }
//    func reset() {
//        count = 0
//    }
//}
//
//let counter = Counter()
//// 初始计数值是0
//counter.increment()
//// 计数值现在是1
//counter.increment(by: 5)
//// 计数值现在是6
//counter.reset()
//// 计数值现在是0

//struct Point {
//    var x = 0.0, y = 0.0
//    func isToTheRightOf(x: Double) -> Bool {
//        return self.x > x
//    }
//}
//let somePoint = Point(x: 4.0, y: 5.0)
//if somePoint.isToTheRightOf(x: 1.0) {
//    print("This point is to the right of the line where x == 1.0")
//}
//// 打印“This point is to the right of the line where x == 1.0”

//struct Point {
//    var x = 0.0, y = 0.0
//    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
//        x += deltaX
//        y += deltaY
//    }
//}
//var somePoint = Point(x: 1.0, y: 1.0)
//somePoint.moveBy(x: 2.0, y: 3.0)
//print("The point is now at (\(somePoint.x), \(somePoint.y))")
//// 打印“The point is now at (3.0, 4.0)”
//
////let fixedPoint = Point(x: 3.0, y: 3.0)
////fixedPoint.moveBy(x: 2.0, y: 3.0)
////// 这里将会报告一个错误
//
//enum TriStateSwitch {
//    case off, low, high
//    mutating func next() {
//        switch self {
//        case .off:
//            self = .low
//        case .low:
//            self = .high
//        case .high:
//            self = .off
//        }
//    }
//}
//var ovenLight = TriStateSwitch.low
//ovenLight.next()
//// ovenLight 现在等于 .high
//ovenLight.next()
//// ovenLight 现在等于 .off

struct LevelTracker {
    static var highestUnlockedLevel = 1
    var currentLevel = 1

    static func unlock(_ level: Int) {
        if level > highestUnlockedLevel { highestUnlockedLevel = level }
    }

    static func isUnlocked(_ level: Int) -> Bool {
        return level <= highestUnlockedLevel
    }

    @discardableResult
    mutating func advance(to level: Int) -> Bool {
        if LevelTracker.isUnlocked(level) {
            currentLevel = level
            return true
        } else {
            return false
        }
    }
}

class Player {
    var tracker = LevelTracker()
    let playerName: String
    func complete(level: Int) {
        LevelTracker.unlock(level + 1)
        tracker.advance(to: level + 1)
    }
    init(name: String) {
        playerName = name
    }
}

var player = Player(name: "Argyrios")
player.complete(level: 1)
print("highest unlocked level is now \(LevelTracker.highestUnlockedLevel)")
// 打印“highest unlocked level is now 2”

player = Player(name: "Beto")
if player.tracker.advance(to: 6) {
    print("player is now on level 6")
} else {
    print("level 6 has not yet been unlocked")
}
// 打印“level 6 has not yet been unlocked”
