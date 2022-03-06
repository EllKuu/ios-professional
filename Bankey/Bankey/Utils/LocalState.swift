//
//  LocalState.swift
//  Bankey
//
//  Created by elliott kung on 2022-03-05.
//

import Foundation

public class LocalState {
    private enum Keys: String{
        case hasOnboarded
    }
    
    public static var hasOnboarded: Bool {
        get{
            return UserDefaults.standard.bool(forKey: Keys.hasOnboarded.rawValue)
        }
        set(newValue){
            UserDefaults.standard.set(newValue, forKey: Keys.hasOnboarded.rawValue)
            UserDefaults.standard.synchronize()
        }
    }
}
