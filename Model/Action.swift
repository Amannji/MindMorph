//
//  File.swift
//  
//
//  Created by Aman Gupta on 25/02/24.
//

import Foundation
import SwiftUI


struct Action: Identifiable{
    var id: UUID = UUID()
    var code: String
    var description: String
    var color: Color
    var chemicalChange: ChemicalLevelsChange
    var abilityChange: AbilityLevelsChange
}


struct ActionGroup: Identifiable{
    var groupName: String
    var iconName: String
    var color: Color
    var actions: [Action]
    var id: String {
        groupName
    }
}
struct ChemicalLevelsChange{
    var dopamine:Int
    var serotonin: Int
    var acetylcholine: Int
    var gaba: Int
    var glutamate: Int
}

struct AbilityLevelsChange{
    var memory: Int
    var attention: Int
    var perception: Int
    var emotionalRegulation: Int
    var executiveFunction: Int
    
}

