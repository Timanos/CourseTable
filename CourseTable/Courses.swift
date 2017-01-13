//
//  Courses.swift
//  CourseTable
//
//  Created by nju on 2017/1/11.
//  Copyright © 2017年 nju. All rights reserved.
//

import UIKit
import Foundation

class Courses: NSObject {
    
    var coursename:String
    var courselocation:String
    var day:String
    var starttime:String
    var finishtime:String
    
    //构造方法
    required init(coursename:String="", day:String="", starttime:String="", finishtime:String="", courselocation:String="") {
        self.coursename = coursename
        self.courselocation = courselocation
        self.day = day
        self.starttime = starttime
        self.finishtime = finishtime
    }
    
    //从object解析回来
    required init(coder decoder: NSCoder) {
        self.coursename = decoder.decodeObject(forKey: "CourseName") as? String ?? ""
        self.day = decoder.decodeObject(forKey: "Day") as? String ?? ""
        self.starttime = decoder.decodeObject(forKey: "StartTime") as? String ?? ""
        self.finishtime = decoder.decodeObject(forKey: "FinishTime") as? String ?? ""
        self.courselocation = decoder.decodeObject(forKey: "CourseLocation") as? String ?? ""
    }
    
    //编码成object
    func encode(with coder: NSCoder) {
        coder.encode(coursename, forKey:"CourseName")
        coder.encode(day, forKey:"Day")
        coder.encode(starttime, forKey:"StartTime")
        coder.encode(finishtime, forKey:"FinishTime")
        coder.encode(courselocation, forKey:"CourseLocation")
    }

}
