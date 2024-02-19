//
//  CodeDataSource.swift
//  MindMorph
//
//  Created by Aman Gupta on 13/02/24.
//

import Foundation
import SwiftUI

class CodeDataSource{
    static var actionGroups: [ActionGroup]{
        [
            food
        ]
    }
    
    
    static var food:ActionGroup{
        ActionGroup(
            groupName:"Food",
            iconName:"fork.knife",
            color: Color.orange,
            actions:[
                Action(
                    code:"Cook()",
                    description: "Prepare and eat dishes rich in nutrients",
                    color:Color.orange,
                    chemicalChange: ChemicalLevelsChange(dopamine: 0, serotonin: 10, acetylcholine: 0, gaba:0, glutamate: 0)
                ),
                Action(
                    code:"Eat Fruits()",
                    description: "Replenish vitamins and make more collagen",
                    color:Color.orange,
                    chemicalChange: ChemicalLevelsChange(dopamine: 0, serotonin: 10, acetylcholine: 0, gaba:0, glutamate: 0)
                ),
                Action(
                    code:"Drink Beer()",
                    description: "Gives you an instant dizzy feeling.",
                    color:Color.orange,
                    chemicalChange: ChemicalLevelsChange(dopamine: 30, serotonin: 10, acetylcholine: -10, gaba:-10, glutamate: 0)
                )
            
            ]
        )
    }
    
//    static var exercise: ActionGroup{
//        ActionGroup(
//            groupName:"Exercise",
//            iconName:"dumbbell",
//            color: Color.red,
//            actions:[
//                Action(
//                    code:"Pull Day()",
//                    description:"Engage in exercises to make up your back muscles",
//                    color:Color.red
//                ),
//                Action(
//                    code:"HIIT Workout Challenge()",
//                    description:"Engage in exercises to make up your back muscles",
//                    color:Color.red
//                ),
//            ]
//        )
//    }
//    
//    static var entertainment:ActionGroup{
//        ActionGroup(
//            groupName:"Entertainment",
//            iconName:"play.tv",
//            color: Color.yellow,
//            actions:[
//                Action(
//                    code:"Bingwatch a Korean Drama()",
//                    description: "Continuously sit in front of a screen, and follow through the story for 14 hours straight.",
//                    color: Color.yellow
//                ),
//                Action(
//                    code:"Play a strategy based game()",
//                    description: "Continuously sit in front of a screen, and follow through the story for 14 hours straight.",
//                    color: Color.yellow
//                )
//            
//            ]
//        )
//    }
//    
//    static var hygiene: ActionGroup{
//        ActionGroup(
//            groupName:"Hygiene",
//            iconName:"bubbles.and.sparkles",
//            color: Color.green,
//            actions:[
//                Action(
//                    code: "Get Adequate Sleep()",
//                    description:"Get enough sleep for 7-8 hours",
//                    color:Color.green
//                    
//                ),
//                Action(
//                    code:"Have a bath()",
//                    description:"The everyday activity to maintain a good-level of hygiene",
//                    color:Color.green
//                )
//            ]
//        )
//    }
//    
//    static var cognitiveAgility: ActionGroup{
//        ActionGroup(
//            groupName:"Critical Thinking",
//            iconName:"brain",
//            color:Color.gray,
//            actions:[
//                Action(
//                    code: "Play Crossword()",
//                    description:"Rearrange and fill out missing pieces",
//                    color: Color.gray
//                ),
//                Action(
//                    code: "Play Sudoku()",
//                    description:"Fill out missing numbers()",
//                    color:Color.gray
//                )
//            ]
//        )
//    }
    
}
