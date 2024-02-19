//
//  CodeViewModel.swift
//  MindMorph
//
//  Created by Aman Gupta on 18/02/24.
//

import Foundation

class CodeViewModel: ObservableObject{
    @Published var blocks:[Action] = []
    
    func append(action: Action){
        blocks.append(action)
    }
    
    func remove(index:Int){
        blocks.remove(at: index)
    }
}
