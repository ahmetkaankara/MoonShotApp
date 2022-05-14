//
//  Mission.swift
//  MoonShot
//
//  Created by Ahmet Kaan Kara on 14.05.2022.
//

import Foundation



struct Mission: Identifiable,Codable{
    
    let id: Int
    let launchDate: Date?
    let crew:[CrewRole]
    let description:String
    
    
    struct CrewRole:Codable{
        let name: String
        let role: String
        
    }
    
    var displayName:String{
        "Apollo \(id)"
    }
    var image:String{
        "apollo\(id)"
    }
    
    var formattedLaunchDate:String{
        launchDate?.formatted(date:.abbreviated,time:.omitted) ?? "N/A"
    }
}
