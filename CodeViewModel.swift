//
//  CodeViewModel.swift
//  MindMorph
//
//  Created by Aman Gupta on 25/02/24.
//

import Foundation
class CodeViewModel: ObservableObject{
    

    @Published var blocks:[Action] = []
    @Published var executeState:Bool = true
    func append(action: Action){
        blocks.append(action)
    }
    
    func remove(index:Int){
        blocks.remove(at: index)
    }
    
}

