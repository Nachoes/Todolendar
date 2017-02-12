//
//  DefinedException.swift
//  Todolendar
//
//  Created by JangChorong on 2017. 2. 12..
//  Copyright © 2017년 NaCho. All rights reserved.
//

import Foundation

class DefinedException{
    
    static let sharedExc = DefinedException();
    
    func limitOfByteException(size : Int) -> String{
        return "글자 수를 초과했습니다\n[최대 바이트 : " + String(size) + " ]"
    }
}
