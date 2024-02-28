//
//  File.swift
//  
//
//  Created by Aman Gupta on 25/02/24.
//

import Foundation
struct ExperimentResult:Identifiable{
    var id: UUID = UUID()
    var result: RunResult = .success
    var chemicalchangeFactor: ChemicalLevelsChange
    var abilityChangeFactor: AbilityLevelsChange
}

enum RunResult: String{
    case success
    case failed
}

