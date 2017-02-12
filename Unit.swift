//
//  Unit.swift
//  Todolendar
//
//  Created by JangChorong on 2017. 2. 12..
//  Copyright © 2017년 NaCho. All rights reserved.
//



import Foundation

let everyDay = 1
let everyWeek = 2
let everyMonth = 3
let everyYear = 4


class RepeatPeriod{
    var period : Int
    var dueDate : NSDate
    
    var day : [Bool]?
    var week : Int
    
    init(_period : Int, _dueDate : NSDate, _day : [Bool], _week: Int){
        self.period = _period
        self.dueDate = _dueDate
        
        if(period == everyDay){
            self.day = [true, true, true, true, true, true, true]
            self.week = 1
        }
       
        else{
            self.day = _day
            self.week = _week
        }
    }
}

class Details{
    var location : String
    var memo : String
    var isRepeat : Bool
    var repeatPeriod : RepeatPeriod?
    

    init(_location:String, _memo: String, _isRepeat : Bool){
        
        self.location = _location;
        self.memo = _memo;
        self.isRepeat = _isRepeat;
    }
    
    init(_allDay:Bool, _location:String, _memo: String, _isRepeat : Bool,
         _period: Int, _dueDate : NSDate, _day : [Bool]?, _week: Int){
        
        self.location = _location;
        self.memo = _memo;
        self.isRepeat = _isRepeat;
        
        if(self.isRepeat){
            self.repeatPeriod = RepeatPeriod(_period: _period, _dueDate: _dueDate, _day: _day!, _week: _week)
        }
    }
}

protocol HaveToThing{
    var subject: String {get set}
    var time: NSDate? {get set}
    var allDay : Bool? {get set}
    var alarm : NSDate? {get set}
}


class Schedule : HaveToThing {
    internal var subject: String = ""
    internal var time: NSDate?
    internal var allDay: Bool?
    internal var alarm: NSDate?

    var details : Details?
    
    init(_subject : String, _time: NSDate, _allDay :Bool, _alarm : NSDate, _details : Details?){
        self.subject = _subject
        self.time = _time
        self.allDay = _allDay
        self.alarm = _alarm
        
        if(_details == nil){
            details = nil
        }
        else{
            self.details = _details
        }
    }
}

class ToDo : HaveToThing{
    internal var subject : String = ""
    internal var time: NSDate?
    internal var allDay: Bool?
    internal var alarm: NSDate?
    var done : Bool = false
    var details : Details?
    
    init(_subject : String){
        self.subject = _subject
    }
    
    init(_subject : String, _time: NSDate, _allDay :Bool, _alarm : NSDate, _details : Details?){
        self.subject = _subject
        self.time = _time
        self.allDay = _allDay
        self.alarm = _alarm
        
        if(_details == nil){
            details = nil
        }
        else{
            self.details = _details
        }
    }
}

